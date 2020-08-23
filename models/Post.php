<?php
class Post
{
    private $conn;
    private $table_name = 'posts';

    public $id;
    public $person_id;
    public $firstName;
    public $lastName;
    public $gender;
    public $faction;
    public $playedBy;
    public $seasons;
    public $currentStatus;
    public $img;

    public function __construct($db)
    {
        $this->conn = $db;
    }

    public function read()
    {
        $query = "SELECT 
        p.id,
        p.person_id,
        p.firstName,
        p.lastName,
        p.gender,
        p.faction,
        p.playedBy,
        p.seasons,
        p.currentStatus,
         FROM
        " . $this->table_name .  " p
        LEFT JOIN
        birth b ON p.person_id = b.id
        ORDER BY
        p.person_id ASC";

        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        return $stmt;
    }

    public function read_single()
    {
        $query = "SELECT 
        p.id,
        p.person_id,
        p.firstName,
        p.lastName,
        p.gender,
        p.faction,
        p.playedBy,
        p.seasons,
        p.currentStatus,
         FROM
        " . $this->table_name . " p
        LEFT JOIN
        birth b ON p.person_id = b.id
        WHERE
        p.id = ?
        LIMIT 0,1";

        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(1, $this->id);
        $stmt->execute();

        $row = $stmt->fetch(PDO::FETCH_ASSOC);


        $this->person_id = $row['person_id'];
        $this->firstName = $row['firstName'];
        $this->lastName = $row['lastName'];
        $this->gender = $row['gender'];
        $this->faction = $row['faction'];
        $this->playedBy = $row['playedBy'];
        $this->seasons = $row['seasons'];
        $this->currentStatus = $row['currentStatus'];
        // $this->img = $row['img'];
    }


    public function create()
    {
        $query = 'INSERT INTO ' . $this->table_name . "
        SET 
        person_id = :person_id,
        firstName = :firstName,
        lastName = :lastName,
        gender = :gender,
        faction = :faction,
        playedBy = :playedBy,
        seasons = :seasons,
        currentStatus = :currentStatus";

        $stmt = $this->conn->prepare($query);

        $this->person_id = htmlspecialchars(strip_tags($this->person_id));
        $this->firstName = htmlspecialchars(strip_tags($this->firstName));
        $this->lastName = htmlspecialchars(strip_tags($this->lastName));
        $this->gender = htmlspecialchars(strip_tags($this->gender));
        $this->faction = htmlspecialchars(strip_tags($this->faction));
        $this->playedBy = htmlspecialchars(strip_tags($this->playedBy));
        $this->seasons = htmlspecialchars(strip_tags($this->seasons));
        $this->currentStatus = htmlspecialchars(strip_tags($this->currentStatus));
        //$this->img = htmlspecialchars(strip_tags($this->img));


        $stmt->bindParam(':person_id', $this->person_id);
        $stmt->bindParam(':firstName', $this->firstName);
        $stmt->bindParam(':lastName', $this->lastName);
        $stmt->bindParam(':gender', $this->gender);
        $stmt->bindParam(':faction', $this->faction);
        $stmt->bindParam(':playedBy', $this->playedBy);
        $stmt->bindParam(':seasons', $this->seasons);
        $stmt->bindParam(':currentStatus', $this->currentStatus);
        //$stmt->bindParam(':img', $this->img);

        if ($stmt->execute()) {
            return true;
        }

        printf("Error: %s. \n", $stmt->error);

        return false;
    }

    public function update()
    {
        $query = 'UPDATE ' . $this->table_name . '
        SET 
        person_id = :person_id,
        firstName = :firstName,
        lastName = :lastName,
        gender = :gender,
        faction = :faction,
        playedBy = :playedBy,
        seasons = :seasons,
        currentStatus = :currentStatus
        
        WHERE 
        id = :id';

        $stmt = $this->conn->prepare($query);

        $this->id = htmlspecialchars(strip_tags($this->id));
        $this->person_id = htmlspecialchars(strip_tags($this->person_id));
        $this->firstName = htmlspecialchars(strip_tags($this->firstName));
        $this->lastName = htmlspecialchars(strip_tags($this->lastName));
        $this->gender = htmlspecialchars(strip_tags($this->gender));
        $this->faction = htmlspecialchars(strip_tags($this->faction));
        $this->playedBy = htmlspecialchars(strip_tags($this->playedBy));
        $this->seasons = htmlspecialchars(strip_tags($this->seasons));
        $this->currentStatus = htmlspecialchars(strip_tags($this->currentStatus));
        //$this->img = htmlspecialchars(strip_tags($this->img));


        $stmt->bindParam(':id', $this->id);
        $stmt->bindParam(':person_id', $this->person_id);
        $stmt->bindParam(':firstName', $this->firstName);
        $stmt->bindParam(':lastName', $this->lastName);
        $stmt->bindParam(':gender', $this->gender);
        $stmt->bindParam(':faction', $this->faction);
        $stmt->bindParam(':playedBy', $this->playedBy);
        $stmt->bindParam(':seasons', $this->seasons);
        $stmt->bindParam(':currentStatus', $this->currentStatus);
        //$stmt->bindParam(':img', $this->img);

        if ($stmt->execute()) {
            return true;
        }

        printf("Error: %s. \n", $stmt->error);

        return false;
    }

    public function delete()
    {
        $query = 'DELETE FROM ' . $this->table_name . ' WHERE id = :id';

        $stmt = $this->conn->prepare($query);

        $this->id = htmlspecialchars(strip_tags($this->id));

        $stmt->bindParam(':id', $this->id);

        if ($stmt->execute()) {
            return true;
        }

        printf("Error: %s. \n", $stmt->error);

        return false;
    }
}

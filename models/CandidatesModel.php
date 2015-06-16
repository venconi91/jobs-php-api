<?php

class CandidatesModel extends BaseModel {

    public function reviewAll() {
        $statement = self::$db->query("SELECT * FROM candidates");
        $result = $statement->fetch_all(MYSQLI_ASSOC);
        return $result;
    }
    
    public function reviewById($id){
        $statement = self::$db->prepare("SELECT * FROM candidates where id=?");
        $statement->bind_param("i", $id);
        $statement->execute();
        $result = $statement->get_result()->fetch_assoc();
        
        return $result;
    }
    
    public function search($stringForSearch){
        //var_dump($stringForSearch);
        $statement = self::$db->prepare("SELECT * FROM candidates where name = ?");
        $statement->bind_param("s", $stringForSearch);
        
        $statement->execute();
        $result = $statement->get_result()->fetch_assoc();
        
        return $result;
    }
}


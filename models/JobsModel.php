<?php

class JobsModel extends BaseModel {

    public function reviewAll() {
        $statement = self::$db->query("SELECT * FROM jobs");
        $result = $statement->fetch_all(MYSQLI_ASSOC);
        return $result;
    }
    
    public function reviewById($id){
        $statement = self::$db->prepare("SELECT * FROM jobs where id=?");
        $statement->bind_param("i", $id);
        $statement->execute();
        $result = $statement->get_result()->fetch_assoc();
        
        return $result;
    }
}


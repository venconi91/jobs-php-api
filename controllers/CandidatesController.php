<?php

class CandidatesController extends BaseController {

    private $db;

    public function onInit() {
        
        $this->db = new CandidatesModel();
    }

    public function review($id = NULL) {
        
        $result = "";
        if ($id != NULL && is_numeric($id)) { 
            // get certain candidate
            $intId = (int)$id;
            $result = $this->db->reviewById($intId);
        }
        else {
            $result = $this->db->reviewAll();
        }
        if ($result == NULL) {
            self::setStatusCode(404);
            return;
        }
        self::setJsonHeader();
        
        return json_encode($result);
    }
        
    public function search($stringForSearch = ""){
        $result = $this->db->search($stringForSearch);
        
        if ($result == NULL) {
            self::setStatusCode(404);
            return;
        }
        
        self::setJsonHeader();
        
        return json_encode($result);
    }
}

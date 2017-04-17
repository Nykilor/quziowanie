<?php
class Question extends Session {
    
    public function __construct() {
        $this->connectDB("config.php");
    }
    //returns array with the id's from database
    private function getId($category = 0) {
        if($category == 0) {
            $id = $this->conn->prepare("SELECT ID FROM pytania");
        } else {
            $id = $this->conn->prepare("SELECT ID FROM pytania WHERE ID_CAT=:id");
            $id->bindValue(":id", $category, PDO::PARAM_INT);
        }
        $id->execute();
        return $id;
    }
    //$count_history = int, $count_category = int, $ids_array = array(), $history_array = array()
    protected function stopRepetition($count_history, $count_category, $ids_array, $history_array) {
        if($count_category <= $count_history) {
            $this->clearHistory($this->getCategory());
        }
        return array_diff($ids_array, $history_array);
    }
    //saves question in json format at json index
    public function getQuestion() {
        
        $category = $this->getCategory();
        
        if($category == 0) {
            $ids = $this->getId();
        } else {
            $ids = $this->getId($this->getCategory());
        }
        $ids_array = array();
        while($row = $ids->fetch(PDO::FETCH_ASSOC)) {
            array_push($ids_array, intval($row['ID']));
        }
        if(empty($ids_array)) {
            http_response_code(204);
            exit();
        }
        $history_array = $_SESSION['history'.$_SESSION['category']];
        
        $count_history = count($_SESSION['history'.$_SESSION['category']]);
        $count_category = count($ids_array);
        
        $questions_array = $this->stopRepetition($count_history, $count_category, $ids_array, $history_array);
        
        $questions_array_index = array_rand($questions_array); 
        
        $ids_single = $questions_array[$questions_array_index]; 
        
        
        $stmt = $this->conn->prepare("SELECT * FROM pytania WHERE ID=:id");
        $stmt -> bindValue(":id",$ids_single, PDO::PARAM_INT);
        $stmt->execute();   

        $this->json = $stmt->fetch(PDO::FETCH_ASSOC);
        
    }
    public function __destruct() {
        $this->disconnectDB();
    }
    
}
?>
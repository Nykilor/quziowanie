<?php 
class Category extends Session {
    public function __construct() {
        $this->connectDB("config.php");
    }
    public function getCategoryIndex() {
        $stmt = $this->conn->prepare("SELECT * FROM kategorie");
        $stmt->execute();
        
        $array_id = 1;
        while($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $values[$array_id] = $row;
            $array_id++;
        }
        
        $this->json = $values;
    }
    public function changeCategory($id_cat) {
        $id_cat = intval($id_cat);
        if(is_numeric($id_cat)) {
            $_SESSION['category'] = $id_cat;
        } else {
            http_response_code(400);
        }
        
    }
    public function __destruct() {
        $this->disconnectDB();
    }
}
?>
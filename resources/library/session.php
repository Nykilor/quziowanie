<?php 
class Session {
    protected $history;
    protected $config;
    protected $conn;
    public $json;
    
    //sets session and cookie variable
    function __construct() {
        if(!isset($_SESSION)) {
            session_start();
            if(!isset($_SESSION['category'])) {
                $_SESSION['category'] = 0;
            }
            if(!isset($_COOKIE['score']) AND !isset($_COOKIE['scoreright'])) {
		      setcookie("score", 0, strtotime( '+1 year' ), '/');
		      setcookie("scoreright", 0,  strtotime( '+1 year' ), '/');
	         }
	         if(!isset($_SESSION['scoreright']) AND !isset($_SESSION['score'])) {
		        $_SESSION['score'] = 0;
		        $_SESSION['scoreright'] = 0;
	         }
	         if(!isset($_SESSION['category'])) {
		        $_SESSION['category'] = 0;
	         }
	         if(!isset($_SESSION['history'.$_SESSION['category']])) {
		        $_SESSION['history'.$_SESSION['category']] = array();
	         }
        }
    }
    //returns category value
    public function getCategory() {
        return $_SESSION['category'];
    }
    //returns the id's of the answered questions
    public function getHistory() {
        return $_SESSION['history'.$this->getCategory()];
    }
    //unsets the history and creats a clear array
    public function clearHistory($category) {
        unset($_SESSION['history'.$category]);
        $_SESSION['history'.$category] = array();
    }
    //adds the value to the array if it isn't there
    protected function setHistory($answer_id, $history_category) {
        $int_answer_id = intval($answer_id);
        if(!in_array($int_answer_id, $history_category)) {
            array_push($history_category, $int_answer_id);
        }
        $this->history = $history_category;
    }
    //database connection
    protected function connectDB($config) {
        $this->config = include($config);
        
        $this->conn = new PDO("mysql:host={$this->config['host']};dbname={$this->config['dbname']};charset=utf8", "{$this->config['username']}", "{$this->config['password']}");
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
    //database dissconection
    protected function disconnectDB() {
        $this->conn = null;
    }
    //resets the values of session and cookie
    public function resetScore() {
        if(isset($_COOKIE['score']) AND isset($_COOKIE['scoreright'])) {
				setcookie("score", 0, strtotime( '+1 year' ), "/");
				setcookie("scoreright", 0,  strtotime( '+1 year' ), "/");
			}
        if(isset($_SESSION['scoreright']) AND isset($_SESSION['score'])) {
				unset($_SESSION['score'], $_SESSION['scoreright']);
			}
        if(isset($_SESSION['history'.$_SESSION['category']])) {
				unset($_SESSION['history'.$_SESSION['category']]);
			}
    }
    //returns json
    public function json($data) {
       return json_encode($data);
    }
    
}
?>
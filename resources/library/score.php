<?php 
class Score extends Session {
    private $score;
    private $score_right;
    private $c_score;
    private $c_score_right;
    
    public function __construct() {
        $this->score = $_SESSION['score'];
        $this->score_right = $_SESSION['scoreright'];
        $this->c_score = $_COOKIE['score'];
        $this->c_score_right = $_COOKIE['scoreright'];
        $this->history = $this->getHistory();
    }
    private function updateCookie($var) {
        ++$this->c_score;
        setcookie("score", $this->c_score, strtotime( '+1 year' ), '/');
        if($var === true) {
            ++$this->c_score_right;
            setcookie("scoreright", $this->c_score_right, strtotime( '+1 year' ), '/');  
        }
    }
    private function goodAnswer() {
        ++$this->score;
        ++$this->score_right;
    }
    private function badAnswer() {
        ++$this->score;
    }
    private function updateSession($session_score, $session_score_right = 0, $history = 0) {
        $_SESSION['score'] = $session_score;
        if($session_score_right > 0) {
            $_SESSION['scoreright'] = $session_score_right; 
        }
        if(is_array($history)) { 
            $_SESSION['history'.$this->getCategory()] = $this->history; 
        }
    }
    public function getScore() {
        return array("score" => $this->score,
                     "score_right" => $this->score_right,
                     "c_score" => $this->c_score,
                     "c_score_right" => $this->c_score_right
                    );
    }
    public function addScore($answer_is = "false", $answer_id) {
        if($answer_id > 0) {
            $history_category = $this->history;
            if($answer_is === "false") {
                $this->badAnswer();
                $this->updateCookie(false);
                $this->updateSession($this->score);
            } else if($answer_is = "true") {
                $this->goodAnswer();
                $this->updateCookie(true);
                $this->setHistory($answer_id, $history_category);
                $this->updateSession($this->score, $this->score_right, $history_category);
            } else {
                http_response_code(406);
                exit();
            }
        }
    }
    
}
?>
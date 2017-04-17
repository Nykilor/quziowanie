<?php 
if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && $_SERVER['HTTP_X_REQUESTED_WITH'] == 'XMLHttpRequest' && isset($_POST['action'])) {
   
    //autoload
    spl_autoload_register(function ($class_name) {
    include('library/' . strtolower($class_name) . '.php');
    });
 
    $session = new Session;
    
    if(!empty(session_id())) {
        switch($_POST['action']) {
            case "getQuestion":
                $question = new Question;   
                $question->getQuestion();
                echo $question->json($question->json);
                break;
            case "addScore":
                $score = new Score;
                if(isset($_POST['answerid'])) {
                    $score->addScore($_POST['answer'], $_POST['answerid']);
                    echo $score->json($score->getScore());
                } else {
                    http_response_code(400);
                }
                break;
            case "resetScore":
                $session->resetScore();
                $session->clearHistory($session->getCategory());
                break;
            case "getCategoryIndex":
                $category = new Category();
                $category->getCategoryIndex();
                echo $category->json($category->json);
                break;
            case "changeCategory":
                if(isset($_POST['idcat'])) {
                  $category = new Category();
                  $category->changeCategory($_POST['idcat']);  
                } else {
                    http_response_code(400);
                }
                break;
            default:
                http_response_code(405);
                break;
        }
    } else {
        http_response_code(400);
    }
} else {
    http_response_code(400);
}
?>
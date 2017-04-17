<?php
if(!isset($_COOKIE['score'])) {
    $c_score = 0;
    $c_score_right = 0;
    $session_score = 0;
    $session_score_right = 0;
} else {
    $c_score = $_COOKIE['score'];
    $c_score_right = $_COOKIE['scoreright'];
    $session_score = $_SESSION['score'];
    $session_score_right = $_SESSION['scoreright'];
}
?>
            <div class="score">
				<b>Na tym urządzeniu:</b>
				<hr>
				<span style="color:#64B5F6">O: </span><b><span id="j_cscore"><?php echo $c_score; ?></span></b><br>
				<span style="color:#81C784;">P: </span><b><span id="j_cscoreright"><?php echo $c_score_right;?></span></b><br>
				<span style="color:#E57373;">N: </span><b><span id="j_cscorebad"><?php echo $c_score - $c_score_right;?></span></b>
			</div>
			<div class="score">
				<b>W tej sesji:</b>
				<hr>
				<span style="color:#64B5F6">O: </span><b><span id="j_score"><?php echo $session_score ?></span></b><br>
				<span style="color:#81C784;">P: </span><b><span id="j_scoreright"><?php echo $session_score_right;?></span></b><br>
				<span style="color:#E57373;">N: </span><b><span id="j_scorebad"><?php echo $session_score - $session_score_right;?></span></b>
			</div>

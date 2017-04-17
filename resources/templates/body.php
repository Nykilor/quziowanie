<body>
	<header>
	<div class="stats-container clearfix">
			<div class="stats">
				<svg fill="#FFFFFF" id="info" class="fill-white" height="36" viewBox="0 0 24 24" width="36" xmlns="http://www.w3.org/2000/svg">
					<path d="M0 0h24v24H0z" fill="none"/>
					<path d="M11 17h2v-6h-2v6zm1-15C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 18c-4.41 0-8-3.59-8-8s3.59-8 8-8 8 3.59 8 8-3.59 8-8 8zM11 9h2V7h-2v2z"/>
				</svg>
			</div>
		<div class="stats-2">
            <button class="btn-menu set-preferences float-right">
                <span class="tablet-desktop-only">USTAWIENIA</span>
                <img src="img/ic_settings_black_18px.svg" alt="svg" class="mobile-only center-item">
            </button>
            <button class="btn-menu delete-score float-right">
                <span class="tablet-desktop-only">WYCZYŚĆ WYNIK</span>
                <img src="img/ic_delete_forever_black_18px.svg" alt="svg" class="mobile-only center-item">
            </button>
            <button class="btn-menu change-category float-right">
                <span class="tablet-desktop-only">KATEGORIE</span>
                <img src="img/ic_view_list_black_18px.svg" alt="svg" class="mobile-only center-item">
            </button>
		</div>
		<div class="load-bar">
		  <div class="bar"></div>
		  <div class="bar"></div>
		  <div class="bar"></div>
		</div>
	</div>
	</header>
	<main>
        <div class="modal-container-preferences">
			<div class="modal-content">
                <span class="close-button-preferences"></span>
				<div class="modal-header">
					USTAWIENIA
				</div>
				<div class="modal-body">
                        <h2>Poprawna odpowiedź:</h2>
                        <input type="radio" name="powiadomienie" id="powiadomienie1" value="true" hidden>
                        <label for="powiadomienie1">Zaznacz, i czekaj.</label>
                        <p class="preference-time">Sekund: <input type="number" id="time" value="0"></p>
                        <input type="radio" name="powiadomienie" id="powiadomienie0" value="false" hidden>
                        <label for="powiadomienie0">Wyświetl w komunikacie.</label>
                        <h2>Powiadomienia:</h2>
                        <p>Ukryj: <input type="checkbox" name="toast" id="toast-hide" class="checkbox" hidden><label for="toast-hide">TAK</label></p>
                        <button class="btn btn-preference">Zapisz</button>
				</div>
				<div class="modal-footer">
				</div>
			</div>
		</div>
		<div class="modal-container">
			<div class="modal-content">
                <span class="close-button"></span>
				<div class="modal-header">
					Wybierz kategorie z poniższych:
				</div>
				<div class="modal-body">
					
				</div>
				<div class="modal-footer">
					* Po wybraniu kategorii pytania będą losowane właśnie pod te kategorie.
				</div>
			</div>
		</div>
		<div class="middle center-item border">
			<div class="question-box">
				<div class="question">
                    <noscript>Strona wymaga JavaScript'u aby funkcjonować.</noscript>
                    <b class="mobile-helper">Przeciągnij palcem <u>od lewej do prawej</u> aby odpowiedzieć na pytanie.</b>
					Witaj ! Jest to strona na której możesz odpowiadać na pytania z różnych kategori. Gdy poczujesz, że jesteś gotów odpowiedz na to pierwsze proste pytanie "2-1 = ?" lub wybierz kategorie.
				</div>
                <div class="image hidden"><img src="" alt="router"></div>
                <span class="shuffle">
				    <input type="radio" id="odp1" value="1" name="ODP" hidden>
				    <label for="odp1">2</label>
                </span>
                <span class="shuffle">
				    <input type="radio" id="odp2" value="2" name="ODP" hidden>
				    <label for="odp2">1</label>
                </span>
                <span class="shuffle">
				    <input type="radio" id="odp3" value="3" name="ODP" hidden>
				    <label for="odp3">3</label>
                </span>
                <span class="shuffle">
				    <input type="radio" id="odp4" value="4" name="ODP" hidden>
				    <label for="odp4">4</label>
                </span>
				<input type="text" value="2" name="POPODP" id="0" hidden>
			</div>
	        <input class="btn submit" type="submit" name="check" value="ODPOWIADAM">
		</div>
		<script src="js/javascript.min.js"></script>
	</main>
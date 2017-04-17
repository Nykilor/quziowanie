-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: mysql.ct8.pl
-- Czas generowania: 17 Kwi 2017, 23:23
-- Wersja serwera: 5.7.16-10-log
-- Wersja PHP: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `m3046_pytania`
--
CREATE DATABASE IF NOT EXISTS `m3046_pytania` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `m3046_pytania`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategorie`
--

CREATE TABLE `kategorie` (
  `ID_CAT` int(11) NOT NULL,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `kategorie`
--

INSERT INTO `kategorie` (`ID_CAT`, `NAME`) VALUES
(1, 'E-12'),
(2, 'E-13'),
(3, 'E-14'),
(4, 'E-14 na 30.11.2016');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pytania`
--

CREATE TABLE `pytania` (
  `ID` int(11) NOT NULL,
  `PYTANIE` text NOT NULL,
  `IMG` varchar(255) DEFAULT NULL,
  `ODP1` varchar(255) NOT NULL,
  `ODP2` varchar(255) NOT NULL,
  `ODP3` varchar(255) NOT NULL,
  `ODP4` varchar(255) NOT NULL,
  `POPODP` varchar(4) NOT NULL,
  `ID_CAT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `pytania`
--

INSERT INTO `pytania` (`ID`, `PYTANIE`, `IMG`, `ODP1`, `ODP2`, `ODP3`, `ODP4`, `POPODP`, `ID_CAT`) VALUES
(1, 'Która z topologii sieci jest przedstawiona na rysunku?', 'Siatka.jpeg', 'Magistrali', 'Siatki', 'Gwiazdy', 'Pierścienia', '2', 2),
(2, 'Topologia fizyczna w której wszystkie urządzenia końcowe są bezpośrednio podłączone do jednego punktu centralnego np. koncentratora lub przełącznika, to topologia:', NULL, 'Gwiazdy', 'Magistrali', 'Siatki', 'Pierścienia', '1', 2),
(3, 'Zgodnie ze standardem 802.3u sieci FastEthernet 100Base-FX wykorzystują', NULL, 'Przewód UTP kat.5.', 'Światłowód jednomodowy', 'Światłowód wielomodowy', 'Przewód UTP kat. 6.', '3', 2),
(4, 'Jaka jest kolejność przewodów we wtyku RJ-45 zgodnie z normą TIA/EIA-568 dla zakończenia typu T568B?', NULL, 'Biało-pomarańczowy, pomarańczowy, biało-zielony, niebieski, biało-niebieski, zielony, biało-brązowy, brązowy', 'Biało-zielony, zielony, biało-pomarańczowy, pomarańczowy, niebieski, biało-niebieski, biało-brązowy, brązowy', 'Biało-niebieski, niebieski, biało-brązowy, brązowy, biało-zielony, zielony, biało-pomarańczowy, pomarańczowy', 'Biało-brązowy, brązowy, biało-pomarańczowy, pomarańczowy, biało-zielony, niebieski, biało-niebieski, zielony', '1', 2),
(5, 'Bezpołączeniowy protokół warstwy transportowej to:', NULL, 'SSH', 'UDP', 'TCP', 'ARP', '2', 2),
(6, 'Które stwierdzenie dotyczące protokołu DHCP jest prawidłowe?', NULL, 'Jest to protokół dostępu do bazy danych', 'Jest to protokół konfiguracji hosta', 'Jest to protokół przesyłania plików', 'Jest to protokół routingu', '2', 2),
(7, 'Który z protokołów przekształca logiczne adresy IP na fizyczne adresy MAC stosowane w sieci Ethernet?', NULL, 'IRC', 'IP', 'ARP', 'SNMP', '3', 2),
(8, 'Które urządzenie przedstawia rysunek?', 'ap.png', 'Bramka VoIP', 'Hub', 'Access Point', 'Switch', '3', 2),
(9, 'Które urządzenie sieciowe przedstawia symbol graficzny?', 'router.png', 'Access Point', 'Switch', 'Hub', 'Router', '4', 2),
(10, 'Które urządzenie sieciowe działa w warstwie fizycznej modelu ISO/OSI, przesyłając sygnał z jednego portu na wszystkie pozostałe porty?', NULL, 'Karta sieciowa', 'Modem', 'Koncentrator', 'Przełącznik', '3', 2),
(11, 'Wykonując projekt sieci LAN, wykorzystano medium transmisyjne standardu Ethernet 1000Base-T. Które stwierdzenie jest prawdziwe?', NULL, 'Jest to standard sieci optycznych której maksymalny zasięg to 1000m', 'Jest to standard sieci optycznych pracujących na wielomodowych światłowodach', 'Standard ten umożliwia transmisję typu half-duplex przy maksymalnym zasięgu 1000 metrów.', 'Standard ten umożliwia transmisję typu full-duplex przy maksymalnym zasięgu 100 metrów.', '4', 2),
(12, 'Co łączy okablowanie pionowe w projekcie sieci LAN?', NULL, 'Główny punkt rozdzielczy z gniazdem abonenckim', 'Główny punkt rozdzielczy z pośrednimi punktami rozdzielczymi', 'Gniazdo abonenckie z pośrednim punktem rozdzielczym', 'Dwa sąsiednie punkty abonenckie', '2', 2),
(13, 'Które medium transmisyjne zapewnia separację galwaniczną pomiędzy systemami transmisji danych?', NULL, 'Światłowód', 'Skrętka ekranowana', 'Skrętka nieekranowana', 'Przewód koncentryczny', '1', 2),
(14, 'Z którym medium transmisyjnym wykorzystuje się przedstawiony na rysunku adapter?', 'z14.png', 'Z przewodem UTP', 'Ze światłowodem', 'Z przewodem koncentrycznym', 'Z przewodem FTP', '2', 2),
(15, 'Urządzenie przedstawione na rysunku to:', 'tester.png', 'Tester diodowy przewodu UTP', 'Tester długości okablowania', 'Narzędzie uderzeniowe typu KRONE', 'Zaciskarka wtyków RJ45', '1', 2),
(16, 'Wskaż zakres adresów IP należący do klasy A, służący do adresacji prywatnej w sieciach komputerowych.', NULL, '172.16.0.0 - 172.31.255.255 ', '192.168.0.0 - 192.168.255.255', '127.0.0.0 - 127.255.255.255', '10.0.0.0 - 10.255.255.255', '4', 2),
(17, 'Do której klasy adresów IP należy publiczny adres 130.140.0.0?', NULL, 'Do klasy C', 'Do klasy D', 'Do klasy B', 'Do klasy A', '3', 2),
(18, 'Ile hostów można zaadresować w podsieci o adresie 192.168.10.0/25?', NULL, '64', '62', '128', '126', '4', 2),
(19, 'Rysunek przedstawia konfiguracje urządzenia Wi-Fi. Wskaż które stwierdzenie dotyczące konfiguracji jest prawdziwe.', 'ustawienia.png', 'Dostęp do sieci bezprzewodowej jest dozwolony wyłącznie dla 7 urządzeń', 'W tym momencie w sieci Wi-Fi pracuje 7 urządzeń', 'Filtrowanie adresów MAC jest wyłaczone', 'Urządzenia w sieci mają adresy klasy A', '3', 2),
(20, 'Który z wymienionych mechanizmów zapewni najwyższy poziom bezpieczeństwa sieci bezprzewodowych standardu 802.11n?', NULL, 'WEP', 'WPA2', 'Autoryzacja', 'WPA', '2', 2),
(21, 'Polecenie netstat -a w systemach Microsoft Windows wyświetla', NULL, 'Statystykę odwiedzin stron internetowych', 'Aktualne parametry konfiguracyjne sieci TCP/IP', 'Wszystkie aktywne połączenia protokołu TCP', '  Tablicę trasowania', '3', 2),
(22, 'Aby sprawdzić adres fizyczny karty sieciowej, w wierszu poleceń systemu operacyjnego Microsoft Windows należy wpisać polecenie', NULL, 'show mac', 'ifconfig - a', 'get mac', 'ipconfig /all', '4', 2),
(23, 'W wierszu poleceń w systemie operacyjnym zostało wydane polecenie nslookup. Jaką informację uzyskano?', 'z23.png', 'Domyślną bramę', 'Adres serwera DNS', 'Adres IP hosta', 'Adres serwera DHCP', '2', 2),
(24, 'Które polecenie w systemie Linux umożliwia sprawdzenie adresu IP przypisanego do interfejsu sieciowego?', NULL, 'tcpconfig', 'maconfig', 'ifconfig', 'ipconfig', '3', 2),
(25, 'Które polecenie wiersza poleceń systemu operacyjnego Microsoft Windows wyświetli informacje dotyczące wszystkich zasobów udostępnionych na komputerze lokalnym?', NULL, 'net print', 'net file', 'net session', 'net share', '4', 2),
(26, 'Która usługa musi być uruchomiona na serwerze, by stacja robocza pobierała automatycznie adres IP?', NULL, 'WINS', 'DNS', 'DHCP', 'PROXY', '3', 2),
(27, 'Którą usługę należy zainstalować na serwerze Linux, aby korzystać z bezpiecznego zdalnego dostępu?', NULL, 'ssh', 'telnet', 'rlogin', 'tftp', '1', 2),
(28, 'Wskaż nieprawidłowe stwierdzenie dotyczące Active Directory.', NULL, 'Active Directory to usługa katalogowa w sieciowych systemach operacyjnych firmy Microsoft', 'W Active Directory informacje grupowane są hierarchicznie', 'Domeny zorganizowane hierarchicznie mogą tworzyć strukturę drzewa', 'Active Directory to usługa służąca do monitorowania użycia limitów dyskowych aktywnych katalogów', '4', 2),
(29, 'Która usługa sieciowa standardowo korzysta z portu 53?', NULL, 'POP3', 'DNS', 'FTP', 'HTTP', '2', 2),
(30, 'Jak nazywa się zbiór usług internetowych dla systemów rodziny Microsoft Windows, który umożliwia pełnienie roli serwera FTP oraz serwera WWW?', NULL, 'IIS', 'PROFTPD', 'APACHE', 'WINS', '1', 2),
(31, 'Komputer pracujący w domenie Active Directory nie może połączyć się z kontrolerem domeny, na którym jest przechowywany profil użytkownika. Jaki typ profilu użytkownika zostanie utworzony na tym komputerze?', NULL, 'Tymczasowy', 'Mobilny', 'Obowiązkowy', 'Lokalny', '1', 2),
(32, 'Którym poleceniem w systemie Linux można założyć użytkownika?', NULL, 'useradd', 'net user', 'usermod', 'usersadd', '1', 2),
(33, 'Które polecenie w systemie operacyjnym Linux umożliwia przypisanie istniejącego konta użytkownika nowak do grupy technikum?', NULL, 'usermod -g technikum nowak', 'groups -g technikum nowak', 'usergroup -g technikum nowak', 'useradd -g technikum nowak', '1', 2),
(34, 'Który z protokołów jest protokołem warstwy aplikacji w modelu ISO/OSI?', NULL, 'ARP', 'UDP', 'FTP', 'ICMP', '3', 2),
(35, 'Użytkownik Gość należy do grupy Goście. Grupa Goście należy do grupy Wszyscy. Wskaż uprawnienia udziału użytkownika Gość do folderu test1', 'z35.png', 'Użytkownik Gość posiada uprawnienia tylko zapisu do folderu test1', 'Użytkownik Gość posiada uprawnienia tylko odczytu do folderu test1', 'Użytkownik Gość nie posiada uprawnień do folderu test1', 'Użytkownik Gość posiada pełne uprawnienia do folderu test1', '4', 2),
(36, 'W systemie Linux ustawiono prawa dostępu do folderu określone w postaci ciągu znaków rwx--x--x. Jakiej wartości numerycznej odpowiadają te prawa?', NULL, '621', '711', '543', '777', '2', 2),
(37, 'Użytkownik wpisując w wierszu poleceń polecenie ping www.onet.pl otrzymuje następujący komunikat: Żądanie polecenia ping nie może znaleźć hosta www.onet.pl Sprawdź nazwę i ponów próbę. Natomiast wpisując w wierszu poleceń polecenie ping 213.180.141.140 (adres IP serwera www.onet.pl), użytkownik dostaje odpowiedź z serwera. Co może być przyczyną takiego stanu?', NULL, 'Niepoprawny adres IP serwera DNS', 'Niepoprawny adres IP hosta', 'Niepoprawnie skonfigurowana maska podsieci', 'Niepoprawnie skonfigurowana brama domyślna', '1', 2),
(38, 'Hosty A i B nie komunikują się z hostem C, Między hostami A i B komunikacja jest prawidłowa. Co może być przyczyną braku komunikacji między hostami A i C oraz B i C?', 'z38.png', 'Switch do którego są podpięte hosty jest wyłaczony', 'Adres IP hosta C jest adresem rozgłoszeniowym', 'Adresy IP należą do różnych podsieci', 'Host C ma źle ustawioną bramę domyślną', '3', 2),
(39, 'Która czynność zabezpieczy dane przesyłane w sieci przed działaniem sniffera?', NULL, 'Zmiana hasła użytkownika', 'Korzystanie z antydialera', 'Szyfrowanie danych w sieci', 'Skanowanie programem antywirusowym', '3', 2),
(40, 'Narzędzie iptables w systemach Linux służy do:', NULL, 'Konfiguracji zdalnego dostępu do serwera', 'Konfiguracji karty sieciowej', 'Konfiguracji serwera pocztowego', 'Konfiguracji zapory sieciowej', '4', 2),
(41, 'Który typ fizycznej topologii sieci komputerowej przedstawia rysunek?', 'E.13-X-16.01.01.jpg', 'Częściowej siatki', 'Punkt-Punkt', 'Pełnej siatki', 'Gwiazdy', '3', 2),
(42, 'Rysunek przedstawia fizyczną topologię', 'E.13-X-16.01.02.jpg', 'Drzewa', 'Szyny', 'Magistrali', 'Gwiazdy', '4', 2),
(43, 'Ile domen kolizyjnych i rozgłoszeniowych jest widocznych na schemacie?', 'E.13-X-16.01.03.jpg', '4 domeny kolizyjne i 9 domen rozgłoszeniowych', '9 domen kolizyjnych i 1 domena rozgłoszeniowa', '1 domena kolizyjna i 9 domen rozgłoszeniowych', '9 domen kolizyjnych i 4 domeny rozgłoszeniowe', '4', 2),
(44, 'Który rodzaj standardu zakończenia przewodu okablowania strukturalnego przedstawia rysunek?', 'E.13-X-16.01.04.jpg', 'EIA/TIA 569', 'T568B', 'EIA/TIA 607', 'T568A', '4', 2),
(45, 'Który zapis jest prawidłowym adresem IPv6?', NULL, '2001-DB8-BAF-FE94', '2001.DB8.BAF.FE94', '2001:DB8::BAF::FE94', '2001:DB8::BAF:FE94', '4', 2),
(46, 'Identyfikowanie adresów fizycznych MAC na podstawie adresów logicznych IP jest wynikiem działania protokołu:', NULL, 'DHCP', 'HTTP', 'ARP', 'DNS', '3', 2),
(47, 'Symbol którego urządzenia wskazuje na rysunku strzałka?', 'E.13-X-16.01.07.jpg', 'Routera', 'Koncentratora', 'Serwera', 'Przełącznik', '1', 2),
(48, 'Zdjęcie przedstawia:', 'E.13-X-16.01.08.jpg', 'Punkt dostępowy', 'Most', 'Router', 'Przełącznik', '4', 2),
(49, 'Które stwierdzenie dotyczy sieci P2P ? peer to peer?', NULL, 'Komputer w sieci może równocześnie pełnić rolę serwera i klienta', 'Udostępnia wyłącznie zasoby dyskowe', 'Jest siecią hierarchiczną', 'Wymaga centralnego serwera z dedykowanym oprogramowaniem', '1', 2),
(50, 'Aby była możliwa komunikacja między sieciami VLAN, stosuje się', NULL, 'Koncentrator', 'Router', 'Punkt Dostępowy', 'Modem', '2', 2),
(51, 'Narzędzie na zdjęciu służy do:', 'E.13-X-16.01.11.jpg', 'Wykonania zakończeń kablowych w złączach LSA', 'Montażu modułu Krone w gniazdach', 'Zaciskania wtyków RJ45', 'Ściągania izolacji', '1', 2),
(52, 'Który przyrząd należy wybrać do pomiarów mapy połączeń okablowania strukturalnego sieci lokalnej?', NULL, 'Reflektometr OTDR', 'Analizator sieci LAN', 'Analizator protokołów', 'Monitor sieciowy', '2', 2),
(53, 'Ile hostów maksymalnie można zaadresować w sieci o adresie IP klasy B?', NULL, '1022', '254', '16777214', '65534', '4', 2),
(54, 'Serwer DHCP przydziela adresy z sieci o adresie 192.168.0.0. Którą maskę należy przypisać sieci, aby serwer mógł nadać 510 urządzeniom pracującym w sieci po jednym adresie IP?', NULL, '255.255.254.0', '255.255.255.192', '255.255.252.0', '255.255.255.128', '1', 2),
(55, 'Który adres IP jest adresem urządzenia pracującego w sieci 10.0.0.0/17?', NULL, '10.0.254.128', '10.0.128.254', '10.0.128.127', '10.0.127.128 ', '4', 2),
(56, 'Który rodzaj rozbudowy serwera wymaga instalacji dodatkowych sterowników?', NULL, 'Dodanie dysków fizycznych', 'Montaż kolejnej karty sieciowej', 'Dodanie pamięci RAM', 'Montaż kolejnego procesora', '2', 2),
(57, 'Na podstawie którego adresu przełącznik podejmuje decyzje o przesyłaniu ramki?', NULL, 'Adresu źródłowego MAC', 'Adresu docelowego IP', 'Adresu źródłowego IP', 'Adresu docelowego MAC', '4', 2),
(58, 'Która funkcja punktu dostępowego pozwala zabezpieczyć sieć bezprzewodową tak, aby tylko urządzenia o określonych adresach fizycznych mogły się do niej podłączyć?', NULL, 'Uwierzytelnianie', 'Nadanie SSID', 'Filtrowanie adresów MAC', 'Radius (Remote Authentication Dial In User Service)', '3', 2),
(59, 'Który parametr w konfiguracji punktu dostępowego pełni rolę loginu wykorzystywanego podczas próby nawiązywania połączenia z punktem dostępowym sieci bezprzewodowej?', 'E.13-X-16.01.19.jpg', 'Channel Width', 'Transmission Rate', 'Wireless Network Name', 'Wireless Channel', '3', 2),
(60, 'Na podstawie analizy ruchu sieciowego, wskaż adres IP i numer portu, z którego host otrzymuje odpowiedź', 'E.13-X-16.01.20.jpg', '192.168.0.13:80', '46.28.247.123:80', '192.168.0.13:51383', '46.28.247.123:51383', '2', 2),
(61, 'Które polecenie systemu Windows wyświetla tabele rutingu hosta?', NULL, 'ipconfig /relase', 'ipconfig /renew', 'netstat -n', 'netstat -r', '4', 2),
(62, 'Użytkownikom pracującym poza biurem uzyskanie zdalnego dostępu do serwera w sieci prywatnej przy wykorzystaniu infrastruktury sieci publicznej, takiej jak Internet, umożliwia:', NULL, 'SSH', 'FTP', 'Telnet', 'VPN', '4', 2),
(63, 'Pierwszą usługą instalowaną na serwerze jest usługa domenowa w usłudze Active Directory. Podczas instalacji kreator automatycznie wyświetli monit o konieczności zainstalowania usługi serwera:', NULL, 'DNS', 'WEB', 'FTP', 'DHCP', '1', 2),
(64, 'Adresem IP hosta skonfigurowanym na karcie sieciowej eth0 jest:', 'E.13-X-16.01.24.jpg', '128.171.104.255', '255.255.255.0', '128.171.104.26', '00:A0:c9:89:02:F8', '3', 2),
(65, 'Aby zagwarantować użytkownikom Active Directory możliwość logowania się i dostęp do zasobów tej usługi w przypadku awarii kontrolera domeny, należy:', NULL, 'Zainstalować drugi kontroler domeny', 'Przekopiować wszystkie zasoby sieci na każdy komputer w domenie', 'Dodać wszystkich użytkowników do grupy administratorzy', 'Udostępnić wszystkim użytkownikom numer do Help Desk', '1', 2),
(66, 'Rozgłaszaniem drukarek w sieci, kolejkowaniem zadań wydruku oraz przydzielaniem praw dostępu do drukarek zajmuje się serwer:', NULL, 'DHCP', 'Wydruk', 'FTP', 'Plików', '2', 2),
(67, 'Profil użytkownika systemu Windows wykorzystywany do logowania się na dowolnym komputerze w sieci, który jest przechowywany na serwerze i może być modyfikowany przez użytkownika, to profil:', NULL, 'Tymczasowy', 'Lokalny', 'Obowiązkowy', 'Mobilny', '4', 2),
(68, 'Który zakres grupy domyślnie jest ustawiany dla nowo utworzonej grupy w kontrolerze domeny systemu Windows Serwer?', NULL, 'Lokalny w domenie', 'Uniwersalny', 'Dystrybucyjny', 'Globalny', '4', 2),
(69, 'Które polecenie w systemie Linux umożliwia przydzielanie praw do plików i katalogów?', NULL, 'chmod', 'adduser', 'gedit', 'mkdir', '1', 2),
(70, 'Do zdalnego zarządzania stacjami roboczymi nie jest stosowany:', NULL, 'Program Wireshark', 'Pulpit zdalny', 'Program TeamViewer', 'Program UltraVNC', '1', 2),
(71, 'Protokół używany przez WWW to:', NULL, 'HTTP', 'IPSec', 'FTP', 'SMTP', '1', 2),
(72, 'Internetowy protokół pocztowy, który pozwala na zarządzanie wieloma folderami pocztowymi oraz pobieranie i operowanie na listach znajdujących się na zdalnym serwerze, to:', NULL, 'IMAP', 'TCP', 'SMTP', 'POP3', '1', 2),
(73, 'Które urządzenie w sieci lokalnej nie dzieli obszaru sieci komputerowej na domeny kolizyjne?', NULL, 'Przełącznik', 'Router', 'Most', 'Koncentrator', '4', 2),
(74, 'Protokołem połączeniowym warstwy transportowej modelu ISO/OSI jest:', NULL, 'TCP', 'UDP', 'ICMP', 'SMTP', '1', 2),
(75, 'Który z typów rekordów DNS w rodzinie systemów Windows Server definiuje alias (alternatywną nazwę rekordu A dla kanonicznej (rzeczywistej) nazwy hosta)?', NULL, 'CNAME', 'AAAA', 'PTR', 'NS', '1', 2),
(76, 'Urządzeniem, które umożliwia podłączenie lokalnej sieci komputerowej do Internetu jest:', NULL, 'Router', 'Koncentrator', 'Sterownik', 'Przełącznik', '1', 2),
(77, 'Menedżer usług IIS (Internet Information Services) systemu Windows jest interfejsem graficznym służącym do konfigurowania serwera:', NULL, 'Wydruku', 'WWW', 'DNS', 'Terminali', '2', 2),
(78, 'Użytkownicy z sieci wewnętrznej komunikują się ze sobą ale nie mogą się skomunikować z serwerem WWW. Wynik polecenia ping z komputerów do bramy jest pozytywny. Który element sieci nie może być przyczyną problemu?', 'E.13-X-16.01.38.jpg', 'Router', 'Przełącznik', 'Kabel między ruterem a przełącznikiem', 'Kabel między ruterem a serwerem WWW', '2', 2),
(79, 'W systemach Windows w celu ustalenia, gdzie w sieci zatrzymał się pakiet używa się komendy:', NULL, 'ping', 'nslookup', 'tracert', 'ipconfig', '3', 2),
(80, 'Co nie powinno być miejscem przechowywania kopii bezpieczeństwa danych znajdujących się na dysku twardym komputera?', NULL, 'Dysk zewnętrzny', 'Płyta CD/DVD', 'Inna partycja dysku tego komputera', ' Pamięć USB', '3', 2),
(81, 'W topologii fizycznej gwiazdy wszystkie urządzenia pracujące w sieci, są', NULL, 'Podłączone do jednej magistrali', 'Podłączone do węzła sieci', 'Połączone pomiędzy sobą odcinkami kabla tworząc zamknięty pierścień', 'Połączone z dwoma sąsiadującymi komputerami', '2', 2),
(82, 'Który standard sieci LAN definiuje dostęp do medium na podstawie przekazywania tokenu (żetonu)?', NULL, 'IEEE 802.3', 'IEEE 802.1', 'IEEE 802.2', 'IEEE 802.5', '4', 2),
(83, 'Którym symbolem oznaczona jest skrętka nieekranowana?', NULL, 'S/FTP', 'U/FTP', 'F/UTP', 'U/UTP', '4', 2),
(84, 'Okablowanie strukturalne należy zaliczyć do infrastruktury', NULL, 'Aktywnej', 'Terytorialnej', 'Pasywnej', 'Dalekosiężnej', '3', 2),
(85, 'Którym symbolem oznaczona jest skrętka nieekranowana?', NULL, 'S/FTP', 'U/FTP', 'F/UTP', 'U/UTP', '4', 2),
(86, 'Okablowanie strukturalne należy zaliczyć do infrastruktury', NULL, 'Aktywnej', 'Terytorialnej', 'Pasywnej', 'Dalekosiężnej', '3', 2),
(87, 'Ile warstw definiuje model ISO/OSI?', NULL, '5', '7', '9', '2', '2', 2),
(88, 'Standard IEEE 802.11 definiuje sieci', NULL, 'Światłowodowe LAN', 'Gigabit Ethernet', 'Bezprzewodowe LAN', 'Fast Ethernet', '3', 2),
(89, 'Którą konfigurację sieciową może mieć komputer należący do tej samej sieci LAN, co komputer o adresie 10.8.1.10/24?', NULL, '10.8.1.101 i 255.255.255.0', '10.8.0.101 i 255.255.0.0', '10.8.1.101 i 255.255.0.0', '10.8.0.101 i 255.255.255.0', '1', 2),
(90, 'Przyrząd przedstawiony na rysunku jest stosowany do zaciskania wtyków', 'zad8e13.jpg', 'BNC', 'E 2000', 'RJ 45', 'SC', '3', 2),
(91, 'Niezależną strukturą sieci WLAN jest', NULL, 'BSS1', 'IBSS', 'ESS', 'BSS', '4', 2),
(92, 'Adres IP (ang. Internet Protocol Address) jest', NULL, 'Adresem fizycznym komputera', 'Unikatowym numerem fabrycznym urządzenia', 'Unikatową nazwą symboliczną urządzenia', 'Adresem logicznym komputera', '4', 2),
(93, 'Które urządzenie należy zastosować do podłączenia komputerów w topologii gwiazdy?', NULL, 'Bridge', 'Repeater', 'Switch', 'Transceiver', '3', 2),
(94, 'Skrót WAN oznacza', NULL, 'Prywatną sieć komputerową', 'Lokalną sieć komputerową', 'Rozległą sieć komputerową', 'Miejską sieć komputerową', '3', 2),
(95, 'W którym protokole sieciowym adres źródłowy składa się ze 128 bitów?', NULL, 'IPv6', 'IPv4', 'UDP', 'DNS', '1', 2),
(96, 'Które polecenie jest stosowane do monitorowania lokalnych połączeń?', NULL, 'netstat', 'host', 'route add', 'dir', '1', 2),
(97, 'Połączenia typu punkt-punkt, poprzez publiczną infrastrukturę telekomunikacyjną oznacza się skrótem', NULL, 'PAN', 'VLAN', 'VPN', 'WLAN', '3', 2),
(98, 'Jednostką szybkości transmisji danych w sieciach komputerowych jest', NULL, 'dpi', 'ips', 'bps', 'byte', '3', 2),
(99, 'Która wersja systemu operacyjnego Windows Server 2008 posiada najbardziej okrojony interfejs graficzny?', NULL, 'Enterprise', 'Datacenter', 'Standard Edition', 'Server Core', '4', 2),
(100, 'Który z wymienionych adresów protokołu IPv4 jest adresem klasy D?', NULL, '10.0.3.5', '239.255.203.1', '128.1.0.8', '191.12.0.18', '2', 2),
(101, 'W Windows 7 konfigurację interfejsu sieciowego można wykonać, stosując rozwinięcie polecenia', NULL, 'netsh', 'nslookup', 'tracert', 'telnet', '1', 2),
(102, 'Wykonanie polecenia net use z:\\192.168.20.2data /delete, spowoduje', NULL, 'Odłączenie katalogu data92 od dysku Z:', 'Odłączenie zasobów hosta 192.168.20.2 od dysku Z:', 'Przyłączenie zasobów hosta 192.168.20.2 do dysku Z', 'Przyłączenie katalogu data do dysku Z:', '1', 2),
(103, 'Które z zadań realizuje usługa katalogowa Active Directory w systemach Windows Server', NULL, 'Umożliwia wymianę plików z odległymi komputerami za pomocą protokołu komunikacyjnego', 'Centralnie zarządza adresami IP i powiązanymi informacjami, a także udostępnia je automatycznie klientom', 'Przechowuje informacje o obiektach znajdujących się w sieci', 'Obsługuje żądania protokołu komunikacyjnego', '3', 2),
(104, 'Dynamiczne konfigurowanie parametrów TCP/IP hosta na podstawie adresu MAC karty sieciowej jest zadaniem protokołu', NULL, 'FTP', 'HTTP', 'DNS', 'DHCP', '4', 2),
(105, 'Mechanizm limitów dyskowych, pozwalający zarządzać wykorzystaniem przez użytkowników zasobów dyskowych, jest określany jako', NULL, 'release', 'quota', 'management', 'spool', '2', 2),
(106, 'Mapowanie dysków jest', NULL, 'Nadaniem uprawnień do folderu użytkownikom sieci WAN', 'Definiowanie użytkowników i grup użytkowników', 'Konfiguracją interfejsów sieciowych', 'Przyporządkowaniem oznaczenia dysku wybranemu katalogowi sieciowemu', '4', 2),
(107, 'W usłudze Active Directory, strukturę składającą się z jednej lub większej liczby domen, które mają wspólny schemat i wykaz globalny, należy nazwać (istnieje możliwość błędu w tym pytaniu, internet mówi Lasu a Pan siatki)', NULL, 'Liściem', 'Siatką', 'Lasem', 'Gwiazdą', '2', 2),
(108, 'W celu promowania serwera do roli kontrolera domeny w systemach Windows Server należy zastosować polecenie', NULL, 'regsvr32', 'dcpromo', 'dcgpofix', 'winnt32', '2', 2),
(109, 'Adres 2001:0012:0000:0000:0AAA:0000:0000:000B protokołu IPv6 po kompresji przyjmuje postać', NULL, '2001:12::AAA:0:0:B', '2001:0012::000B', '2001:12::0E98::B', '2001::AAA:0000:000B', '1', 2),
(110, 'Oprogramowanie Microsoft Hyper-V należy zastosować do', NULL, 'Lokalizacji zasobów sieciowych', 'Identyfikacji komputera w sieci', 'Zdalnego połączenia z innym hostem', 'Wirtualizacji fizycznych komputerów', '4', 2),
(111, 'Usługa \"Pulpit zdalny\" domyślnie działa na porcie', NULL, '3369', '3379', '3390', '3389', '4', 2),
(112, 'Zbiór usług internetowych dla systemów rodziny Microsoft Windows jest oznaczony skrótem', NULL, 'HTTPS', 'IIS', 'FTPS', 'HTTP', '2', 2),
(113, 'Translacja adresów sieciowych jest oznaczona skrótem', NULL, 'DMZ', 'IDS', 'NAT', 'SPI', '3', 2),
(114, 'Do centralnego zarządzania konfiguracją grup komputerów i użytkowników w systemach Windows Server należy zastosować narzędzie', NULL, 'GPMC', 'RDP', 'MMC', 'UNC', '1', 2),
(115, 'Który skrót określa typ licencji Microsoft przeznaczonej dla szkłł, uczelni wyższych, instytucji rządowych oraz dużych przedsiębiorstw?', NULL, 'BOX', 'OEM', 'MOLP', 'VLSC', '3', 2),
(116, 'W systemach operacyjnych Windows konto użytkownika, o największych uprawnieniach domyślnych należy do grupy', NULL, 'Goście', 'Użytkownicy zaawansowani', 'Administratorzy', 'Operatorzy kopii zaawansowanych', '3', 2),
(117, 'Protokołem połączeniowym, zapewniającym niezawodne dostarczenie danych jest protokół', NULL, 'UDP', 'TCP', 'IPX', 'ARP', '2', 2),
(118, 'Zasady filtracji ruchu sieciowego firewall są definiowane w postaci', NULL, 'Plików CLI', 'Serwisów', 'Kontroli pasma zajętości', 'Reguł', '4', 2),
(119, 'Które polecenie diagnostyczne należy zastosować do wyświetlania informacji o tym, czy miejsce docelowe odpowiada i po jakim czasie została odebrana odpowiedź?', NULL, 'ipconfig', 'nbtstat', 'ping', 'route', '3', 2),
(120, 'Które polecenie w systemach operacyjnych Windows , jest stosowane do wyświetlania konfiguracji interfejsów sieciowych?', NULL, 'hold', 'ifconfig', 'ipconfig', 'tracert', '3', 2),
(121, 'Który protokół zapewnia szyfrowanie połączenia?', NULL, 'DHCP', 'DNS', 'TELNET', 'SSH', '4', 2),
(122, 'Którego polecenia należy użyć , aby wyraz TEKST został wyświetlony w kolorze czarnym w oknie przeglądarki internetowej?', NULL, '&lt;body color=\"black\">TEKST</body>', '&lt;font color=\"czarny\">TEKST</font>', '&lt;font color=\"#000000\">TEKST</font>', '&lt;body bgcolor=\"black\">TEKST</body>', '3', 3),
(123, 'W poleceniach, których celem jest odtwarzanie na stronie internetowej dźwięku, jako podkładu muzycznego nie wykorzystuje się atrybutu', NULL, 'volume=\"-100\"', 'href=\"c:/100.wav\"', 'balance=\"10\"', 'loop=\"10\"', '2', 3),
(124, 'Jakiego znacznika należy użyć, aby przejść do kolejnej linii tekstu, nie tworząc akapitu na stronie internetowej?', NULL, '&lt;/br', '&lt;p>', '&lt;br>', '&lt;/b>', '3', 3),
(125, 'Kaskadowe arkusze stylów tworzy się w celu', NULL, 'nadpisywania wartości znaczników już ustawionych na stronie', 'blokowania jakichkolwiek zmian w wartościach znaczników już przypisanych w pliku CSS', 'ułatwienia formatowania strony', 'połączenia struktury dokumentu strony z właściwą formą jego prezentacji', '3', 3),
(126, 'W podanej regule CSS h1{color: blue} h1 oznacza', NULL, 'selektor', 'deklarację', 'wartość', 'klasę', '1', 3),
(127, 'Edytor spełniający założenia WYSIWYG musi umożliwiać', NULL, 'tworzenie podstawowej grafiki wektorowej', 'obróbkę plików dźwiękowych przed umieszczeniem ich na stronie internetowej', 'publikację strony na serwerze poprzez wbudowanego klienta FTP', 'uzyskanie zbliżonego wyniku tworzonej strony do jej obrazu w przeglądarce internetowej', '4', 3),
(128, 'Do graficznego tworzenia stron internetowych należy wykorzystać', NULL, 'edytor CSS', 'program MS Office Picture Manager', 'program typy WYSIWYG', 'przeglądarkę internetową', '3', 3),
(129, 'W procesie walidacji stron internetowych nie bada się', NULL, 'działania linków', 'zgodności z przeglądarkami', 'błędów składni kodu', 'źródła pochodzenia narzędzi edytorskich', '4', 3),
(130, 'Model opisu przestrzeni barw o parametrach odcień, nasycenie i jasność, to', NULL, 'HSV', 'CMY', 'CMYK', 'RGB', '1', 3),
(131, 'Wskaż model barw, który stosuje się do wyświetlania kolorów na ekranie monitora komputerowego', NULL, 'CMY', 'CMYK', 'RGB', 'HLS', '3', 3),
(132, 'Który parametr obiektu graficznego ulegnie zmianie po modyfikacji wartości kanału alfa?', NULL, 'Ostrość krawędzi', 'Przezroczystość', 'Nasycenie barw', 'Kolejność wyświetlania pikseli', '2', 3),
(133, 'Jakiego formatu należy użyć do zapisu obrazu z kompresją stratną?', NULL, 'JPEG', 'PCX', 'PNG', 'GIF', '1', 3),
(134, 'Najprostszy sposób zmiany obiektu oznaczonego cyfrą 1 na obiekt oznaczony cyfrą 2 polega na', 'E.14.14.05.p13.jpg', 'geometrycznym transformowaniu obiektu', 'narysowaniu docelowego obiektu', 'animowaniu obiektu', 'zmianie warstwy obiektu', '1', 3),
(135, 'Jak nazywa się proces przedstawienia, we właściwej dla danego środowiska formie, informacji zawartej w dokumencie elektronicznym?', NULL, 'Rasteryzacja', 'Mapowanie', 'Renderowanie', 'Teksturowanie', '3', 3),
(136, 'Proces filtracji sygnału wejściowego w dziedzinie czasu, obejmujący zasadę superpozycji, związany jest z filtrem', NULL, 'o skończonej odpowiedzi impulsowej', 'liniowym', 'przyczynowym', 'niezmiennym w czasie', '2', 3),
(137, 'Jak nazywa się podzbiór strukturalnego języka zapytań, związany z formułowaniem zapytań do bazy danych za pomocą polecenia SELECT?', NULL, 'SQL DQL (ang. Data Query Language)', 'SQL DDL (ang. Data Definition Language)', 'SQL DCL (ang. Data Control Language) ', 'SQL DML (ang. Data Manipulation Language)', '1', 3),
(138, 'Jakie są nazwy typowych poleceń języka zapytań SQL, związane z wykonywaniem operacji na danych SQL DML (np.: umieszczanie danych w bazie, kasowanie, dokonywanie zmian w danych)?', NULL, 'DENY, GRANT, REVOKE ', 'DELETE, INSERT, UPDATE ', 'ALTER, CREATE, DROP', 'SELECT, SELECT INTO', '2', 3),
(139, 'Jak posortowana będzie lista, utworzona ze wszystkich kolumn tabeli uczniowie i zawierająca uczniów ze średnią większą od 5, która zostanie zwrócona jako wynik przedstawionego zapytania?', 'E.14.14.05.p18.jpg', 'Rosnąco według parametru srednia ', 'Rosnąco według parametru klasa ', 'Malejąco według parametru klasa', 'Malejąco według parametru srednia ', '3', 3),
(140, 'Według którego parametru oraz dla ilu tabel zostaną zwrócone wiersze na liście w wyniku przedstawionego zapytania?', 'E.14.14.05.p19.jpg', 'Według parametru wyrob_id wyłącznie dla trzech tabel', 'Według parametru nr_id dla wszystkich tabel', 'Według parametru wyrob_id dla wszystkich tabel', 'Według parametru nr_id wyłącznie dla trzech tabel', '2', 3),
(141, 'Który z obiektów relacyjnej bazy danych, będący kodem języka SQL, może być wywoływany w zapytaniach modyfikujących kolumny danych widoczne jako tabela, bez względu na to czy jest tworzony programowo, czy dynamicznie?', NULL, 'Wyzwalacz', 'Procedura składowa', 'Reguła', 'Funkcja zdefiniowana', '4', 3),
(142, 'Jak nazywa się element bazy danych, za pomocą którego można jedynie odczytywać dane z bazy, prezentując je w postaci tekstu lub wykresu?', NULL, 'Zapytanie', 'Raport', 'Tabela', 'Formularz', '2', 3),
(143, 'Jakiego typu specjalizowane oprogramowanie narzędziowe należy zainstalować, aby umożliwić wykonanie jego użytkownikowi operacji na zgromadzonych danych?', NULL, 'System Zarządzania Bazą Danych (SZBD)', 'Obiektowy System Zarządzania Bazą Danych', 'Klucz obcy', 'Otwarty mechanizm komunikacji bazy danych', '1', 3),
(144, 'Co należy zastosować w organizacji danych, aby zapytania w bazie danych były wykonywane szybciej?', NULL, 'Indeksy', 'Wartości domyślne', 'Klucze podstawowe', 'Reguły', '1', 3),
(145, 'W programie Microsoft Access formą zabezpieczeń dostępu do danych związaną z tabelą i kwerendą jest', NULL, 'przypisanie uprawnień', 'określanie przestrzeni tabel ', 'wprowadzenie limitów przestrzeni dyskowej', 'stosowanie makr', '1', 3),
(146, 'Które z wymienionych osób odpowiadają za przygotowanie systemu bazy danych do pracy produkcyjnej w sposób ciągły, zarządzanie użytkownikami i instalowanie nowych wersji systemu bazodanowego?', NULL, 'Administratorzy systemu bazy danych', 'Projektanci i programiści Systemu Zarządzania Bazą Danych', 'Projektanci narzędzi deweloperskich', 'Administratorzy serwerów i sieci komputerowych ', '1', 3),
(147, 'Z jakimi mechanizmami nadawania zabezpieczeń, dającymi możliwość wykonywania operacji na bazie danych, związane są zagadnienia zarządzania kontami, użytkownikami i uprawnieniami?', NULL, 'Z regułami ', 'Z atrybutami', 'Z przywilejami obiektowymi', 'przywilejami systemowymi', '4', 3),
(148, 'Metoda udostępniania bazy danych w programie Microsoft Access, dotycząca wszystkich obiektów bazy umieszczonych na dysku sieciowym i używanych jednocześnie przez różne osoby nosi nazwę', NULL, 'witryny programu SharePoint', 'serwera bazy danych', 'folderu sieciowego', 'dzielonej bazy danych', '3', 3),
(149, 'Jakie należy posiadać uprawnienia, aby wykonać i odtworzyć kopię zapasową bazy danych Microsoft SQL Server 2005 Express?', NULL, 'Administrator systemu', 'Users', 'Użytkownik lokalny', 'Security users', '1', 3),
(150, 'Typ zmiennej w języku JavaScript', NULL, 'musi być zadeklarowany na początku skryptu', 'jest tylko jeden', 'nie występuje', 'następuje poprzez przypisanie wartości', '4', 3),
(151, 'Zmienne typu int odnoszą się do liczb', NULL, 'w notacji stałoprzecinkowej', 'całkowitych', 'naturalnych', 'notacji zmiennoprzecinkowej', '2', 3),
(152, 'Co definiuje w języku C++ przedstawiony fragment kodu?', 'E.14.14.05.p31.jpg', 'Typ strukturalny składający się z trzech pól', 'Kontakt pomiędzy zmiennymi globalnymi i lokalnymi', 'Hierarchię zmiennych', 'Trzy zmienne niepowiązane ze sobą ', '1', 3),
(153, 'Sposób programowania, w którym ciąg poleceń (sekwencji instrukcji) przekazywanych komputerowi jest postrzegany jako program, nosi nazwę programowania', NULL, 'stanowego ', 'imperatywnego', 'logicznego ', 'funkcyjnego ', '2', 3),
(154, 'Które wartości będą kolejno wypisane w wyniku działania przedstawionego skryptu?', 'E.14.14.05.p33.jpg', '1 2 1', '2 2 1', '2 1 1', '1 2 2', '2', 3),
(155, 'Fragment kodu prezentuje składnię języka', 'E.14.14.05.p34.jpg', 'PHP', 'C#', 'JavaScript', 'C', '1', 3),
(156, 'Jaki program komputerowy przekształca kod źródłowy, napisany w konkretnym języku programowania, na język komputera?', NULL, 'Kompilator', 'Debugger', 'Edytor kodu źródłowego', 'Środowisko programistyczne', '1', 3),
(157, 'Jak nazywa się program, który wykonuje instrukcje zawarte w kodzie źródłowym tworzonego programu bez uprzedniego generowania programu wynikowego?', NULL, 'Konwerter kodu', 'Kompilator', 'Interpreter', 'Konwerter języka ', '3', 3),
(158, 'Który język skryptowy ogólnego przeznaczenia należy wykorzystać do tworzenia aplikacji WWW, zagnieżdżonych w języku HTML i uruchamianych po stronie serwera?', NULL, 'PHP', 'JavaScript', 'C#', 'Perl', '1', 3),
(159, 'Jak nazywa się technika umożliwiająca otwarcie połączenia klienta z serwerem i komunikację bez przeładowywania całej strony WWW w sposób asynchroniczny?', NULL, 'AJAX', 'XML', 'PHP', 'VBScript', '1', 3),
(160, 'Jak nazywa się element oznaczony znakiem zapytania w strukturze platformy .NET, który umożliwia tworzenie własnych aplikacji z użyciem frameworków i zamianę kompilowanego kodu pośredniego na kod maszynowy procesora zainstalowanego w komputerze?', 'E.14.14.05.p39.jpg', 'Biblioteka klas bazowych (BCL).', 'Infrastruktura językowa (CLI).', 'Wspólne środowisko programistyczne (CLP). ', 'Wspólne środowisko uruchomieniowe (CLR).', '4', 3),
(161, 'Jakiego rodzaju mechanizm kontroli bezpieczeństwa wykonywania aplikacji zawiera środowisko uruchomieniowe platformy .NET Framework?', NULL, 'Mechanizm wykonywania aplikacji dla bibliotek klas.', 'Mechanizm wykonywania aplikacji realizowany przez frameworki aplikacji internetowych (ASP.NET).', 'Mechanizm wykonywania aplikacji oparty na uprawnieniach kodu (CAS - Code Access Security) i na rolach (RBS - Role-Based Security).', 'Mechanizm wykonywania aplikacji realizowany przez funkcję Windows API (Application Programming Interface).', '3', 3),
(162, ' Który z odsyłaczy posiada poprawną konstrukcję? ', NULL, '&lt;a href=&quot;mailto:adres&quot;&gt;tekst&lt;&#47;a&gt;', '&lt;a href=&lsquo;mailto:adres&lsquo;&gt;tekst&lt;&#47;a&gt;', 'B. &lt;a href=&lsquo;http:&#47;&#47;:adres&lsquo;&gt;tekst&lt;&#47;a&gt;', '&lt;a href=“http:&#47;&#47;adres“&gt;tekst&lt;&#47;a&gt;', '1', 4),
(163, ' Fragment kodu napisany w języku HTML zamieszczony w ramce przedstawia listę ', 'E14.02-X-14.08.jpg', 'Odnośników', 'Numerowaną', 'Wypunktowaną', 'Skrótów', '2', 4),
(164, ' Polecenie colspan służy do łączenia komórek tabeli w poziomie, natomiast rowspan w pionie. Którą z tabel wyświetli fragment kodu napisanego w języku HTML? &lt;table border=&quot;1&quot; cellspaing=&quot;0&quot; cellpadding=&quot;10&quot; &gt; &lt;tr&gt; &lt;td rowspan=&quot;2&quot;&gt;&amp;nbsp&lt;&#47;td&gt; &lt;td&gt;&amp;nbsp&lt;&#47;td&gt; &lt;&#47;tr&gt; &lt;tr&gt; &lt;td&gt;&amp;nbsp&lt;&#47;td&gt; &lt;&#47;tr&gt; &lt;&#47;table&gt;   ', 'E14.03-X-14.08.jpg', 'Rysunek C', 'Rysunek A', 'Rysunek D', 'Rysunek B', '4', 4),
(165, ' W znaczniku &lt;meta ...&gt; (w części &lt;meta ...&gt;) strony WWW nie umieszcza się informacji dotyczących ', NULL, 'Typu dokumentu', 'Kodowania', 'Autora', 'Automatycznego odświeżania', '1', 4),
(166, ' Wskaż sposób, w jaki należy odwołać się do pliku default.css, jeśli index.html znajduje się bezpośrednio w katalogu Strona? ', 'E14.05-X-14.08.jpg', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text&#47;css&quot; href=&quot;c:&#47;style&#47;default.css&quot; &#47;&gt;', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text&#47;css&quot; href=&quot;c:&#92;style&#47;default.css&quot; &#47;&gt;', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text&#47;css&quot; href=&quot;.&#47;style&#47;default.css&quot; &#47;&gt;', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text&#47;css&quot; href=&quot;...&#92;style&#92;default.css&quot; &#47;&gt;', '3', 4),
(167, ' 6. Wskaż stwierdzenie, które jest prawdziwe dla następującej definicji stylu: &lt;STYLE type=&quot;text&#47;css&quot;&gt; &lt;!--    P {color:blue; font-size:14pt; font-style:italic;}    A {font-size:16pt; text-transform:lowercase;}    TD.niebieski {color:blue}    TD.czerwony {color:red} --&gt; &lt;&#47;STYLE&gt; ', NULL, 'Odnośnik będzie pisany czcionką 14 punktów.', 'Akapit będzie transponowany na małe litery.', 'Jest to styl lokalny.', 'Zdefiniowano dwie klasy.', '4', 4),
(168, ' W palecie kolorów RGB kolor żółty jest połączeniem dwóch kolorów: zielonego i czerwonego. Który z kodów szesnastkowych oznacza żółty? ', NULL, '#FF00FF', '#FFFF00', '#F0F0F0', '#00FFFF', '2', 4),
(169, ' Który z formatów nie pozwala na zapis plików animowanych? ', NULL, 'SVG', 'GIF', 'ACE', 'SWF', '3', 4),
(170, ' Który z formatów graficznych pozwala na zapis przejrzystego tła? ', NULL, 'GIF', 'BMP', 'RAW', 'JPEG', '1', 4),
(171, ' Proces walidacji strony internetowej to: ', NULL, 'Publikowanie w sieci', 'Sprawdzenie strony', 'Zespół działań mających na celu zwiększenie oglądalności.', 'Sprawdzenie jej w celu wyeliminowania błędów.', '4', 4),
(172, ' Które oprogramowanie nie jest systemem zarządzania treścią (CMS)? ', NULL, 'Apache', 'Joomla', 'Mambo', 'WordPress', '1', 4),
(173, ' Który z formatów zapewnia największą redukcję rozmiaru pliku dźwiękowego? ', NULL, '*.pcm', '*.cd-audio', '*.mp3', '*.wav', '3', 4),
(174, ' Wskaż prawidłową kolejność tworzenia bazy danych ', NULL, 'Określenie celu, utworzenie relacji, stworzenie tabel, normalizacja', 'Określenie celu, stworzenie tabel, utworzenie relacji, normalizacja', 'Określenie celu, normalizacja, utworzenie relacji, stworzenie tabel', 'Określenie celu, normalizacja, stworzenie tabel, utworzenie relacji', '2', 4),
(175, ' Wskaż typ relacji pomiędzy tabelami: Tabela1 i Tabela3 ', 'E14.14-X-14.08.jpg', 'Jeden do wielu', 'Jeden do jednego', 'Wiele do jednego', 'Wiele do wielu', '4', 4),
(176, ' Które z pól są umieszczone w formularzu? ', 'E14.15-X-14.08.jpg', 'Input(Text), Input(Checkbox), Select, Select, Input(Submit), Input(Reset)', 'Textarea, Select, Input(Radio), Input(Radio), Input(Reset), Input(Submit)', 'Input(Text), Select, Input(Radio), Input(Radio), Input(Submit), Input(Reset)', 'Textarea, Option, Input(Checkbox), Input(Checkbox), Input(Submit), Input(Reset)', '3', 4),
(177, ' Którą z właściwości pola tabeli należy zdefiniować, aby pole przyjmowało dane składające się wyłącznie z cyfr? ', 'E14.16-X-14.08.jpg', 'Tagi inteligentne', 'Regułę sprawdzania poprawności.', 'Wartość domyślną', 'Maskę wprowadzania', '4', 4),
(178, ' Które ze słów kluczowych języka SQL należy użyć, aby wyeliminować duplikaty? ', NULL, 'LIKE', 'ORDER BY', 'DISTINCT', 'GROUP BY', '3', 4),
(179, ' Które ze stwierdzeń prawidłowo charakteryzuje zdefiniowaną tabelę? CREATE TABLE dane(kolumna INTEGER(3)); ', NULL, 'Kolumny tabeli dane nazywają się: kolumna1, kolumna2, kolumna3', 'Tabela o nazwie dane posiada jedną kolumnę liczb całkowitych.', 'Tabela o nazwie dane posiada trzy kolumny liczb całkowitych', 'Tabela posiada jedną kolumnę zawierającą trzyelementowe tablice', '2', 4),
(180, ' Polecenie REVOKE SELECT ON nazwa1 FROM nazwa2 w języku SQL umożliwia ', NULL, 'Nadawanie praw do tabeli', 'Odbieranie uprawnień użytkownikowi', 'Usuwanie użytkownika z bazy', 'Nadawanie uprawnień z użyciem zdefiniowanego schematu', '2', 4),
(181, ' Które polecenie wydane z konsoli systemu operacyjnego, zawierające w swojej składni opcję --repair, umożliwia naprawę bazy danych? ', NULL, 'mysqldump', 'create', 'truncate', 'mysqlcheck', '4', 4),
(182, ' Które polecenie wydane z konsoli systemowej dokona przywrócenia bazy danych? ', NULL, 'mysqldump -u root -p baza &gt; kopia.sql', 'mysql -u root -p baza &lt; kopia.sql', 'mysql -u root -p baza &gt; kopia.sql', 'mysqldump -u root -p baza &lt; kopia.sql', '2', 4),
(183, ' Polecenie w języku SQL GRANT ALL PRIVILEGES ON klienci to pracownik ', NULL, 'Nadaje wszystkie uprawnienia do tabeli klienci użytkownikowi pracownik', 'Skopiuje uprawnienia z grupy klienci na użytkownika pracownik.', 'Odbiera wszystkie uprawnienia pracownikowi do tabeli klienci', 'Nadaje uprawnienie grupie klienci do tabeli pracownik', '1', 4),
(184, ' Która z wymienionych funkcji sortowania, wykorzystywana w języku PHP, sortuje tablicę asocjacyjną według indeksów? ', NULL, 'ksort()', 'sort()', 'rsort()', 'asort()', '1', 4),
(185, ' W skrypcie PHP należy utworzyć cookie o nazwie &quot;owoce&quot;, które przyjmie wartość &quot;jabłko&quot;. Cookie ma być dostępne przez jedną godzinę od jego utworzenia. W tym celu należy w skrypcie PHP użyć funkcji: ', NULL, 'setcookie(&quot;jabłko&quot;, &quot;owoce&quot;, time()+3600);', 'cookie(&quot;owoce&quot;, &quot;jabłko&quot;, 3600);', 'setcookie(&quot;owoce&quot;, &quot;jabłko&quot;, time()+3600);', 'cookie(&quot;jabłko&quot;, &quot;owoce&quot;, 3600);', '3', 4),
(186, ' Wskaż słowo kluczowe w języku C++ dodawane przed wbudowanym typem danych, które przesuwa zakres na liczby wyłącznie nieujemne. ', NULL, 'short', 'unsigned', 'long', 'const', '2', 4),
(187, ' W językach programowania tylko zmienna jednego typu wbudowanego może przyjmować wyłącznie dwie wartości. Jest to typ ', NULL, 'Tablicowy', 'Łańcuchowy', 'Logiczny', 'Znakowy', '3', 4),
(188, ' Instrukcja języka PHP tworząca obiekt pkt dla zdefiniowanej w ramce klasy Punkt ma postać ', 'E14.27-X-14.08.jpg', 'pkt Punkt;', 'pkt= new Punkt();', 'pkt Punkt();', 'Punkt() pkt;', '2', 4),
(189, ' Wskaż wynik wykonania skryptu napisanego w języku  PHP   &lt;?php $tablica=array(10=&gt;&quot;Perl&quot;,20=&gt;&quot;Python&quot;,22=&gt;&quot;Pike&quot;); asort($tablica); print(&quot;&lt;pre&gt;&quot;); print_r($tablica); print(&quot;&lt;&#47;pre&gt;&quot;); ?&gt; ', 'E14.28-X-14.08.jpg', 'Rysunek C', 'Rysunek A', 'Rysunek B', 'Rysunek D', '2', 4),
(190, ' Które ze stwierdzeń dotyczących języków programowania nie jest prawdziwe? ', NULL, 'JavaScript jest językiem skryptowym', 'PHP jest językiem do tworzenia stron w czasie rzeczywistym', 'C++ jest językiem obiektowym', 'SQL jest językiem programowania strukturalnego', '4', 4),
(191, ' Jaka wartość zostanie wypisana na standardowym wyjściu dla zamieszczonego w ramce fragmentu programu napisanego w języku C++? ', 'E14.30-X-14.08.jpg', '2', '32', '0', '3', '4', 4),
(192, ' Wskaż stwierdzenie, które nie jest prawdziwe dla następującej definicji funkcji w języku C++?   void zamien(float&amp;x, float &amp;y){      float tmp;     tmp=x;     x=y;     y=tmp; } ', NULL, 'Funkcja posiada dwa parametry', 'Funkcja zwraca wartość', 'Funkcja odwołuje się do parametrów przez referencję', 'Funkcja nie zwraca wartości', '2', 4),
(193, ' Element zadeklarowany w języku C++ double x*; to ', NULL, 'Zmienna rzeczywista', 'Wskaźnik', 'Zmienna całkowita', 'Parametr formalny typu rzeczywistego', '2', 4),
(194, ' Wskaż prawidłową kolejność tworzenia aplikacji ', NULL, 'Analiza wymagań klienta, specyfikacja wymagań, tworzenie, testy, wdrażanie', 'Specyfikacja wymagań, analiz wymagań klienta, tworzenie, wdrażanie, testy', 'Analiza wymagań klienta, specyfikacja wymagań, tworzenie, wdrażanie, testy', 'Tworzenie, analiza wymagań klienta, specyfikacja wymagań, wdrażanie, testy', '1', 4),
(195, ' Jaką wartość zwróci funkcja zao zdefiniowana w języku C++, wywołana z aktualnym parametrem 3.55 int zao(float x){ return(x+0.5); } ', NULL, '3.5', '4.05', '4', '3', '3', 4),
(196, ' Proces tłumaczenia kodu źródłowego pisanego przez programistę na zrozumiały dla komputera kod maszynowy to ', NULL, 'uruchamianie', 'debugowanie', 'kompilowanie', 'implementowanie', '3', 4),
(197, ' Które ze stwierdzeń, w odniesieniu do zamieszczonej w ramce definicji funkcji, jest poprawne? ', 'E14.36-X-14.08.jpg', 'Tekst będzie wczytywany do momentu podania liczby większej niż 3', 'Funkcja posiada pętlę powtarzającą się 3 razy', 'Wczytywanie tekstu zakończy się, gdy tekst będzie się składał przynajmniej z 3 znaków', 'Pętla wykona się tylko raz', '3', 4),
(198, ' Po wykonaniu zamieszczonego w ramce skryptu napisanego w języku JavaScript w przeglądarce zostanie wypisana wartość ', 'E14.37-X-14.08.jpg', '12,4', '15,4', '12,5', '15,5', '3', 4),
(199, ' Poprzez deklarację var x=&quot;true&quot;; w języku JavaScript tworzy się zmienną typu ', NULL, 'logicznego', 'string (ciąg znaków)', 'nieokreślonego (undefined)', 'liczbowego', '2', 4),
(200, ' Platforma wspierająca programowanie w technologii .NET to ', NULL, 'middleware', 'eclipse', 'db2', 'Framework', '4', 4),
(201, ' Proces, w którym wykrywa się i usuwa błędy w kodzie źródłowym programow, to ', NULL, 'kompilowanie', 'debugowanie', 'normalizacja', 'standaryzacja', '2', 4);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`ID_CAT`),
  ADD KEY `ID` (`ID_CAT`);

--
-- Indexes for table `pytania`
--
ALTER TABLE `pytania`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_CAT` (`ID_CAT`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `kategorie`
--
ALTER TABLE `kategorie`
  MODIFY `ID_CAT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `pytania`
--
ALTER TABLE `pytania`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `pytania`
--
ALTER TABLE `pytania`
  ADD CONSTRAINT `pytania_ibfk_1` FOREIGN KEY (`ID_CAT`) REFERENCES `kategorie` (`ID_CAT`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

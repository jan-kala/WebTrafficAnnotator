# Testovaci Anotator Webovych dat
Tato slozka obsahuje vyvojovou verzi anotatoru webovych dat. 
Anotator se sklada ze dvou casti: 
- Browser extension - slozka BrowserExtension
- Lokalne bezici daemoni - slozka Daemons

Aktualnim nedostatkem je, ze monitorovani zatizi procesor naplno. Proto zatim testujte pouze kratsi dobu. 

## Instalace
1. Nejdrive si naklonujte repozitar a presunte se do teto slozky
    ```
    $ git clone https://github.com/jan-kala/WebTrafficAnnotator.git
    $ cd WebTrafficAnnotator/CVUT_cviceni
    ```
1. V aktualni slozce se nachazi skript `install.sh`, ktery spustte **BEZ SUDO** prav nasledovne:
    ```
    $ ./install.sh
    ```
    Skript provede presunuti a vytvoreni vsech potrebnych souboru a slozek. V prubehu instalace budete pozadani o heslo k sudo. 
    
    Na konci zustane stript **BEZET**, jelikoz spusti monitoring rozhrani. Prosim nechejte skript bezet!

1. Otevrete Firefox a do vyhledavaci radky zadejte nasledujici text:
    ```
    about:debugging#/runtime/this-firefox
    ```

1. V sekci *Temporary Extensions* klinete na **Load Temporary Extension**.

1. V dialogovem okne vyhledejte tuto slozku a vyberte soubor `manifest.json` ve slozce BrowserExtension.

1. V prohlizeci by se vam mel zobrazit **Kala Browser Annotator** v sekci *Temporary Extensions*

## Sber dat (konec cviceni)
Na konci cviceni spustte skript `./collect-data.sh` ktery vam vytvori zip soubor v annotator-data.zip. Po jeho vytvoreni muzete ukoncit terminal, ve kterem bezi install.sh (viz Instalace)



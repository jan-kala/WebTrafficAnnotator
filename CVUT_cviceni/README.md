# Testovaci Anotator Webovych dat
Tato slozka obsahuje vyvojovou verzi anotatoru webovych dat. 
Anotator se sklada ze dvou casti: 
- Browser extension - slozka BrowserExtension
- Lokalne bezici daemoni - slozka Daemons

## Instalace
1. V aktualni slozce se nachazi skript `install.sh`, ktery spustte **BEZ SUDO** prav nasledovne:
    ```
    ./install.sh
    ```
    Skript provede presunuti a vytvorenivsech potrebnych souboru a slozek. V prubehu instalace budete pozadani o heslo k sudo. 

1. Otevrete Firefox a do vyhledavaci radky zadejte nasledujici text:
    ```
    about:debugging#/runtime/this-firefox
    ```

1. V sekci *Temporary Extensions* klinete na **Load Temporary Extension**.

1. V dialogovem okne vyhledejte tuto slozku a vyberte soubor `manifest.json` ve slozce BrowserExtension.

1. V prohlizeci by se vam mel zobrazit **Kala Browser Annotator** v sekci *Temporary Extensions*

## Sber dat (konec cviceni)
Na konci cviceni spustte skript `./collect-data.sh` ktery vam vytvori zip soubor v domovskem adresari. 




# SIMONN Scipts REDEEM

## Konfiguration (Config.lua)

### Framework (ESX oder anderes)
- **Config.Framework**: Hier wird das Framework für das Script festgelegt. Aktuell unterstützt: 'ESX'.

### Redeem-Befehl
- **Config.RedeemCommand**: Definiert den Befehl, mit dem Spieler einen Code einlösen können. Standard: 'redeem'.

### Liste der Codes
- **Config.RedeemCodes**: Hier kannst du die Codes festlegen, die im Spiel eingelöst werden können. Jeder Code hat verschiedene Belohnungen wie Bargeld (cash), Bankguthaben (bank) und Items.

  Beispiel:
  ```lua
  ['CODE1'] = {
      cash = 1000,
      bank = 1,
      items = {
          {name = 'bread', amount = 2},
          {name = 'water', amount = 3}
      }
  },
  ['CODE2'] = {
      cash = 2000
  },



## Benachrichtigungen

Die Konfigurationsdatei (Config.lua) bietet verschiedene benutzerdefinierte Funktionen, die bei bestimmten Ereignissen ausgeführt werden. Hier sind die verfügbaren Funktionen:

- **Config.SuccessNotify(player):** Wird ausgeführt, wenn ein Spieler einen Code erfolgreich einlöst. Zeigt standardmäßig eine Benachrichtigung im Spiel an.

- **Config.CodeError(player):** Wird ausgeführt, wenn ein Spieler einen ungültigen Code verwendet. Zeigt standardmäßig eine entsprechende Benachrichtigung im Spiel an.

- **Config.CommandError(player):** Wird ausgeführt, wenn ein Spieler den Befehl zum Einlösen eines Codes falsch verwendet. Zeigt standardmäßig eine Hilfsbenachrichtigung für die korrekte Verwendung des Befehls an.

- **Config.AlreadyRedeemedError(player):** Wird ausgeführt, wenn ein Spieler versucht, einen bereits eingelösten Code erneut zu verwenden. Zeigt standardmäßig eine Benachrichtigung im Spiel an.

**Hinweis:** Du kannst diese Funktionen nach deinen Wünschen anpassen, z.B., um individuelle Benachrichtigungen im Spiel zu zeigen.


## Verwendung

Spieler können den definierten RedeemCommand verwenden, um Codes einzulösen. Hier sind die Schritte:

1. **Lade zuerst den Ordner "simonn_redeem" auf deinen Server hoch.**
2. **Bearbeite dann die Datei "config/config.lua" nach deinen Wünschen.**
3. **Füge das Skript zur "server.cfg"-Datei hinzu, indem du "ensure simonn_redeem" einträgst.**
4.  **Führe schließlich das SQL-Skript "config/sql.sql" aus.** 
5. **Fertig**
   

Nach der Installation können Spieler den im Config.RedeemCommand festgelegten Befehl verwenden, um Codes einzulösen. Du kannst diese Funktionen nach deinen Wünschen anpassen, zum Beispiel individuelle Benachrichtigungen im Spiel anzeigen.

**Hinweis:** Achte darauf, dass du die Konfiguration sorgfältig anpasst, um sicherzustellen, dass das Script gemäß deinen Anforderungen funktioniert.



# SIMONN Scipts REDEEM

## Configuration (Config.lua)

### Framework (ESX or other)
- **Config.Framework**: This sets the framework for the script. Currently supported: 'ESX'.

### Redeem Command
- **Config.RedeemCommand**: Defines the command for players to redeem a code. Default: 'redeem'.

### List of Codes
- **Config.RedeemCodes**: Here, you can set the codes that players can redeem in the game. Each code has various rewards such as cash (cash), bank money (bank), and items.

  Example:
  ```lua
  ['CODE1'] = {
      cash = 1000,
      bank = 1,
      items = {
          {name = 'bread', amount = 2},
          {name = 'water', amount = 3}
      }
  },
  ['CODE2'] = {
      cash = 2000
  },


## Notifications

The configuration file (Config.lua) provides various custom functions that execute during specific events. Here are the available functions:

 

      -- Executes when a player successfully redeems a code. By default, displays a notification in the game.
      Config.SuccessNotify = function(player)
          -- Customization can be done here
      end
      
      -- Executes when a player uses an invalid code. By default, displays a corresponding notification in the game.
      Config.CodeError = function(player)
          -- Customization can be done here
      end
      
      -- Executes when a player incorrectly uses the command to redeem a code. By default, displays a helpful notification for the correct command usage.
      Config.CommandError = function(player)
          -- Customization can be done here
      end
      
      -- Executes when a player attempts to use a code that has already been redeemed. By default, displays a notification in the game.
      Config.AlreadyRedeemedError = function(player)
          -- Customization can be done here
      end

## Usage

Players can use the defined RedeemCommand to redeem codes. Here are the steps:

1. **First, upload the folder "simonn_redeem" to your server.**
2. **Then, edit the file "config/config.lua" according to your preferences.**
3. **Add the script to the "server.cfg" file by including "ensure simonn_redeem".**
4. **Finally, execute the SQL script "config/sql.sql".**
5. **Done.**

After installation, players can use the command set in Config.RedeemCommand to redeem codes. You can customize these functions to show individual in-game notifications, for example.

**Note:** Be sure to carefully adjust the configuration to ensure the script works according to your requirements.



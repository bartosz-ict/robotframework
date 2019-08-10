     ____             _                
    |  _ \           | |               
    | |_) | __ _ _ __| |_ ___  ___ ____
    |  _ < / _` | '__| __/ _ \/ __|_  /
    | |_) | (_| | |  | || (_) \__ \/ / 
    |____/ \__,_|_|   \__\___/|___/___|
    |__   __|        | | |         | |            
       | | ___   ___ | | |     __ _| |__  ___ ____
       | |/ _ \ / _ \| | |    / _` | '_ \/ __|_  /
       | | (_) | (_) | | |___| (_| | |_) \__ \/ / 
       |_|\___/ \___/|_|______\__,_|_.__/|___/___|

      _____       _           _     ______                                           _    
     |  __ \     | |         | |   |  ____|                                         | |   
     | |__) |___ | |__   ___ | |_  | |__ _ __ __ _ _ __ ___   _____      _____  _ __| | __
     |  _  // _ \| '_ \ / _ \| __| |  __| '__/ _` | '_ ` _ \ / _ \ \ /\ / / _ \| '__| |/ /
     | | \ \ (_) | |_) | (_) | |_  | |  | | | (_| | | | | | |  __/\ V  V / (_) | |  |   < 
     |_|  \_\___/|_.__/ \___/ \__| |_|  |_|  \__,_|_| |_| |_|\___| \_/\_/ \___/|_|  |_|\_\
     _______          _ _           _     
    |__   __|        | | |         | |    
       | | ___   ___ | | |     __ _| |__  
       | |/ _ \ / _ \| | |    / _` | '_ \ 
       | | (_) | (_) | | |___| (_| | |_) |
       |_|\___/ \___/|_|______\__,_|_.__/ 
                                          
## Benodigdheden

* Internetverbinding
* BIOS instellingen voor gebruik virtualisatie
* Virtualbox (https://www.virtualbox.org)

## Instructies
1. Download en installeer eerst de Virtualbox voor je eigen OS:
    * https://www.virtualbox.org/wiki/Downloads

2. Download en installeer vervolgens de VirtualBox Extension Pack

3. (Optioneel) Wanneer je installeert op een Mac waarop al Mojave is geïnstalleerd, kan de installatie problemen opleveren. De workaround hiervoor vind je hier:
    * https://www.reddit.com/r/MacOS/comments/bqbowl/virtualbox_installation_fails_on_macos_mojave/

4. Download de Appliance / het ova-bestand
    * van Sebastiaan's google drive share https://drive.google.com/drive/folders/1BdppzCdDSyEvI4mOXDHhfKHNloUR1m_8?usp=sharing
    * vanaf een aangeleverde USB stick

5. Importeer de appliance met de VirtualBox applicatie

6. Stel de juiste hardware configuratie in om de virtuele pc te versnellen, de advies configuratie:
    * Ga naar "Instellingen" -> "Systeem" -> "Moederbord" en zet basis geheugen naar minimaal 4000 MB (Advies: 8000 MB)
    * Ga naar "Instellingen" -> "Systeem" -> "Processor"  en zet het aantal CPU's naar minimaal 2 (Advies: 4 CPU)
    * Ga naar "Instellingen" -> "Beeldscherm" -> "Scherm" en zet het videogeheugen naar minimaal 128 MB (Advies: Zet 3D-acceleratie aan)

7. Start de appliance van de cursus:
    * log in met gebruiker/wachtwoord ‘osboxes.org’
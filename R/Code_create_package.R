#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/


###### Datasets opnemen in een R-pakket

# Eerst lees je de dataset (eender welke extensie) in en sla je het op onder een object.
# Let op, de naam van het object wordt ook de naam van de dataset in het pakket. Kwestie van goed te kiezen.
# Vervolgens laat je de volgende code lopen in je console, waarbij je natuurlijk de juiste directory gebruikt.

# save(modelverg.2, file = "C://Users//woute//OneDrive//Documenten//metpsy//data//Data_modelvergelijking_opnieuw.RData")

# Hier in comment laten, maar om up te daten hiernaast (Rstudio environment) op install and restart drukken. (LET OP voor deze optie moet je R project metpsy openen. )
# Vervolgens de console clearen (   rm(list = ls())  ) en R opnieuw opstarten.
# Na library(metpsy) vind je normaal de nieuwe dataset terug.


####### Voor studenten zal je waarschijnlijk volgend commando nodig hebben

# install.packages( "C:\\Users\\woute\\OneDrive\\Documenten\\metpsy", repos = NULL, type = "source" )


####### Nieuwe functies.
# Open een bestaande R-code voor functie en sla hem op onder nieuwe naam.
# Vervang de functie door de nieuwe functie
# Laat de code runnen met export.

# OF
# Begin nieuw r-code file met de twee lijnen.
#   #' Lin_regressie_effect
#   #' @export

# Vervolgens defenieer je de functie onder de nieuwe naam en laat je de R-code runnen.
# Je kan tussen deze twee lijnen extra opties toevoegen zoals een beschrijving van de functie.

### LET OP de functie is nu nog niet opgenomen in je pakket. Daarvoor op je metpsy Rproject. Vervolgens krijg je rechts bovenaan
## in je environment de optie install and restart. Nu zijn alle nieuwe functies opgenomen in je pakket.



####### En hieronder nog wat info die gebruikt kunnen worden.

#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'


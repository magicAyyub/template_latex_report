#!/bin/bash

# Script de compilation LaTeX pour le modèle Rapport ECL
# Utilise XeLaTeX pour compiler main.tex

# Définition des couleurs pour les messages
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Créer le dossier output s'il n'existe pas
if [ ! -d "output" ]; then
    mkdir output
    echo -e "${GREEN}Dossier 'output' créé.${NC}"
fi

echo -e "${BLUE}Compilation LaTeX en cours...${NC}"

# Première compilation XeLaTeX
echo -e "${YELLOW}Étape 1/3 : Première compilation XeLaTeX...${NC}"
xelatex main.tex

# Vérifier si la première compilation a réussi
if [ $? -ne 0 ]; then
    echo -e "${RED}Erreur lors de la première compilation XeLaTeX. Arrêt.${NC}"
    exit 1
fi

# Deuxième compilation XeLaTeX
echo -e "${YELLOW}Étape 2/3 : Deuxième compilation XeLaTeX...${NC}"
xelatex main.tex

# Vérifier si la deuxième compilation a réussi
if [ $? -ne 0 ]; then
    echo -e "${RED}Erreur lors de la deuxième compilation XeLaTeX. Arrêt.${NC}"
    exit 1
fi

# Troisième compilation XeLaTeX
echo -e "${YELLOW}Étape 3/3 : Troisième compilation XeLaTeX...${NC}"
xelatex main.tex

# Vérifier si la troisième compilation a réussi
if [ $? -ne 0 ]; then
    echo -e "${RED}Erreur lors de la troisième compilation XeLaTeX. Arrêt.${NC}"
    exit 1
fi

# Déplacer le PDF vers le dossier output
if [ -f "main.pdf" ]; then
    mv main.pdf output/
    echo -e "${GREEN}PDF déplacé vers output/main.pdf${NC}"
else
    echo -e "${RED}Erreur : main.pdf non trouvé.${NC}"
    exit 1
fi

# Nettoyer les fichiers auxiliaires
echo -e "${BLUE}Nettoyage des fichiers auxiliaires...${NC}"
rm -f main.aux main.log main.out main.toc main.fdb_latexmk main.fls

echo -e "${GREEN}Compilation terminée avec succès ! Le PDF est dans le dossier 'output'.${NC}"
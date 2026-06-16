#!/bin/bash

echo "===== CALCULATEUR D'INTÉRÊT SIMPLE ====="

# Saisie des valeurs
read -p "Entrez le capital (principal) : " principal
read -p "Entrez le taux d'intérêt (%) : " taux
read -p "Entrez la période (en années) : " temps

# Calcul de l'intérêt simple
interet=$(echo "scale=2; ($principal * $taux * $temps) / 100" | bc)

# Affichage du résultat
echo "----------------------------------------"
echo "Capital initial : $principal"
echo "Taux d'intérêt  : $taux %"
echo "Période         : $temps ans"
echo "----------------------------------------"
echo "Intérêt simple  : $interet"
echo "Montant total   : $(echo "$principal + $interet" | bc)"
echo "========================================"

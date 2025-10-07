# Template LaTeX pour Mémoire de Master

Ce projet est un template LaTeX préconfiguré pour rédiger un mémoire de Master. Il utilise XeLaTeX pour la compilation et inclut des packages pour le français, les références, et la mise en page académique.

## Structure du projet

- `main.tex` : Fichier principal qui inclut tous les autres fichiers et définit la structure du document.
- `preface.tex` : Introduction, problématique, hypothèses, objectifs et méthodologie.
- `chapitre-1.tex` : Premier chapitre (cadre et fondements).
- `chapitre-2.tex` : Deuxième chapitre (défis et perspectives).
- `postface.tex` : Conclusion générale.
- `centrale.sty` : Package de style personnalisé pour Centrale.
- `compile.sh` : Script de compilation automatique.
- `texte_brute.txt` : Texte original utilisé pour générer le contenu.
- `images/` : Dossier pour les images (logo ECL).
- `output/` : Dossier où le PDF compilé est généré.

## Prérequis

- XeLaTeX installé (partie de TeX Live ou MacTeX).
- Bash pour exécuter le script de compilation.

## Comment compiler

1. Ouvrez un terminal dans le dossier du projet.
2. Exécutez `./compile.sh`.
3. Le PDF sera généré dans `output/main.pdf`.

## Comment personnaliser

1. **Modifier le contenu** : Éditez les fichiers `.tex` (preface.tex, chapitre-1.tex, etc.) pour remplacer le texte par le vôtre.
2. **Ajouter des références** : Utilisez `\cite{}` pour les citations bibliographiques.
3. **Ajouter des images** : Placez vos images dans `images/` et utilisez `\includegraphics{}`.
4. **Changer le titre/auteur** : Modifiez dans `main.tex`.

## Notes importantes

- Le document utilise babel avec français pour les guillemets et accents.
- Les caractères spéciaux comme œ ont été remplacés par oe pour compatibilité.
- Si vous rencontrez des erreurs de compilation, vérifiez que XeLaTeX est installé.

Bonne rédaction !
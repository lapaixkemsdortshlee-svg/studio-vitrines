# CLAUDE.md — Studio Vitrines

> Instructions du projet. Chargées au début de chaque session Claude Code sur ce repo.

## Le projet

Je suis **graphic designer**. Ce repo sert à créer des **sites vitrines de démonstration** (démos web) pour des startups, dans le cadre de leur **stratégie marketing**. Chaque site doit convaincre en quelques secondes : design soigné, message clair, rapide, responsive.

Ce repo n'a **aucun lien** avec mes autres projets. Il vit seul.

## Skills & outils — utilise-les proactivement

**Règle permanente :** au début de toute demande de création ou de modification, scanne la bibliothèque de skills (`~/.claude/skills/`), choisis le ou les skills dont la description colle le mieux au travail, et active-les avant de commencer. Préfère un match précis à un match général, combine quand la tâche s'étale (ex. `brainstorming` → `writing-plans`, ou `frontend-design` + `copywriting`). Si **aucun** skill ne couvre le besoin, utilise **`find-skills`** (`npx skills find <requête>`, puis `npx skills add <owner/repo@skill>`). Nomme le skill activé en une ligne, ne demande pas la permission d'abord.

Par tâche :

- **Construire une UI / une page** → `frontend-design`, `ui-ux-pro-max`, et **Magic** (`mcp__magic__*`, génération de composants). Design ↔ code via **Figma** (`mcp__figma__*`).
- **Visuels / images / vidéos** → skills `image` et `video` (prompts IA : Nano Banana, GPT Image, Kling, Veo). Assets via **Canva** (`mcp__canva__*`).
- **Copy + stratégie marketing** → `copywriting`, `cro`, `seo-audit`, `ai-seo`, `marketing-psychology`, `offers`, `landing`.
- **Avant de construire** → `brainstorming` → `writing-plans`.
- **Tester le vrai site** → gstack `/browse`, `/qa`, `/design-review`, `/design-html`.
- **Déployer / prévisualiser** → **Vercel** (`mcp__vercel__*`).
- **Debug** → `systematic-debugging`.
- **Avant de livrer** → `verification-before-completion`, puis gstack `/ship`.
- **Aucun skill ne colle** → `find-skills`.

## Règles de qualité (non négociables pour une vitrine)

1. **Responsive d'abord** : parfait sur mobile, tablette, desktop. Le body ne scrolle jamais horizontalement.
2. **Rapide** : vise un bon Lighthouse (images optimisées, pas de dépendances inutiles).
3. **Accessible** : `alt` sur toutes les images, contraste suffisant, focus visible, HTML sémantique.
4. **Système de design cohérent** : une palette, une échelle typographique, des espacements réguliers. Light + dark si pertinent.
5. **Un site = un dossier** (`sites/<nom-client>/`) pour garder les démos isolées les unes des autres.
6. **Vérifie avant de dire que c'est fini** : lance le site et regarde-le (`/browse` ou `/design-review`), ne te fie pas au seul code.

## Style de communication

Français, tutoiement, direct et précis. Pas de tirets longs (em dashes).

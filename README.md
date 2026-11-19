# S.T.O.P. CyberWatch: Operation Digital Shield

Single-window browser game prototype for cyber investigation awareness and training.

## Included
- Character-led investigation briefing
- Interactive four-stage mission with feedback
- Fictional streaming website evidence scene
- Evidence locker, XP and mission completion
- Operations map and team character briefing
- Responsive desktop and mobile layout
- Local browser progress storage

## Run
Open index.html in a browser, or run `python -m http.server 8000` and visit http://localhost:8000.

## Netlify
Push this folder to GitHub, import the repository into Netlify, leave the build command blank and set publish directory to `.`.

## Limitations
This is a front-end prototype. Progress is stored locally in the browser. There is no account system, shared leaderboard, live threat monitoring, real report submission, evidence upload or internal case management. All targets and evidence are fictional. This is not an official reporting channel or legal advice.

Before production, add secure authentication, server-side validation, database row-level security, private evidence storage, audit logs, abuse prevention, privacy notices, retention controls and human review. Never expose privileged database keys in browser code.

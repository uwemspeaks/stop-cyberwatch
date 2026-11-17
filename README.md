# S.T.O.P. CyberWatch V1

A mobile-friendly pilot prototype combining CyberWatch Academy and the Action Desk.

## Included
- 40 simulated mission cards across 8 categories.
- Beginner, intermediate and advanced labels.
- Category filtering, scenario decision interaction, feedback, points and local progress.
- Action Desk report-preparation form with URL validation.
- Downloadable JSON report draft. This prototype does not transmit reports or create official case records.
- Responsive layout for mobile and desktop.

## Run locally
Because the app loads JSON using `fetch`, serve the folder with a local static server. For example:
`python -m http.server 8000`
Then open `http://localhost:8000`.

## Deploy to GitHub and Netlify
1. Create a GitHub repository named `stop-cyberwatch`.
2. Upload the contents of this folder to the repository root.
3. In Netlify, import the repository.
4. Build command: leave blank.
5. Publish directory: `.` (repository root).
6. Deploy.

## Important production limitation
The Action Desk currently prepares and downloads a local draft only. It does not send a report to S.T.O.P., store personal data centrally, upload evidence or create a case reference. Do not describe this prototype as a live reporting service.

A production reporting workflow requires a reviewed privacy notice, secure backend, authentication or abuse controls, private evidence storage, server-side validation, restricted reviewer access, audit logging, retention rules and human review. Do not place private API keys or database service-role credentials in browser code or GitHub.

## Content review
The scenario library is illustrative and includes repeated learning patterns to demonstrate the game engine. It requires subject-matter review and scenario-specific editorial expansion before public training use. Legal explanations should be reviewed against the Nigerian Copyright Act 2022 and current reporting procedures.

## Contact details displayed
STOP@copyright.gov.ng
WhatsApp only: 0813-7459-027

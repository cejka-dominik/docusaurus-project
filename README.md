## Local build

clone the repo or get fresh docusaurus from offical sources:

`npx create-docusaurus@latest your-docusaurus-name classic`

go to created dirrectory (your-docusaurus-name) or dirrecory from the repo (doc-saurus-mole) and start the app:

`npm start`

then go to [localhost:3000](localhost:3000) and enjoy the tutorial


## How to build docusaurus container

prerequisites: docker installed (or docker engine running in windows if you are working in WSL like me)

[official documentation link](https://v1.docusaurus.io/docs/en/docker)

commands for linux terminal (start in dirrectory with Dockerfile):

`docker build -t docusaurus-site .`

`docker tag docusaurus-site:latest <username>/docusaurus-site:latest`

`docker push <username>/docusaurus-site:latest`


alternatively, if you want to save image localy, use:

`docker images`


to find IMAGE ID, and then:

`docker save -o docusaurus-site.tar <IMAGE-ID>`

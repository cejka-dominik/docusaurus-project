# docusaurus-project
WIP
<<<<<<< HEAD

Update the README with instructions on how to replicate the build locally.


npx create-docusaurus@latest doc-saurus-mole classic

npm start

vlastni server:
v 
doc-saurus-mole

npm run start

go to localhost:3000 and enjoy the tutorial

and then go to localhost:3000/doms-markdown-page for a little surprise
=======
hello oh
aa
>>>>>>> refs/remotes/origin/main





How to build container
prerequisites: docker installed
official link: https://v1.docusaurus.io/docs/en/docker
commands for linux terminal (start in dirrectory with Dockerfile):
docker build -t docusaurus-site .
docker tag docusaurus-site:latest <username>/docusaurus-site:latest
docker push <username>/docusaurus-site:latest

alternatively, if you want to save image localy, use:
docker images
to find IMAGE ID, and then:
docker save -o docusaurus-site.tar <IMAGE-ID>

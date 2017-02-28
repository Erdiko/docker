#Docker LAMP stack

An all in one lamp stack that uses nginx instead of apache.  Primarily to be used with Travis CI and local dev.  Travis CI has issues with networking between containers so we developed this container to aid in that process.

*Use the single service containers for your production environment.*

###1 Build and run the Docker container
    
    docker-compose up

Your site is now ready.  Go to http://docker.local or http://localhost in your browser

#!/bin/sh

echo Starting weaviate
sh runweaviate.sh &

sleep 5


#Load some data into weaviate
#./files2weaviate /  > f2w.log 2> f2w.err &
#./goloader .  > goload.log 2> goload.err &
#./ripper https://microsoft.com > rip.log 2> rip.err &

#Open the landing page in a browser
open http://localhost:8000

#Start the backend interface server
./TagExplorer.exe

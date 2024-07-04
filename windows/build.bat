set GO111MODULE=on
REM Build weaviate
git clone https://github.com/weaviate/weaviate
cd weaviate
git pull
git checkout t2v-bigram
go build "./cmd/weaviate-server"
copy weaviate-server.exe ..\weaviate-server.exe
cd ..

set GO111MODULE=auto

go get github.com/PuerkitoBio/purell github.com/boltdb/bolt  github.com/couchbase/moss  github.com/donomii/goof github.com/jaytaylor/html2text github.com/recoilme/pudge golang.org/x/net/html
git clone https://gitlab.com/donomii/weaviate-client
REM Web crawler and site ripper
go build ./weaviate-client/ripper

REM Indexes a local directory
go build ./weaviate-client/files2weaviate

REM Indexes golang source code
go build ./weaviate-client/goloader

REM Build web front end
git clone https://gitlab.com/donomii/TagExplorer
go build ./TagExplorer

REM Download python for windows
REM wget -c https://github.com/winpython/winpython/releases/download/7.0.20231126final/Winpython64-3.11.6.0.exe
REM aria2c --continue=true https://github.com/winpython/winpython/releases/download/7.0.20231126final/Winpython64-3.11.6.0.exe


REM Unpack python for windows
REM Winpython64-3.11.6.0.exe -o".\" -y
REM rename WPy64-31160 python

REM Remember the current directory
REM set wpath=%cd%

REM Download the module that provides a vectoriser.
REM git clone https://github.com/weaviate/t2v-transformers-models.git
REM set PATH=%wpath%\python\python-3.11.6.amd64\;%PATH%
REM set PATH=%wpath%\python\python-3.11.6.amd64\Scripts\;%PATH%
REM cd t2v-transformers-models
REM python -m ensurepip
REM REM pip install -r requirements.txt

REM pip install uvicorn


REM set MODEL_NAME=google/flan-t5-large

REM python download.py

REM cd ..

#!/bin/bash
export GO111MODULE=off
git clone https://gitlab.com/donomii/weaviate-client
# Web crawler and site ripper
go get ./weaviate-client/ripper
go build ./weaviate-client/ripper

# Indexes a local directory
echo Building files loader
go get ./weaviate-client/files2weaviate
go build ./weaviate-client/files2weaviate
cp files2weaviate indexer.exe

echo building goloader
go get ./weaviate-client/goloader
go build ./weaviate-client/goloader


# Build web front end
git clone https://gitlab.com/donomii/TagExplorer
go get ./TagExplorer
echo building web app
go build -o TagExplorer.exe ./TagExplorer

# Build weaviate
git clone https://github.com/weaviate/weaviate
cd weaviate
export GO111MODULE=on
#git checkout t2v-bigram
echo building weaviate
go build ./cmd/weaviate-server
mv weaviate-server ../
cd ..

# Download the module that provides a vectoriser.
#git clone https://github.com/weaviate/t2v-transformers-models.git

#rm -rf myenv
#python3 -m venv myenv
#source myenv/bin/activate

#cd t2v-transformers-models
#python -m ensurepip
#pip install -r requirements.txt

#pip install uvicorn


#export MODEL_NAME=google/flan-t5-large

#python download.py

#cd ..

rm -rf weaviate-client
#rm -rf weaviate
rm -rf TagExplorer

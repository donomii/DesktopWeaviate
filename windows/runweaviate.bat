set AUTHENTICATION_ANONYMOUS_ACCESS_ENABLED=true
set PERSISTENCE_DATA_PATH=data
set LOG_LEVEL=trace
set DEFAULT_VECTORIZER_MODULE=text2vec-bigram
set ENABLE_MODULES=text2vec-bigram
set TRANSFORMERS_INFERENCE_API=http://localhost:8010

weaviate-server --scheme http  --port 8080 --read-timeout=600s --write-timeout=600s
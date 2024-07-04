source myenv/bin/activate

cd t2v-transformers-models

export MODEL_NAME=google/flan-t5-large

uvicorn app:app --host 0.0.0.0 --port 8010

set wpath=%cd%
set PATH=%wpath%\python\python-3.11.6.amd64\;%PATH%
set PATH=%wpath%\python\python-3.11.6.amd64\Scripts\;%PATH%
cd t2v-transformers-models

set MODEL_NAME=google/flan-t5-large

python download.py

uvicorn app:app --host 0.0.0.0 --port 8010
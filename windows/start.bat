REM start runmodule.bat
start runweaviate.bat

sleep 5


start files2weaviate.exe c:/
start files2weaviate.exe d:/
start files2weaviate.exe e:/

start ripper.exe https://microsoft.com
start goloader.exe weaviate
start goloader.exe weaviate-client
start http://localhost:8000
TagExplorer.exe
export AUTHENTICATION_ANONYMOUS_ACCESS_ENABLED=true
export PROMETHEUS_MONITORING_ENABLED="false"
export GO_BLOCK_PROFILE_RATE="20"
export GO_MUTEX_PROFILE_FRACTION="20"
export PERSISTENCE_DATA_PATH=./data
export LOG_LEVEL=debug
export LOG_FORMAT=text
export BACKUP_FILESYSTEM_PATH="${PWD}/backups" 
export DEFAULT_VECTORIZER_MODULE=text2vec-bigram
export ENABLE_MODULES="text2vec-bigram,backup-filesystem"
export CLUSTER_IN_LOCALHOST=true
export CLUSTER_GOSSIP_BIND_PORT="7100"
export CLUSTER_DATA_BIND_PORT="7101"
export ORIGIN="http://localhost:8080"
export QUERY_DEFAULTS_LIMIT="20"
export QUERY_MAXIMUM_RESULTS="10000"
export TRACK_VECTOR_DIMENSIONS=true
export CLUSTER_HOSTNAME="weaviate-0"
export GPT4ALL_INFERENCE_API="http://localhost:8010"
export DISABLE_TELEMETRY=true # disable telemetry for local development
export RAFT_BOOTSTRAP_EXPECT=1

./weaviate-server --scheme http  --host "127.0.0.1" --port 8080 --read-timeout=600s --write-timeout=600s

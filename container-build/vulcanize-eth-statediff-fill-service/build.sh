# Build vulcanize/eth-statediff-fill-service
docker build -t vulcanize/eth-statediff-fill-service:local ${vulcanize_repo_base_dir}/eth-statediff-fill-service

#version: "3.2"
#services:
#  eth-statediff-fill-service:
#    restart: unless-stopped
#    depends_on:
#      ipld-eth-db:
#        condition: service_healthy
#    build:
#      context: ${vulcanize_eth_statediff_fill_service}
#      dockerfile: ./Dockerfile
#    environment:
#      ETH_SERVER_HTTPPATH: 0.0.0.0:8085
#      VDB_COMMAND: "serve"
#      DATABASE_NAME: "vulcanize_testing"
#      DATABASE_HOSTNAME: "ipld-eth-db"
#      DATABASE_PORT: 5432
#      DATABASE_USER: "vdbm"
#      DATABASE_PASSWORD: "password"
#      ETH_HTTP_PATH: $eth_http_path
#      WATCHED_ADDRESS_GAP_FILLER_INTERVAL: $watched_address_gap_filler_interval
#    ports:
#      - "127.0.0.1:8085:8085"

# Build vulcanize/ipld-eth-beacon-db
docker build -t vulcanize/ipld-eth-beacon-db:local ${vulcanize_repo_base_dir}/ipld-eth-beacon-db

#version: "3.2"
#services:
#  ipld-eth-beacon-db:
#    restart: always
#    build:
#      context: ${vulcanize_ipld_eth_beacon_db}/
#    environment:
#      POSTGRES_USER: vdbm
#      POSTGRES_DB: vulcanize_testing
#      POSTGRES_PASSWORD: password
#    volumes:
#      - vdb_db_eth-beacon_db:/var/lib/postgresql/data
#    ports:
#      - "127.0.0.1:8076:5432"
#    command: ["postgres", "-c", "log_statement=all"]
#
#volumes:
#  vdb_db_eth-beacon_db:

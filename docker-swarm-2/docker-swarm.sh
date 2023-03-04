#!/bin/bash

# Define o número de réplicas
NUM_REPLICAS=2

# Cria os serviços
docker-compose up -d --scale docker-swarm=$NUM_REPLICAS

# Inicia o swarm e define o nó principal como gerente
docker swarm init

# Obtém o token para adicionar nós de trabalho
TOKEN=$(docker swarm join-token -q worker)
echo $TOKEN



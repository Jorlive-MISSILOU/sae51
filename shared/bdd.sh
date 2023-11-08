#!/bin/bash

echo 'CREATE DATABASE sae51db; USE sae51db;' > bdd.sql

dbml2sql dbmlbdd.dbml >> bdd.sql

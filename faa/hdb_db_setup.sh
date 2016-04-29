#!/usr/bin/env bash

hive -e "create database faa;"

psql -d template1 -c "create database tutorial;"
psql -d tutorial -c "create schema faa;"

#!/bin/bash

psql master -f /server/initdb.sql

/server/MasterServer --create-server-account

/server/MasterServer --create-admin-team MyAwesomeAdminTeam

/server/MasterServer
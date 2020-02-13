#!/bin/bash
 #dump.sh
 EXPORT_COMMAND='cat dump.sql | docker exec -i project_db_1  /usr/bin/mysql -u root --password=password'
 docker-compose exec project_db_1 sh -c "$EXPORT_COMMAND"
 #end of dump.sh
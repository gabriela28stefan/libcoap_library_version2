#include <stdio.h>
#include <stdlib.h>
#include <sqlite3.h>

#include "coap_db_management.h"

/* handler for our database*/
sqlite3 *db;



int callback(void *NotUsed, int argc, char **argv, char **azColName){
   int i;
   for(i=0; i<argc; i++){
      printf("%s = %s\n", azColName[i], argv[i] ? argv[i] : "NULL");
   }
   printf("\n");
   return 0;
}


int open_database() {

	int rc;

	rc = sqlite3_open("../coap_data.db", &db);
	   if( rc ){
	      fprintf(stderr, "Can't open database: %s\n", sqlite3_errmsg(db));
	      exit(0);
	   }else{
	      fprintf(stdout, "Opened database successfully\n");
	   }
	   return  0;
}


char * create_sql_statement(int temp, int light) {

	/* Create SQL statement */
	   char sql[100];

	   int index = 1;
	   char aux_buffer[50];

	   sprintf(aux_buffer, "VALUES (%d, %d, %d);", index, temp, light);
	   char *insert = "INSERT INTO SENSORS_DATA (ID,TEMP,LIGHT) ";
	   strcpy(sql, insert);
	   strcat(sql, aux_buffer);

	   printf("SQL string is: %s\n", sql);
	   return sql;
}



int exec_sql_statement(char *sql) {

	/* Execute SQL statement */
	int rc;
	char *zErrMsg = 0;

	rc = sqlite3_exec(db, sql, callback, 0, &zErrMsg);
	if( rc != SQLITE_OK ){
		fprintf(stderr, "SQL error: %s\n", zErrMsg);
	    sqlite3_free(zErrMsg);
	    return -1;
	} else {
		fprintf(stdout, "Records created successfully\n");
	}
	return 0;
}


void close_database() {

	printf("Closing database....\n");
	sqlite3_close(db);
}

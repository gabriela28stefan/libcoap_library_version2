#include <stdio.h>
#include <stdlib.h>
#include <time.h>
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


int create_insert_sql_statement(char* sql, char* mac, int temp, int light, char* timestamp) {

	/* Create SQL statement */
	   char aux_buffer[80];

	   if (!sql)
		   return -1;

	   char *insert = "INSERT INTO COAP_DATA (MAC,TEMP,LIGHT,TIME) ";
	   sprintf(aux_buffer, "VALUES ('%s', %d, %d, '%s');", mac, temp, light, timestamp);

	   strcpy(sql, insert);
	   strcat(sql, aux_buffer);

	   return 0;
}


int create_select_sql_statement(char* sql) {

	/* Create SQL statement */
	   if (!sql)
		   return -1;

	   sql = "SELECT * FROM COAP";
	   return 0;
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
		fprintf(stdout, "Operation completed successfully\n");
	}
	return 0;
}


void close_database() {

	printf("Closing database....\n");
	sqlite3_close(db);
}


void get_timestamp(char *current_time) {



	time_t t = time(NULL);
	struct tm * p = localtime(&t);

	strftime(current_time, 100, "%a %b %d %H:%M:%S %Y", p);

	printf("%s of len: %d\n", current_time, strlen(current_time));
}

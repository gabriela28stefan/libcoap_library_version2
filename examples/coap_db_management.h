#ifndef _COAP_DB_MGMT_H_
#define _COAP_DB_MGMT_H_

int open_database();

int create_insert_sql_statement(char *sql, char *mac, int temp, int light, char *timestamp);

int create_select_sql_statement(char* sql);

int exec_sql_statement(char *sql);

void close_database();

void get_timestamp(char * current_time);

#endif /* _COAP_DB_MGMT_H_ */

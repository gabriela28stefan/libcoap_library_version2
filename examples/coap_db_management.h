#ifndef _COAP_DB_MGMT_H_
#define _COAP_DB_MGMT_H_

int open_database();

int create_insert_sql_statement(char *sql, char *mac, int temp, int light);

int create_select_sql_statement(char* sql);

int exec_sql_statement(char *sql);

void close_database();

#endif /* _COAP_DB_MGMT_H_ */

#ifndef _COAP_DB_MGMT_H_
#define _COAP_DB_MGMT_H_

int open_database();

char* create_sql_statement(int temp, int light);

int exec_sql_statement(char *sql);

void close_database();

#endif /* _COAP_DB_MGMT_H_ */

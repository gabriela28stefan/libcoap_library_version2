#ifndef _COAP_DB_MGMT_H_
#define _COAP_DB_MGMT_H_


#define MAC_SIZE	 20
#define TIME_ST		 30

typedef struct data {
	char 			mac_addr[MAC_SIZE];
	unsigned int 	id;
	unsigned int 	temp;
	unsigned int 	light;
	signed	 int	pressure;
	float			humidity;
} data_t;



int open_database();

int create_insert_sql_statement(char *sql, data_t *sensor_data);

int create_select_sql_statement(char* sql);

int exec_sql_statement(char *sql);

void close_database();

void get_timestamp(char * current_time);

#endif /* _COAP_DB_MGMT_H_ */

#!/bin/bash

for ((i=1; i<=$1; i++));
do
	./coap-client -m get coap://[2001:db8:0:f101:c411:00ff:ff2e:2100]:5683/
	#>> output_temp_light
	 sleep 1
done


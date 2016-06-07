#!/bin/bash

for i in {1..5}
do
	./coap-client -m get coap://[2001:db8:0:f101:c411:00ff:ff2e:2100]:5683/ 2> output_temp
	 sleep 1
done


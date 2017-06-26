for i in `seq -f "%03g" 1 999` ; do
	echo $i
	wget http://vodhls1.douyucdn.cn/live/normal_live-6279rP6ISIewkEZL--20170324192720/97b570a347b347c09fd9b095b41b9496_0000${i}.ts\?k\=97a1999a7535a8ec999e05676a252049\&t\=58e4b68c\&u\=231127\&ct\=web\&vid\=418373\&d\=A7663403DB2EF809D73960F635FB1E8F -O ${i}.ts
done

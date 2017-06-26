# shell 下载斗鱼ts 文件 合并成mp4 文件

### 下载
```
for i in `seq -f "%03g" 1 999` ; do
	echo $i
	wget http://vodhls1.douyucdn.cn/live/normal_live-6279rP6ISIewkEZL--20170324192720/97b570a347b347c09fd9b095b41b9496_0000${i}.ts\?k\=97a1999a7535a8ec999e05676a252049\&t\=58e4b68c\&u\=231127\&ct\=web\&vid\=418373\&d\=A7663403DB2EF809D73960F635FB1E8F -O ${i}.ts
done
```

mylist.sh

```
for i in `ls | egrep '^\d{3}.ts'` ; do
	echo file \'${i}\'
done
```

```
sh my.sh > mylist.txt

ffmpeg -f concat -i mylist.txt -c copy all.ts

ffmpeg -i all.ts -acodec copy -vcodec copy all.mp4

```

参考文章
* [combine-ts-files-into-mp4](https://superuser.com/questions/692990/use-ffmpeg-copy-codec-to-combine-ts-files-into-a-single-mp4)


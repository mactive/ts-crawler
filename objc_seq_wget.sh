for i in `seq -f "%03g" 1 999` ; do
	echo $i
	wget https://d2sazdeahkz1yk.cloudfront.net/videos/9fc9f40b-dea9-4825-a2f2-3862cf74d009/2/540p00${i}.ts -O ./objc/${i}.ts
done

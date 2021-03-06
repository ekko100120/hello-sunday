#!/usr/bin bash
# 定义应用组名
group_name='mk100120'
# 定义应用名称
app_name='hello-sunday'
# 定义应用版本
app_version='2.0.0'
# 定义应用环境
#profile_active='qa'
echo '----copy jar----'
echo '----stop container----'
docker container stop ${app_name}
docker rm ${app_name}
echo '----rm container----'
docker rmi ${group_name}/${app_name}:${app_version}
echo '----rm image----'
# 打包编译docker镜像
echo '----build image----'
docker build -t ${group_name}/${app_name}:${app_version} .

echo '----list image----'
docker image ls |grep ${app_name}

echo '----script end----'


#echo '----start container----'
#docker run -p 8088:8088 --name ${app_name}  -d ${group_name}/${app_name}:${app_version}

#echo '-------test jar -----------'
#curl -v localhost:8088/biz/v1/sunday/app

#echo '----stop container----'
#docker container stop ${app_name}

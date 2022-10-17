mkdir -p /opt/dataease/conf
mkdir -p /opt/dataease/logs

# 添加 DataEase 运行配置文件，除了 MySQL 连接信息必须正确外，Kettle 和 Doris 如不用的话，相关信息可不修改
cat <<EOF>> /opt/dataease/conf/dataease.properties
# 数据库配置
spring.datasource.url=jdbc:mysql://192.168.1.100:3306/dataease-wei?autoReconnect=false&useUnicode=true&characterEncoding=UTF-8&characterSetResults=UTF-8&zeroDateTimeBehavior=convertToNull&useSSL=false
spring.datasource.username=root
spring.datasource.password=Password123@mysql

carte.host=kettle
carte.port=18080
carte.user=cluster
carte.passwd=cluster

doris.db=dataease
doris.user=root
doris.password=Password123@doris
doris.host=doris-fe
doris.port=9030
doris.httpPort=8030

#新建用户初始密码
dataease.init_password=DataEase123456
#登录超时时间单位min  如果不设置 默认8小时也就是480
dataease.login_timeout=480

logger.level=INFO

#DE运行模式，可选值有 local、simple、cluster，分别对应本地模式、精简模式、集群模式
engine_mode=simple
EOF


# 地图准备
mkdir -p /opt/dataease/data/feature
cp -r mapFiles/full /opt/dataease/data/feature/full

# 驱动准备
mkdir -p /opt/dataease/drivers
cp -rp drivers/* /opt/dataease/drivers/

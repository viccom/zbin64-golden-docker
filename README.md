# zbin64-golden-docker

## build zbin64golden image

docker image build . -t viccomdong/zbin64golden:v1

## run zbin64golden

docker run -d --restart=always -p 5180:5180 -p 5191:5191 -p 6181:6181 -p 6190:6190 -p 5181:5181/udp -p 5190:5190/udp -p 5192:5192/udp --name zbin64golden  viccomdong/zbin64golden:v1

docker run -d --restart=always --net=host --name zbin64golden viccomdong/zbin64golden:v1

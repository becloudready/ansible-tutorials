for i in `cat host`; do
ssh -i /Users/chandank/chitra-training-march/id_rsa -oStrictHostKeyChecking=no root@$i apt update -y
ssh -i /Users/chandank/chitra-training-march/id_rsa -oStrictHostKeyChecking=no root@$i apt install apt-transport-https ca-certificates curl software-properties-common  python -y
ssh -i /Users/chandank/chitra-training-march/id_rsa -oStrictHostKeyChecking=no root@$i apt update -y
ssh -i /Users/chandank/chitra-training-march/id_rsa -oStrictHostKeyChecking=no root@$i snap install docker
done
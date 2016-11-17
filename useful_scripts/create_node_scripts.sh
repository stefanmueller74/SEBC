echo "ssh -i sm74.pem "$1"."$2 > n1.sh
echo "ssh -i sm74.pem "$1"."$3 > n2.sh
echo "ssh -i sm74.pem "$1"."$4 > n3.sh
echo "ssh -i sm74.pem "$1"."$5 > n4.sh
echo "ssh -i sm74.pem "$1"."$6 > n5.sh
###::::::::::::::
echo "ssh -i sm74.pem  "$1"."$2' $1' > e1.sh
echo "ssh -i sm74.pem  "$1"."$3' $1' > e2.sh
echo "ssh -i sm74.pem  "$1"."$4' $1' > e3.sh
echo "ssh -i sm74.pem  "$1"."$5' $1' > e4.sh
echo "ssh -i sm74.pem  "$1"."$6' $1' > e5.sh
###::::::::::::::
echo 'scp -i sm74.pem $1 '$1"."$2':' > c1.sh
echo 'scp -i sm74.pem $1 '$1"."$3':' > c2.sh
echo 'scp -i sm74.pem $1 '$1"."$4':' > c3.sh
echo 'scp -i sm74.pem $1 '$1"."$5':' > c4.sh
echo 'scp -i sm74.pem $1 '$1"."$6':' > c5.sh

chmod 700 n*.sh
chmod 700 c*.sh
chmod 700 e*.sh


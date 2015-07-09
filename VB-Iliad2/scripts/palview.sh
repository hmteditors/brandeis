# Within HMT VM, run HMT-MOM's palView task:


PALFILE=/vagrant/brandeis/VB-Iliad2/collections/paleography.csv



cd /vagrant/hmt-mom

gradle -Ppaleo=$PALFILE palView


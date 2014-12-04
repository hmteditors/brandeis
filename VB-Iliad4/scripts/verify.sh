
if [ "$#" -ne 1 ]; then
    echo "Usage: sh verify.sh URN"
    exit
fi


echo "Verifying from configuration in /vagrant/brandeis/configs/vm-mom-config.gradle verify"


cd /vagrant/hmt-mom

echo "Cleaning previous HMT MOM results..."
gradle clean

echo Beginning verification for folio $1

gradle -Pfolio=$1 -Pconf=/vagrant/brandeis/configs/vm-mom-config.gradle verify

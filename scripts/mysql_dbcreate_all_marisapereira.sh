#!/usr/bin

# ENVS needed
dbpwd="HilariousQu0t1d1An.1982"
host=$HOSTNAME
dbnameweb="marisapereiraweb"
dbnamedrup="marisapereiradrup"

# This is the first script for the mysql database marisapereiraweb.
#
# The below script creates the DB marisapereiraweb; the admin user for this DB is mpwbadm
#
#
#
#
echo 'This script will connect the mysql instance available at: $host and create the following DBs...'
echo ''
echo '$dbnameweb'
echo '$dbnamedrup'
echo ''
echo 'With the appropriate adm users...'
echo ''
sleep 1
echo 'Would you like to continue?'
read reply1

case reply1 in
  
  'Yes'|'YEs'|YES'|'Y'|'yES'|'yEs'|'yes')
      echo 'Logging into DB $host'
      mysql -u root -p$dbpwd
      CREATE DATABASE marisapereiraweb;
      CREATE DATABASE marisapereiradrup;
      CREATE USER 'mpwbadm'@'%' IDENTIFIED BY 'HilariousQu0t1d1An.1982';
      GRANT ALL PRIVILEGES ON marisapereiraweb.* TO 'mpwbadm'@'%';
      CREATE USER 'mpdrupadm'@'%' IDENTIFIED BY 'HilariousQu0t1d1An.1982';
      GRANT ALL PRIVILEGES ON marisapereiradrup.* TO 'mpdrupadm'@'%';
      FLUSH PRIVILEGES;
      exit;
      ;;
  'N'|'no'|'No'|'NO'|'nO'|'n')
      echo 'Please make sure that the required databases are in place when starting up this app.'
      ;;
  *)
      echo 'Unknown Option'
      ;;
esac
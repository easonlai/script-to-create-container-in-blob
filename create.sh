filename='containername.txt'
storageaccountname='qooaistore2'
n=1
while read line; do
echo "$n : $line"
az storage container create --account-name $storageaccountname --name $line
n=$((n+1))
done < $filename
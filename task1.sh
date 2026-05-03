id-name-salary-address
101-seyam-25000-dhaka
102-sabik-26000-mymensingh
103-ahsan-27000-comilla
104-sadia-28900-barisal
105-karim-30000-natore
Parse.sh

echo "parsing info.txt file"
echo "----------------------"
while IFS='-' read -r id name salary address
do
if ["$id" ="id" ]
then
continue
fi
echo "ID: $id"
echo "Name: $name"
echo "salary: $salary"
echo "address: $address"
echo "---------------------"
done <info.txt

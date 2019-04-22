#!bin/bash
function new_voterid()
{
echo -e "\e[0;32mApplication for Inclusion of Name in Electoral Roll for First time Voter\e[0m"
new=0
while [ "$new" -eq 0 ]
do
echo -e "\e[1;33mEnter your First_Name:\e[0m"
read f_name
if [ -z $f_name ]; then
echo -e "\e[1;35mFirst Name cannot be Empty\e[0m"
else
new=1
fi
done
while [ "$new" -eq 1 ]
do
echo -e "\e[1;33mEnter your Last_Name\e[om"
read l_name
if [ -z $l_name ]; then
echo -e "\e[1;35mLast name cannot be Empty\e[0m"
else
new=2
fi
done
while [ "$new" -eq 2 ]
do
echo -e "\e[1;33mEnter your Father_Name\e[0m"
read fa_name
if [ -z $fa_name ]; then
echo -e "\e[1;35mFather name cannot be Empty\e[0m"
else
new=3
fi
done
aadhar()
{
echo -e "\e[1;33mEnter your Aadhar_number\e[0m"
read aadhar_no
if [ `expr length "${aadhar_no}"` != 12 ]; then
echo -e "\e[1;35mAadhar number must be 12 digit\e[0m"
aadhar
fi
}
aadhar

echo -e "\e[1;33mEnter your Date Of Birth(DD-MON-YY)\e[0m"
read DOB
user_date1=2019-04-05
age=$((($(($(date -d $user_date1 '+%s') - $(date -d $DOB  '+%s'))) / 86400)/365))
echo $age
if [ "$age" -lt 18 ]; then
echo -e "\e[0;33myou are not eligible to vote\e[0m "
elif [ "$age" -gt 60 ]; then
echo -e "\e[0;33myou are not eligible to vote\e[0m "
else
echo -e "\e[0;33myou are eligible to vote\e[0m"
fi

echo -e "\e[1;33mGender Of Applicant\e[0m"
echo -e "\e[1;32m1--Female\e[0m"
echo -e "\e[1;32m2--Male\e[0m"
echo -e "\e[1;32m3--Others\e[0m"
read ge
if [ $ge == 1 ]; then
gender="F"
elif [ $ge == 2 ]; then
gender="M"
elif [ $ge == 3 ]; then
gender="O"
fi
echo -e "\e[1;33mMarital Status\e[0m"
echo -e "\e[1;32m1--Single\e[0m"
echo -e "\e[1;32m2--Married\e[0m"
echo -e "\e[1;32m3--Divorced\e[0m"
read marital
if [ $marital == 1 ]; then
ma="Single"
elif [ $marital == 2 ]; then
ma="Married"
elif [ $marital == 3 ]; then
ma="Divorced"
fi
while [ "$new" -eq 3 ]
do
echo -e "\e[1;33mEnter your House_number\e[0m"
read house_no
if [ -z $house_no ]; then
echo -e "\e[1;35mHouse number cannot be Empty\e[0m"
else
new=4
fi
done
while [ "$new" -eq 4 ]
do
echo -e "\e[1;33mEnter your Street_name\e[0m"
read 'street'
if [ -z $street ]; then
echo -e "\e[1;35mStreet number cannot be Empty\e[0m"
else
new=5
fi
done
while [ "$new" -eq 5 ]
do
echo -e "\e[1;33mEnter your Town/Village\e[0m"
read town
if [ -z $town ]; then
echo -e "\e[1;35mTown cannot be Empty\e[0m"
else
new=6
fi
done
source state.sh



echo -e "\e[1;32mOptional Particulars\e[0m"
echo -e "\e[1;32m********************\e[0m"
echo -e "\e[1;33mDisability (select appropriate option)\e[0m"
echo -e "\e[0;35m1--Visual Impairment\e[0m"
echo -e "\e[0;35m2--Speech and hearing disability\e[0m"
echo -e "\e[0;35m3--Physical disability\e[0m"
echo -e "\e[0;35m4--None\e[0m"
read disability
if [ $disability == 1 ]; then
dis="visual impairment"
elif [ $disability == 2 ]; then
dis="speech and hearing disability"
elif [ $disability == 3 ]; then
dis="physical disability"
elif [ $disability == 4 ]; then
dis="None"
fi

email()
{
echo -e "\e[1;33mEnter Email Id :\e[0m "
read email
if echo "${email}" | grep '^[a-zA-Z0-9]*@[a-zA-Z0-9]*\.[a-zA-Z0-9]*$' >/dev/null; then
echo -e "\e[1;35mEntered Email is valid\e[0m"
else
echo -e "\e[1;32mEntered Email is Invalid\e[0m"
email
fi
}
email
mobile()
{
echo -e "\e[1;33mEnter Mobile Number\e[0m"
read mobileno
if [ `expr length "${mobileno}"` != 10 ]; then
echo -e "\e[1;35mMobile Number must be 10 digit\e[0m"
mobile
fi
}
mobile
echo -e "\e[1;33mDeclaration\e[0m"
echo -e "\e[0;32mI hereby declare that to the best of knowledge and belief:\e[0m"
echo -e "\e[0;32mi-- I am a Citizen of India and Place of my Birth is :\e[0m"
echo -e "\e[0;32mii--I have not applied for the inclusion of my name in the electoral roll for any other constituency.\e[0m"
echo -e "\e[0;32miv--My name has not already been included in the electoral roll for this or any other assembly/ parliamentary constituency.\e[0m"
echo -e "\e[0;32mPlace\e[0m"
read place
echo -n -e "\e[1;33mEnter the Date (DD-MON-YYYY) :\e[0m"
read date
echo -e "\e[0;35m1--submit\e[0m"
echo -e "\e[0;35m2--clear\e[0m"
read onlinereg
if [ $onlinereg == 1 ]; then
. .TRAINenv
sqlplus -s nusr13/nusr13<<end
SET SERVEROUTPUT ON
SET FEEDBACK OFF
SET VERIFY OFF
exec apply_voterid_package.application_voterid('$f_name','$l_name','$fa_name',$aadhar_no,'$DOB','$gender','$ma',$house_no,'$street','$town','$dt','$st','$co','$dis','$email',$mobileno,'NA');
end
elif [ $onlinereg == 2 ]; then
echo -e "\e[1;33mThe enterted details are cleared\e[0m"
fi
clear

}

function declaration()
{
echo -e "\e[1;33mTown/Village\e[0m"
read town

}

new_voterid

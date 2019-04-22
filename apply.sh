function new_voterid()
{
echo " Application for Inclusion of Name in Electoral Roll for First time Voter "
--state
--dist
echo  "Enter your First_Name:"
read f_name
if [ -z $f_name ]; then
echo  "First Name cannot be Empty"
fi
echo "Enter your Last_Name"
read l_name
if [ -z $l_name ]; then
echo "Last name cannot be Empty"
fi
echo "Enter your Father_Name"
read fa_name
if [ -z $fa_name ]; then
echo "Father name cannot be Empty"
fi
echo "Enter your Aadhar_number"
read aadhar_no
if [ -z $aadhar_no ]; then
echo "Aadhar number cannot be Empty"
fi

echo "Enter your Date Of Birth"
read DOB

echo "Gender Of Applicant"
echo "1--Female"
echo "2--Male"
echo "3--Others"
read gender
if [ $gender == 1 ]; then
fe="F"
elif [ $gender == 2 ]; then
ma="M"
elif [ $gender == 3 ]; then
ot="O"
fi
echo "Marital Status"
echo "1--Single"
echo "2--Married"
echo "3--Divorced"
read marital
if [ $marital == 1 ]; then
si="Single"
elif [ $marital == 2 ]; then
ma="Married"
elif [ $marital == 3 ]; then
div="Divorced"
fi

echo "Enter your House_number"
read house_no
if [ -z $house_no ]; then
echo "House number cannot be Empty"
fi
echo "Enter your Street_name"
read street
if [ -z $street ]; then
echo "Street number cannot be Empty"
fi
echo "Enter your Town/Village"
read town
if [ -z $town ]; then
echo "Town cannot be Empty"
fi
echo "Enter your District"
read district
if [ -z $district ]; then
echo "District cannot be Empty"
fi
echo "Enter your State"
read state
if [ -z $state ]; then
echo "State cannot be Empty"
fi



echo "Optional Particulars"
echo "********************"
echo "Disability (select appropriate option)"
echo "1--Visual Impairment"
echo "2--Speech and hearing disability"
echo "3--Physical disability"
echo "4--None"
read disability
if [ $disability == 1 ]; then
vis="visual impairment"
elif [ $disability == 2 ]; then
sh="speech and hearing disability"
elif [ $disability == 3 ]; then
pd="physical disability"
elif [ $disability == 4 ]; then
non="None"
fi


echo "Enter Email Id"
read email
echo "Enter Mobile Number"
read mobileno
echo "declaration"
echo "i hereby declare that to the best of knowledge and belief:"
echo "i-- i am a citizen of india and place of my birth is:"
#declaration
echo "ii--i have not applied for the inclusion of my name in the electoral roll for any other constituency."
echo "iv--My name has not already been included in the electoral roll for this or any other assembly/ parliamentary constituency."
echo "Place"
read place
echo "Enter the date"
read date
echo "1--submit"
echo "2--clear"
read onlinereg
if [ $onlinereg == 1 ]; then
echo "online registration is successful"
elif [ $onlinereg == 2 ]; then
echo "The enterted details are cleared"
fi
}

function declaration()
{
echo "Town/Village"
read town
--state
--distict
}

new_voterid 

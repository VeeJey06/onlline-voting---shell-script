#!bin/bash    
function header()
{
clear
echo
echo
echo -e "                                                              \e[0;32mWelcome to\e[0m"
echo "             "
echo -e "                                                 \e[0;32m Centralized Online Voting Application \e[0m"
echo -e "                                                \e[0;32mRecognised by Election Commission of India \e[0m"
echo -e "                                                \e[0;32m******************************************* \e[0m"
echo ""
echo -e "\e[1;36m_____________________________________________________________________________________________________________________________________________________________ \e[0m"
echo -e " \e[1;35mCommissioner :  $nam                                                                                                  Location $loc \e[0m"
}
function election_commission_home()
{
header
echo 
echo -e "		\e[0;33m1 -- Voters Details\e[0m"
echo -e "		\e[0;33m2 -- Approved Voters Applications\e[0m"
echo -e "		\e[0;33m3 -- Pending Voters Applications\e[0m"
echo -e "		\e[0;33m------------------------------------------------------------\e[0m"
echo -e "		\e[0;33m4 -- Pending Candidates Approval\e[0m"
echo -e "		\e[0;33m5 -- nominated candidates list\e[0m"
echo -e "               \e[0;33m6 -- Rejection Report\e[0m"
echo "	"
echo -e "		\e[0;31m0 -- logout\e[0m"
echo -n -e "\e[1;33mEnter your Desired option :\e[0m"
read ec
if [ $ec == 1 ]; then
. .TRAINenv
sqlplus -s nusr13/nusr13 <<EOF
SET SERVEROUTPUT ON
SET FEEDBACK OFF
SET LINES 500
SET NUMWIDTH 15
column application_id format a3
select application_id AS App_Id, first_name, last_name, aadhar_card, father_name AS "C/O", date_birth AS DOB, gender, constituency, voter_id from voters_details where district like '$loc'
/
EOF

echo -e "\e[1;33m0 -- home\e[0m"
echo -n -e "\e[1;33mchoose Your desired option :\e[0m"
read op
if [ $op == 0 ]; then
clear
election_commission_home
fi

elif [ $ec == 2 ]; then
. .TRAINenv
sqlplus -s nusr13/nusr13 <<EOF
SET SERVEROUTPUT ON
SET FEEDBACK OFF
SET LINES 500
SET NUMWIDTH 15
column application_id format a3
select application_id AS App_Id, first_name, last_name, aadhar_card, father_name AS "C/O", date_birth AS DOB, gender, constituency, voter_id from voters_details where district like '$loc' and status = 'NA'
/
EOF

echo -e "\e[1;33m0 -- home\e[0m"
echo -n -e "\e[1;33mchoose Your desired option :\e[0m"
read op
if [ $op == 0 ]; then
clear
election_commission_home
fi

elif [ $ec == 3 ]; then
. .TRAINenv
sqlplus -s nusr13/nusr13 <<EOF
SET SERVEROUTPUT ON
SET FEEDBACK OFF
SET LINES 500
SET NUMWIDTH 15
column application_id format a3
select application_id AS App_Id, first_name, last_name, aadhar_card, father_name AS "C/O", date_birth AS DOB, gender, constituency, voter_id from voters_details where district like '$loc' and status = 'NA'
/
EOF

echo -e "\e[1;33mEnter the application id followed by A to approve (ex : 41A)\e[0m"
echo -e "				\e[1;35mOR\e[0m"
echo -e "\e[1;33mEnter the application id followed by R to approve (ex : 41R)\e[0m"
echo -e "\e[1;33m0 -- home\e[0m"
echo -n -e "\e[1;33mchoose Your desired option :\e[0m"
read op
if [ $op == 0 ]; then
clear
election_commission_home
else
echo "Comments (if required)"
read com
. .TRAINenv
sqlplus -s nusr13/nusr13 <<EOF
SET SERVEROUTPUT ON
SET FEEDBACK OFF
SET LINES 500
SET NUMWIDTH 15
begin
pkg_comm_login.Approval_procedure('$op','$com');
end;
/
EOF
fi
sleep 2
clear
election_commission_home
elif [ $ec == 4 ]; then
. .TRAINenv
sqlplus -s nusr13/nusr13 <<EOF
SET SERVEROUTPUT ON
SET FEEDBACK OFF
SET LINES 500
SET NUMWIDTH 15
column application_id format a3
select candidate_id , first_name, last_name, aadhar_card_number, party_name AS "Party", date_of_birth AS DOB, gender, constituency, ticket_number from candidate_reg_details where district like '$loc' and status = 'NA'
/
EOF


echo -e "\e[1;33mEnter the candidate id followed by A to approve (ex : 41A)\e[0m"
echo -e "                        \e[1;33mOR\e[0m"
echo -e "\e[1;33mEnter the candidate id followed by R to approve (ex : 41R)\e[0m"
echo -e "\e[1;33m0 -- home\e[0m"
echo -n -e "\e[1;33mchoose Your desired option :\e[0m"
read op
if [ $op == 0 ]; then
clear
election_commission_home
else
. .TRAINenv
sqlplus -s nusr13/nusr13 <<EOF
SET SERVEROUTPUT ON
SET FEEDBACK OFF
SET LINES 500
exec pkg_comm_login.cand_Approval_procedure('$op','$comment')
/
EOF
fi
sleep 2
clear
election_commission_home
elif [ $ec == 5 ]; then
. .TRAINenv
sqlplus -s nusr13/nusr13 <<EOF
SET SERVEROUTPUT ON
SET FEEDBACK OFF
SET LINES 500
SET NUMWIDTH 15
column application_id format a3
select candidate_id , first_name, last_name, aadhar_card_number, party_name AS "Party", date_of_birth AS DOB, gender, constituency, ticket_number from candidate_reg_details where district like '$loc' and status = 'A'
/
EOF
function opt()
{
echo -e "\e[1;33m0 -- home\e[0m"
read op
if [ $op == 0 ]; then
election_commission_home
else
echo -e "\e[1;33mInvalid option\e[0m"
opt
fi
}
opt
elif [ $ec == 6 ]; then
echo "1 -- Voters rejection Report"
echo "2 Candidate rejection Report"
echo -n "Enter your option : "
read a
if [ $a == 1 ]; then
voc='voter'
else
voc='cand'
fi
. .TRAINenv
sqlplus -s nusr13/nusr13 <<EOF
SET SERVEROUTPUT ON
SET FEEDBACK OFF
SET LINES 500
SET NUMWIDTH 15
column application_id format a3
select application_id , first_name, last_name, aadhar_card_number, party_name AS "Party",constituency, ticket_no, comment from report where district like '$loc' and CANDIDATE_VOTERS = '$voc';
/
EOF
echo "0 -- home"
re


elif [ $ec == 0 ]; then
. .TRAINenv
ret=$(sqlplus -s nusr13/nusr13 <<eos
SET SERVEROUTPUT ON
SET FEEDBACK OFF
set verify off
exec dbms_output.put_line(pkg_comm_login.logout($aadhar));
exit
eos)
if [ "$ret" == 1 ]; then
clear 
header
echo
echo
echo
echo -e "							\e[0;32mLogged out successfully...\e[0m"
sleep 3
clear
exit
fi

else
echo -e "\e[0;31minvalid Option/..!\e[0m"
clear
election_commission_home
fi
}

clear
election_commissioner_login()
{
echo -e "\e[1;32mELECTION COMMISSIONER LOGIN..!\e[0m "
echo -e "\e[1;33mEnter Your Aadhar Card Number :\e[0m"
}
election_commissioner_login
read aadhar
if [ -z $aadhar ];then
echo -e "\e[1;35maadhar cannot be null !\e[0m "
election_commissioner_login
fi
echo -e "\e[1;35mEnter your password:\e[0m "
read  -s pass
if [ -z $pass ];then
echo -e "\e[1;35mpassword cannot be null !\e[0m "
election_commissioner_login
fi
. .TRAINenv
return=$(sqlplus -s nusr13/nusr13<<end
SET SERVEROUTPUT ON
SET FEEDBACK OFF
SET VERIFY OFF
exec dbms_output.put_line(pkg_comm_login.valdate_commissioner($aadhar,'$pass'));
exit;
end)

if [ "$return" == 0 ]; then
. .TRAINenv
loc=$(sqlplus -s nusr13/nusr13 <<EOF
SET SERVEROUTPUT ON
set feedback off
set verify off
DECLARE
l_conc VARCHAR2(50);
BEGIN
SELECT district
INTO l_conc
FROM election_comm_details
WHERE aadhar_card = $aadhar;
DBMS_OUTPUT.PUT_LINE(l_conc);
END;
/
EOF)

nam=$(sqlplus -s nusr13/nusr13 <<EOF
SET SERVEROUTPUT ON
set feedback off
set verify off
DECLARE
l_nam VARCHAR2(50);
f_nam VARCHAR2(50);
BEGIN
SELECT First_name, Last_name
INTO f_nam, l_nam
FROM election_comm_details
WHERE aadhar_card = $aadhar;
DBMS_OUTPUT.PUT_LINE(f_nam || ' ' || l_nam);
END;
/
EOF)
election_commission_home

elif [ "$return" == 1 ]; then
echo -e "\e[0;32mInvalid Credentials..!\e[0m"
sleep 2
clear

else
header 
echo
echo
echo
echo
echo
echo
echo "								Your last session not logged out"
ScriptLoc=$(readlink -f "$0")
sh "$ScriptLoc"
fi

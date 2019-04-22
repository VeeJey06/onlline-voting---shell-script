
function HelpDesk()
{
clear
echo  "Any Queries Kindly Inform"
echo  "1--Complain/Feedback"
read  help

if [ $help == 1 ]; then
echo "Press 1 to complain..."
echo "press 2 to write feedback..."
read cm
if [ $cm == 1 ]; then
echo "Enter your complain"
read com
. .TRAINenv
sqlplus -s nusr13/nusr13 <<end
set serveroutput on
set verify off
set feedback off
exec fb_details_package.fb_entry_details('$com','C');
exit;
end
echo
echo
echo "                                       YOU HAVE SUBMITTED YOUR COMPLAIN SUCCESSFULLY..."
sleep 3

elif [ $cm == 2 ]; then
echo "Enter your feedback"
read fback
. .TRAINenv
sqlplus -s nusr13/nusr13 <<end
set serveroutput on
set verify off
set feedback off
exec fb_details_package.fb_entry_details('$fback','F');
exit;
end
echo
echo
echo "                                     YOU HAVE SUBMITTED YOUR FEEDBACK SUCCESSFULLY..."
sleep 3

fi
fi

}
HelpDesk

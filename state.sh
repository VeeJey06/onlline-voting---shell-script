function AP()
{
eval "$1='Andhra pradesh'"

echo "1) Anantapur"
echo "2) Chittoor"
echo "3) Guntur"
echo "4) Kadapa"
echo "5) Krishna"
echo "6) Kurnool"
echo "7) Nellore"
echo "8) Prakasam"
echo "9) Srikakulam"
echo -e "\e[0;35mEnter your constituency\e[0m"
read ap1

case "$ap1" in
   1)
eval "$2='Anantapur'"
echo "1 Anantapur Urban"
echo "2 Guntakal"
echo "3 Kalyandurg"
echo "4 Rayadurg"
echo "5 Singanamala"
echo "6 Tadpatri"
echo "7 Uravakonda"
read cons
case "$cons" in
  1) eval "$3='Anantapur Urban'"
   ;;
  2) eval "$3='Guntakal'"
   ;;
   3) eval "$3='Kalyandurg'"
   ;;
   4) eval "$3='Rayadurg'"
   ;;
   5) eval "$3='Singanamala'"
   ;;
        6) eval "$3='Tadpatri'"
;;
        7) eval "$3='Uravakonda'"

esac


   ;;
    2)          eval "$2='chittoor'"
                echo "1 Thamballapalle"
                echo "1 Pileru "
                echo "2 Madanapalle"
                echo "3 Punganur"
                echo "4 Chandragiri"
                echo "5 Tirupati"
                echo "6 Srikalahasti"
                echo "7 Satyavedu"
read cons
case "$cons" in
  1)  eval "$3='Thamballapalle'"
   ;;
  2) eval "$3='Pileru '"
   ;;
   3) eval "$3='Madanapalle'"
   ;;
   4) eval "$3='Punganur'"
;;
        5) eval "$3='Chandragiri'"
;;
        6) eval "$3='Tirupati'"
;;
        7) eval "$3='Srikalahasti'"
;;
        8) eval "$3='satyavedu'"
esac

   ;;
   3)   eval "$2='Guntur'"
        	echo "1 Bapatla"
                echo "2 Chilakaluripet"
                echo "3 Guntur East "
                echo "4 Guntur West "
                echo "5 Gurazala"
                echo "6 Macherla "
                echo "7 Mangalagiri"
read cons
case "$cons" in
  1) eval "$3='Chilakaluripet'"
   ;;
  2) eval "$3='Guntur East'"
   ;;
   3) eval "$3='Bapatla'"
   ;;
   4) eval "$3='Guntur West '"
;;
        5) eval "$3='gurazala'"
;;
        6) eval "$3='macherla'"
;;
        7) eval "$3='mangalagiri'"

esac
   ;;
   4)           eval "$2='Kadapa' "
                echo "1 Badvel"
                echo "2 Rajampeta"
                echo "3 Kadapa"
                echo "4 Railway Koduru"
                echo "5 Rayachoti"
                echo "6 Pulivendula"
                echo "7 Kamalapuram"
read cons
case "$cons" in
  1) eval "$3='Badvel'"
   ;;
  2) eval "$3='Rajampeta'"
   ;;
   3) eval "$3='Kadapa'"
   ;;
   4) eval "$3='Railway Koduru '"
;;
        5) eval "$3='Rayachoti'"
;;
        6) eval "$3='Pulivendula'"
;;
        7) eval "$3='Kamalapuram'"

esac
	;;
   5)           eval "$2='krishna'"
                echo "1 Nuzvid"
                echo "2 Gannavaram"
                echo "3 Gudivada"
                echo "4 Kaikalur"
                echo "5 Pedana"
                echo "6 Machilipatnam"
                echo "7 Avanigadda"
read cons
case "$cons" in
  1) eval "$3='Nuzvid'"
   ;;
  2) eval "$3='Gannavaram'"
   ;;
   3) eval "$3='Gudivada'"
   ;;
   4) eval "$3='Kaikalur'"
   ;;
   5) eval "$3='pedana'"
   ;;
        6) eval "$3='Machilipatnam'"
;;
        7) eval "$3='Avanigadda'"

esac
   ;;
   6)            eval "$2='Kurnool'"
                echo "1 Srisailam"
                echo "2 Nandikotkur"
                echo "3 Kurnool"
                echo "4 Panyam"
                echo "5 Nandyal"
                echo "6 Banaganapalle"
                echo "7 Dhone"
read cons
case "$cons" in
  1) eval "$3='Srisailam'"
   ;;
  2) eval "$3='Nandikotkur'"
   ;;
   3) eval "$3='Kurnool'"
   ;;
   4) eval "$3='Panyam'"
   ;;
   5) eval "$3='Nandyal'"
   ;;
        6) eval "$3='Banaganapalli'"
;;
        7) eval "$3='Dhone'"

esac
   ;;
   7)   echo "1 Atmakur"
                echo "2 Kovur"
                echo "3 Nellore City"
                echo "4 Nellore Rural"
                echo "5 Sarvepalli"
                echo "6  Gudur "
                echo "7 Sullurpeta"
                 eval "$2='nellore'"
read cons
case "$cons" in
  1) eval "$3='Atmakur'"
   ;;
  2) eval "$3='Kovur'"
   ;;
   3) eval "$3='Nellore City'"
   ;;
   4) eval "$3='Nellore Rural'"
   ;;
   5) eval "$3='Sarvepalli'"
   ;;
        6) eval "$3='Gudur'"
;;
        7) eval "$3='Sullurpeta'"

esac
   ;;
   8)   echo "1 Darsi"
                echo "2 Parchur"
                echo "3 Addanki"
                echo "4 Chirala"
                echo "5 Santhanuthalapadu"
                echo "6 Ongole"
                echo "7 Kandukur"
                 eval "$2='prakasham'"
read cons
case "$cons" in
  1) eval "$3='Darsi'"
   ;;
  2) eval "$3='Parchur"
   ;;
   3) eval "$3='Addanki'"
   ;;
   4) eval "$3='Chirala'"
   ;;
   5) eval "$3='Santhanuthalapadu'"
   ;;
        6) eval "$3='Ongole'"
;;
        7) eval "$3='Kandukur'"

esac
   ;;
   9)   echo "1 Ichchapuram"
                echo "2 palasa"
                echo "3 Tekkali"
                echo "4 Pathapatnam"
                echo "5 Srikakulam"
                echo "6 Amadalavalasa"
                echo "7 Etcherla"
                 eval "$2='srikakulam'"
read cons
case "$cons" in
  1) eval "$3='Ichchapuram'"
   ;;
  2) eval "$3='Palasa'"
   ;;
   3) eval "$3='Tekkali'"
   ;;
   4) eval "$3='Pathapatnam'"
   ;;
   5) eval "$3='Srikakulam'"
   ;;
        6) eval "$3='Amadalavalasa'"
;;
        7) eval "$3='Etcherla'"

esac
   esac
}

function KL()
{
 eval "$1='kerala'"
echo " 1)Thiruvananthapuram "
echo "2)Kollam"
echo "3)Alappuzha"
echo "4)Idukki"
echo "5)Ernakulam"
echo "6)Thrissur"
echo "7)Kozhikode"
echo "8)Wayanad"
echo "9)Kasaragod"
echo -e "\e[0;35mEnter your constituency\e[0m"
read kl1
case "$kl1" in
   1)   echo "1 Attingal"
                echo "2 Chirayinkeezhu"
                echo "3 Nedumangad"
                echo "4 Vamanapuram"
                echo "5 Kazhakoottam"
                echo "6 Vattiyoorkavu"
                echo "7 Thiruvananthapuram"
              eval "$2='Thiruvananthapuram '"
read cons
case "$cons" in
  1) eval "$3='Attingal'"
   ;;
  2) eval "$3='Chirayinkeezhu'"
   ;;
   3) eval "$3='Nedumangad'"
   ;;
   4) eval "$3='vamanapuram'"
   ;;
   5) eval "$3='Kazhakootam'"
   ;;
        6) eval "$3='Vattiyoorkavu'"
;;
        7) eval "$3='Thiruvananthapuram'"

esac
   ;;
  2)    echo "1 Chavara "
                echo "2 Kunnathur"
                echo "3 Kottarakkara"
                echo "4 Pathanapuram"
                echo "5 Punaloor"
                echo "6 Chadayamangalam"
                echo "7 Kundara"
                 eval "$2='Kollam'"

read cons
case "$cons" in
  1) eval "$3='chavara'"
   ;;
  2) eval "$3='Kunnathur'"
   ;;
   3) eval "$3='Kottarakkara'"
   ;;
   4) eval "$3='Pathanapuram'"
   ;;
   5) eval "$3='Punaloor'"
   ;;
        6) eval "$3='Chadayamangalam'"
;;
        7) eval "$3='Kundara'"

esac
   ;;
  3)    echo "1 Cherthala"
                echo "2 Alappuzha"
                echo "3 Ambalapuzha"
                echo "4 Kuttanad"
                echo "5 Haripad"
                echo "6 Kayamkulam "
                echo "7 Mavelikkara"
                 eval "$2='Alappuzha'"


read cons
case "$cons" in
  1) eval "$3='Cherthala'"
   ;;
  2) eval "$3='Alappuzha'"
   ;;
   3) eval "$3='Ambalapuzha'"
   ;;
   4) eval "$3='Kuttanad'"
   ;;
   5) eval "$3='Haripad'"
   ;;
        6) eval "$3='Kayamkulam'"
;;
        7) eval "$3='Mavelikkara'"

esac
   ;;
  4)    echo "1 Udumbanchola"
                echo "2 Thodupuzha"
                echo "3 Idukki"
                echo "4 Peerumade"
                echo "5 Pala"
                 eval "$2='Idukki'"

read cons
case "$cons" in
  1) eval "$3='Udumbanchola'"
   ;;
  2) eval "$3='Thodupuzha'"
   ;;
   3) eval "$3='Idukki'"
   ;;
   4) eval "$3='Peerumade'"
   ;;
   5) eval "$3='Pala'"
   
     

esac
   ;;
  5)    echo "1 Paravur"
                echo "2 Vypin"
                echo "3 Ernakulam"
                echo "4 Kochi"
                echo "5 Thrippunithura"
                echo "6 Thrikkakara"
                echo "7 Kalamassery"
                 eval "$2='Ernakulam'"

read cons
case "$cons" in
  1) eval "$3='Paravur'"
   ;;
  2) eval "$3='Vypin'"
   ;;
   3) eval "$3='Ernakulam'"
   ;;
   4) eval "$3='Kochi'"
   ;;
   5) eval "$3='Thrippunithura'"
   ;;
        6) eval "$3='Thrikkakara'"
;;
        7) eval "$3='Kalamassery'"

esac
   ;;
  6)    echo "1 Kunnamkulam"
                echo "2 Guruvayoor"
                echo "3 Manalur"
                echo "4 Wadakkancherry"
                echo "5 Ollur"
                echo "6 Thrissur "
                echo "7 Nattika"
                 eval "$2='Thrissur'"
read cons
case "$cons" in
  1) eval "$3='Kunnamkulam'"
   ;;
  2) eval "$3='Guruvayoor'"
   ;;
   3) eval "$3='Manalur'"
   ;;
   4) eval "$3='Wadakkancherry'"
   ;;
   5) eval "$3='Ollur'"
   ;;
        6) eval "$3='Thrissur'"
;;
        7) eval "$3='Nattika'"

esac
   ;;
  7)    echo "1 Nadapuram"
                echo "2 Quilandy"
                echo "3 Perambra"
                echo "4 Balusseri "
                echo "5 Elathur"
                echo "6 Kozhikode North"
                echo "7 Kozhikode South"
                 eval "$2='Kozhikode'"

read cons
case "$cons" in
  1) eval "$3='Nadapuram'"
   ;;
  2) eval "$3='Quilandy'"
   ;;
   3) eval "$3='Perambra'"
   ;;
   4) eval "$3='Balusseri'"
   ;;
   5) eval "$3='Elathur'"
   ;;
        6) eval "$3='Kozhikode North'"
;;
        7) eval "$3='Kozhikode South'"

esac
   ;;
  8)    echo "1 Sulthanbathery"
                echo "2 Kalpetta"

                 eval "$2='Wayanad'"
read cons
case "$cons" in
  1) eval "$3='Sulthanbathery'"
   ;;
  2) eval "$3='Kalpetta'"
   
esac
   ;;
  9)    echo "1 Manjeswar"
                echo "2 Kasaragod"
                echo "3 Udma"
                echo "4 Kanhangad "
                echo "5 Trikkarpur"
                echo "6 Payyannur"
                echo "7 Kalliaseery"
                 eval "$2='Kasaragod'"
read cons
case "$cons" in
  1) eval "$3='Manjeswar'"
   ;;
  2) eval "$3='Kasaragod'"
   ;;
   3) eval "$3='Udma'"
   ;;
   4) eval "$3='Kanhangad'"
   ;;
   5) eval "$3='Trikkarpur'"
   ;;
        6) eval "$3='Payyannur'"
;;
        7) eval "$3='Kalliaseery'"

esac
esac
}



function TN()
{
 eval "$1='tamil nadu'"
        echo  "1 Ariyalur"
        echo "2 Chennai"
        echo "3 Coimbatore"
        echo "4 Cuddalore"
        echo "5 Dharmapuri"
        echo "6 Dindigul"
        echo "7 Erode"
        echo "8 Kanchipuram"
        echo "9 Kanyakumari"
        echo -e "\e[0;35mEnter your constituency\e[0m"
read tn1
case "$tn1" in
  "1")          echo "1 ARIYALUR"
                echo "2 JAYANKONDAM"
                 eval "$2='Ariyalur'"
 read cons
case "$cons" in
  1) eval "$3='ARIYALUR'"
   ;;
  2) eval "$3='JAYANKONDAM'"

esac
   ;;
  "2")          echo   "1 ANNA NAGAR"
                echo "2 CHEPAUK-THIRUVALLIKENI"
                echo "3 EGMORE"
                echo "4 HARBOUR"
                echo "5 KOLATHUR"
                echo "6 MYLAPORE"
                echo "7 PERAMBUR"
                echo "8 ROYAPURAM"
                echo "9 SAIDAPET"
                 eval "$2='Chennai'"
read cons
case "$cons" in
  1) eval "$3='ANNA NAGAR'"
   ;;
  2) eval "$3='CHEPAUK-THIRUVALLIKENI'"
   ;;
   3) eval "$3='EGMORE'"
   ;;
   4) eval "$3='HARBOUR'"
   ;;
   5) eval "$3='KOLATHUR'"
   ;;
        6) eval "$3='MYLAPORE'"
;;
        7) eval "$3='PERAMBUR'"
;;
	8) eval "$3='ROYAPURAM'"
;;
	9) eval "$3='SAIDAPET'"

esac
   ;;
  "3")          echo "1 KAVUNDAMPALAYAM"
                echo "2 KINATHUKADAVU"
                echo "3 METTUPPALAYAM"
                echo "4 POLLACHI"
                 eval "$2='Coimbatore'"
read cons
case "$cons" in
  1) eval "$3='KAVUNDAMPALAYAM'"
   ;;
  2) eval "$3='KINATHUKADAVU'"
   ;;
   3) eval "$3='METTUPPALAYAM'"
   ;;
   4) eval "$3='POLLACHI'"

esac
   ;;
  "4")          echo "1 BHUVANAGIRI"
                echo "2 CHIDAMBARAM"
                echo "3 CUDDALORE"
                echo "4 KATTUMANNARKOIL"
                eval "$2='Cuddalore'"
read cons
case "$cons" in
  1) eval "$3='BHUVANAGIRI'"
   ;;
  2) eval "$3='CHIDAMBARAM'"
   ;;
   3) eval "$3='CUDDALORE'"
   ;;
   4) eval "$3='KATTUMANNARKOIL'"

esac
   ;;
  "5")          echo "1 DHARMAPURI"
                echo "2 HARUR"
                echo "3 PALACODU"
               eval "$2='Dharmapuri'"

read cons
case "$cons" in
  1) eval "$3='DHARMAPURI'"
   ;;
  2) eval "$3='HARUR'"
   ;;
   3) eval "$3='PALACODU'"
   
esac
   ;;
 "6")           echo "1 ATHOOR"
                echo "2 DINDIGUL"
                echo "3 NATHAM"
                echo "4 NILAKKOTTAI"
                 eval "$2='Dindigul'"
read cons
case "$cons" in
  1) eval "$3='ATHOOR'"
   ;;
  2) eval "$3='DINDIGUL'"
   ;;
   3) eval "$3='NATHAM'"
   ;;
   4) eval "$3='NILAKKOTTAI'"

esac
   ;;
 "7")           echo "1 ANTHIYUR"
                echo "2 BHAVANI"
                echo "3 BHAVANISAGAR"
                echo "4 ERODE-EAST"
            eval "$2='Erode'"
read cons
case "$cons" in
  1) eval "$3='ANTHIYUR'"
   ;;
  2) eval "$3='BHAVANI'"
   ;;
   3) eval "$3='BHAVANISAGAR'"
   ;;
   4) eval "$3='ERODE-EAST'"
  
esac
   ;;
 "8")           echo "1 ALANDUR"
                echo "2 CHENGALPATTU"
                echo "3 CHEYYUR"
                 eval "$2='Kanchipuram'"

read cons
case "$cons" in
  1) eval "$3='ALANDUR'"
   ;;
  2) eval "$3='CHENGALPATTU'"
   ;;
   3) eval "$3='CHEYYUR'"

esac
   ;;
 "9")           echo "1 COLACHAL"
                echo "2 KANNIYAKUMARI"
                echo "3 KILLIYOOR"
          eval "$2='Kanyakumari'"
read cons
case "$cons" in
  1) eval "$3='COLACHAL'"
   ;;
  2) eval "$3='KANNIYAKUMARI'"
   ;;
   3) eval "$3='KILLIYOOR'"

esac
  
esac
}




function KA()
{
eval "$1='karnataka'"
echo "1 Bengaluru Urban "
echo "2 Bagalkot "
echo "3 Bellary "
echo "4 Chamarajanagar"
echo "5 Bengaluru Rural"
echo "6 Belgaum "
echo -e "\e[0;35menter your constituency\e[0m"
read ka1
case "$ka1" in
    1)      echo "1 Anekal"
               echo "2 Bangalore South"
               echo "3 Byatarayanapura"
               echo "4 Dasarahalli"
                eval "$2='Bengaluru Urban'"
read cons
case "$cons" in
  1) eval "$3='Anekal'"
   ;;
  2) eval "$3='Bangalore South'"
   ;;
   3) eval "$3='Byatarayanapura'"
   ;;
   4) eval "$3='Dasarahalli'"
   
esac
   ;;
     2)     echo "1 Badami"
               echo "2 Bagalkot"
               echo "3 Bilgi"
               echo "4 Hungund"
               eval "$2='Bagalkot' "
   read cons
case "$cons" in
  1) eval "$3='Badami'"
   ;;
  2) eval "$3='Bagalkot'"
   ;;
   3) eval "$3='Bilgi'"
   ;;
   4) eval "$3='Hungund'"

esac
   ;;
     3)     echo "1 Bellary"
               echo "2 Hadali"
               echo "3 Kamtli"
               echo "4 Kudligi"
               eval "$2='Bellary '"
read cons
case "$cons" in
  1) eval "$3='Bellary'"
   ;;
  2) eval "$3='Hadali'"
   ;;
   3) eval "$3='Kamtli'"
   ;;
   4) eval "$3='Kudligi'"

esac
   ;;
     4)    echo "1 Chamarajanagar"
               echo "2 Gundlupet"
               echo "3 Hanur"
               echo "4 Kollegal"
                 eval "$2='Chamarajanagar'"
read cons
case "$cons" in
  1) eval "$3='Chamarajanagar'"
   ;;
  2) eval "$3='Gundlupet'"
   ;;
   3) eval "$3='Hanur'"
   ;;
   4) eval "$3='kollegal'"
   
esac
   ;;
      5)   echo "1 Devanahalli"
               echo "2 Doddaballapur"
               echo "3 Hosakote"
               echo "4 Nelamangala"
         eval "$2='Bengaluru Rural'"
   read cons
case "$cons" in
  1) eval "$3='Devanahalli'"
   ;;
  2) eval "$3='Doddaballapur'"
   ;;
   3) eval "$3='Hosakote'"
   ;;
   4) eval "$3='Nelamangala'"
   
esac
   ;;
      6)   echo "1 Arabhavi"
           echo "2 Athani"
           echo "3 Bailahongal"
         eval "$2='Belgaum'"
read cons
case "$cons" in
  1) eval "$3='Arabhavi'"
   ;;
  2) eval "$3='Athani'"
   ;;
   3) eval "$3='Bailahongal'"
   
esac
esac
}

echo -n -e "\e[0;36mChoose your state\e[0m"
echo
echo "1)ANDHRA PRADESH"
echo "2)KERALA"
echo "3)TAMIL NADU"
echo "4)KARNATAKA"
read con
st=''
dt=''
co=''
case "$con" in
  1) AP st dt co
   ;;
  2) KL st dt co
   ;;
   3) TN st dt co
   ;;
   4) KA st dt co
esac



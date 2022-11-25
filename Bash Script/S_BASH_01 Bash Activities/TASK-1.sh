/usr/bin/env bash

echo "          _____                    _____                    _____          
         /\    \                  /\    \                  /\    \         
        /::\____\                /::\    \                /::\    \        
       /::::|   |               /::::\    \              /::::\    \       
      /:::::|   |              /::::::\    \            /::::::\    \      
     /::::::|   |             /:::/\:::\    \          /:::/\:::\    \     
    /:::/|::|   |            /:::/__\:::\    \        /:::/  \:::\    \    
   /:::/ |::|   |           /::::\   \:::\    \      /:::/    \:::\    \   
  /:::/  |::|___|______    /::::::\   \:::\    \    /:::/    / \:::\    \  
 /:::/   |::::::::\    \  /:::/\:::\   \:::\    \  /:::/    /   \:::\    \ 
/:::/    |:::::::::\____\/:::/  \:::\   \:::\____\/:::/____/     \:::\____\
\::/    / ~~~~~/:::/    /\::/    \:::\  /:::/    /\:::\    \      \::/    /
 \/____/      /:::/    /  \/____/ \:::\/:::/    /  \:::\    \      \/____/ 
             /:::/    /            \::::::/    /    \:::\    \             
            /:::/    /              \::::/    /      \:::\    \            
           /:::/    /               /:::/    /        \:::\    \           
          /:::/    /               /:::/    /          \:::\    \          
         /:::/    /               /:::/    /            \:::\    \         
        /:::/    /               /:::/    /              \:::\____\        
        \::/    /                \::/    /                \::/    /        
         \/____/                  \/____/                  \/____/          "

YEAR=$(date +%Y)
MONTH=$(date +%m)
DAY=$(date +%d)
HOUR=$(date +%k)

mkdir -p ~/$YEAR
#--------------------------------------------------------------------------
for i in {1..12};
do
        mkdir ~/$YEAR/$i
done
#---------------------------------------------------------------------------
#[ -e FILE ] True if FILE exists.
if [ ! -e ~/$YEAR/$MONTH/$DAY.xls ]
        then
               touch ~/$YEAR/$MONTH/$DAY.xls
        fi

mkdir ~/Backups
#----------------------------------------------------------------------------
if [ $HOUR -lt 5 ] || [ $HOUR -eq 0 ]
then
        cp  ~/$YEAR/$MONTH/$DAY.xls ~/Backups/"$YEAR-$MONTH-$DAY.xls"
else
        echo "Backup Failed"
fi                        

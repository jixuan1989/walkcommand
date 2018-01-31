base_dir=$(cd "$(dirname "$0")";pwd)
for dir in `ls $1`
 do
   if [ -d "$1/$dir" ]
   then
     echo $1/$dir
     cd $1/$dir
     $2
     cd $base_dir
   fi
done 

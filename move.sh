for x in $(sudo find ~ -name "*.git"  -type d); do
  cd $x;cd ..;
  remoteip=`git remote -v | grep 'https://github.com/[jJ]effsan[cC]/' `;
  remoteip=${remoteip/(fetch)*/\ }
  oldip=${remoteip/origin/\ }
  
  if [ ! -z "$oldip" ]; then
	  newip=${oldip//[Jj]effsan[Cc]/wang-chen}
	  pwd
	  echo $oldip'===>'$newip
	  echo
	  git remote remove origin
	  git remote add origin $newip
  fi
  
done
echo "Done!!!"
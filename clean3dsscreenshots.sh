#! /bin/ksh93

for file in scr_*_BOTTOM.png; do
	export TESTVAR=$(md5sum "$file" | awk '{ print $1 }')
# scene skip/auto button screen
	if [ "$TESTVAR" = "eb17a80307dac841448998a8446932a5" ]; then
		rm "$file"
	fi
#	echo "$TESTVAR"
done

for file in scr_*_TOP_*.png; do
#	"homebrew" screen
	export TESTVAR=$(md5sum "$file" | awk '{ print $1 }')
	if [ "$TESTVAR" = "bf4b4c58ca10ef5e241807ae568a40e0" ]; then
		rm "$file"
  fi
done

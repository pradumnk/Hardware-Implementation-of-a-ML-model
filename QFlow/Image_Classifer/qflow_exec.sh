#!/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project /home/osboxes/Downloads/QFlow/Image_Classifer
#-------------------------------------------

/usr/local/share/qflow/scripts/synthesize.sh /home/osboxes/Downloads/QFlow/Image_Classifer add_fp_32bit /home/osboxes/Downloads/QFlow/Image_Classifer/source/add_fp_32bit.v || exit 1
# /usr/local/share/qflow/scripts/placement.sh -d /home/osboxes/Downloads/QFlow/Image_Classifer add_fp_32bit || exit 1
# /usr/local/share/qflow/scripts/vesta.sh  /home/osboxes/Downloads/QFlow/Image_Classifer add_fp_32bit || exit 1
# /usr/local/share/qflow/scripts/router.sh /home/osboxes/Downloads/QFlow/Image_Classifer add_fp_32bit || exit 1
# /usr/local/share/qflow/scripts/vesta.sh  -d /home/osboxes/Downloads/QFlow/Image_Classifer add_fp_32bit || exit 1
# /usr/local/share/qflow/scripts/migrate.sh /home/osboxes/Downloads/QFlow/Image_Classifer add_fp_32bit || exit 1
# /usr/local/share/qflow/scripts/drc.sh /home/osboxes/Downloads/QFlow/Image_Classifer add_fp_32bit || exit 1
# /usr/local/share/qflow/scripts/lvs.sh /home/osboxes/Downloads/QFlow/Image_Classifer add_fp_32bit || exit 1
# /usr/local/share/qflow/scripts/gdsii.sh /home/osboxes/Downloads/QFlow/Image_Classifer add_fp_32bit || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh /home/osboxes/Downloads/QFlow/Image_Classifer add_fp_32bit || exit 1
# /usr/local/share/qflow/scripts/display.sh /home/osboxes/Downloads/QFlow/Image_Classifer add_fp_32bit || exit 1

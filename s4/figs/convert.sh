#!/bin/bash
# In The Name Of God
# ========================================
# [] File Name : convert.sh
#
# [] Creation Date : 13-04-2016
#
# [] Created By : Parham Alvani (parham.alvani@gmail.com)
# =======================================
ls *.bmp | xargs -I {} basename {} .bmp | xargs -I {} convert {}.bmp {}.jpg

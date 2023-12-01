#!/bin/bash

#Warna
black="\033[1;30m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
blue="\033[1;34m"
purple="\033[1;35m"
cyan="\033[1;36m"
violate="\033[1;37m"
white="\033[0;37m"
nc="\033[00m"
LRED='\033[01;31m'
LGREEN='\033[01;32m'
LYELLOW='\033[01;33m'
LBLUE='\033[01;34m'
LPURPLE='\033[01;35m'
LCYAN='\033[01;36m'
WHITE='\033[01;37m'
BOLD='\e[100;92m'

#Tetapan Global Bang
creator="Talz666"
namagurukelas="Cikgu Ummi"
namejadual="Jadual 3F"
namemurid="Nama Pelajar"
namekelas="Class 3-Fikir"
infohari="Info Hari"
infomurid="Info Murid"
updated="Update"
tingkatan="${LYELLOW}[${LBLUE}1/2/${red}3${LBLUE}/4/5${LYELLOW}]"
posisikelas="${LYELLOW}[${LBLUE}A/B/C/D/E/${red}F${LBLUE}/G${LYELLOW}]"
totalmurid="${LYELLOW}[${WHITE}26${LYELLOW}]"
extrapelajar="Extra"
pelajarbaru="Tiada"
jumlahpelajar="[0]"
namapelajar="Tiada"
infokelas="Info Kelas"

#Cmd
user=$(whoami)
dates=$(date)
date="${LBLUE}<${LPURPLE}{${LYELLOW}[ ${BOLD}${dates}${nc} ${LYELLOW}]${LPURPLE}}${LBLUE}>"
locate=$(pwd)

#Informasion
loading="${yellow}[${white}=${yellow}] ${red}- ${LYELLOW}"
error="${yellow}[${white}-${yellow}] ${red}- ${LYELLOW}"
info="${yellow}[${white}+${yellow}] ${red}- ${LYELLOW}"

#Loading
loading(){
  echo -e "
  ${loading}Please Wait"
  sleep 5
  echo -e "
  ${info}Checking Status: ${green}Online"
  sleep 1
  echo -e "
  ${info}Checking User: ${LCYAN}${user}"
  sleep 3
}

#MainMenu
mainmenu(){
  echo -e "
  ${LBLUE}1 ${red}) ${cyan}>> ${yellow}Info Kelas"
  sleep 0.1
  echo -e "
  ${LBLUE}2 ${red}) ${cyan}>> ${yellow}Jadual Kelas"
  sleep 0.1
  echo -e "
  ${LBLUE}3 ${red}) ${cyan}>> ${yellow}Nama Pelajar"
  sleep 0.1
  echo -e "
  ${LBLUE}4 ${red}) ${cyan}>> ${yellow}Update"
  echo -e "
  ${LBLUE}0 ${red}) ${cyan}>> ${yellow}Keluar${LRED}
  "
  sleep 0.1
  read -p "@3Fikir >> " choice1
  #Versi 1
  if [ $choice1 = "1" ]
  then
    infokelas
  elif [ $choice1 = "2" ]
  then
    jadual
  elif [ $choice1 = "3" ]
  then
    namamurid
  elif [ $choice1 = "4" ]
  then
    update
  elif [ $choice1 = "0" ]
  then
    keluar
  
  #Versi 2
  elif [ $choice1 = "01" ]
  then
    infokelas
  elif [ $choice1 = "02" ]
  then
    jadual
  elif [ $choice1 = "03" ]
  then
    namamurid
  elif [ $choice1 = "04" ]
  then
    update
  elif [ $choice1 = "00" ]
  then
    keluar
  else
    error
    tampilanv2
  fi
}

#Tampilan
tampilan(){
  loading
  clear
  toilet -f future -F metal ${namekelas}
  echo -e "${date}"
  mainmenu
}

tampilanv2(){
  clear
  toilet -f future -F metal ${namekelas}
  echo -e "${date}"
  mainmenu
}

#Jadual Kelas
jadual(){
  clear
  toilet -f future -F metal ${namejadual}
  echo -e "${date}"
  echo -e "
  ${LBLUE}|-------------------------------------|
  ${LBLUE}|${purple}Isnin  ${LBLUE}| ${LRED}TT ${LBLUE}| ${LRED}TT ${LBLUE}| ${LRED}TT ${LBLUE}| ${LRED}TT ${LBLUE}| ${LRED}TT ${LBLUE}| ${LRED}TT ${LBLUE}| >>
  ${LBLUE}|-------------------------------------|
  ${LBLUE}|${purple}Selasa ${LBLUE}| ${LRED}TT ${LBLUE}| ${LRED}TT ${LBLUE}| ${LRED}TT ${LBLUE}| ${LRED}TT ${LBLUE}| ${LRED}TT ${LBLUE}| ${LRED}TT ${LBLUE}| >>
  ${LBLUE}|-------------------------------------|
  ${LBLUE}|${purple}Rabu   ${LBLUE}| ${LRED}TT ${LBLUE}| ${LRED}TT ${LBLUE}| ${LRED}TT ${LBLUE}| ${LRED}TT ${LBLUE}| ${LRED}TT ${LBLUE}| ${LRED}TT ${LBLUE}| >>
  ${LBLUE}|-------------------------------------|
  ${LBLUE}|${purple}Khamis ${LBLUE}| ${LRED}TT ${LBLUE}| ${LRED}TT ${LBLUE}| ${LRED}TT ${LBLUE}| ${LRED}TT ${LBLUE}| ${LRED}TT ${LBLUE}| ${LRED}TT ${LBLUE}| >>
  ${LBLUE}|-------------------------------------|
  ${LBLUE}|${purple}Jumaat ${LBLUE}| ${LRED}TT ${LBLUE}| ${LRED}TT ${LBLUE}| ${LRED}TT ${LBLUE}| ${LRED}TT ${LBLUE}| ${LRED}TT ${LBLUE}| ${LRED}TT ${LBLUE}| >>
  ${LBLUE}|-------------------------------------|
  "
  sleep 0.6
  toilet -f future -F metal ${infohari}
  echo -e "
  ${LGREEN}Isnin   ${yellow}>>  ${LPURPLE}Perhimpunan
  ${LGREEN}Rabu    ${yellow}>>  ${LPURPLE}Kokurikulum
  ${LGREEN}Khamis  ${yellow}>>  ${LPURPLE}Bahan Baca Nilam
  ${LGREEN}Jumaat  ${yellow}>>  ${LPURPLE}Bacaan Doa${red}
  "
  sleep 0.6
  read -p "Ketik f untuk kembali: " fkembali
  if [ $fkembali = "f" ]
  then
    tampilanv2
  elif [ $fkembali = "F" ]
  then
    tampilanv2
  else
    error
    jadual
  fi
}

#Nama Murid
namamurid(){
  clear
  toilet -f future -F metal ${namemurid}
  echo -e "${date}"
  sleep 0.6
  echo -e "
  ${LBLUE}LELAKI${black}|
  ${black}------|
  ${LRED}01${LYELLOW}). ${cyan}Daniel
  ${LRED}02${LYELLOW}). ${cyan}Shariman
  ${LRED}03${LYELLOW}). ${cyan}𝑆𝑦𝑎𝑚𝑠𝑢𝑙
  ${LRED}04${LYELLOW}). ${cyan}Shadri
  ${LRED}05${LYELLOW}). ${cyan}Rosman
  ${LRED}06${LYELLOW}). ${cyan}Rozaimin
  ${LRED}07${LYELLOW}). ${cyan}Haifil
  ${LRED}08${LYELLOW}). ${cyan}Hakimi
  ${LRED}09${LYELLOW}). ${cyan}Azizul
  ${LRED}10${LYELLOW}). ${cyan}Aidil
  ${LRED}11${LYELLOW}). ${cyan}Adam
  ${LRED}12${LYELLOW}). ${cyan}Azmi
  ${LRED}13${LYELLOW}). ${cyan}Sharul
  ${LRED}14${LYELLOW}). ${cyan}Isyak
  ${LRED}15${LYELLOW}). ${cyan}Ferdi
  ${LRED}16${LYELLOW}). ${cyan}Ikmal
  ${LRED}17${LYELLOW}). ${cyan}Ikbal"
  sleep 0.6
  echo -e "
  ${purple}PEREMPUAN${black}|
  ${black}---------|
  ${LRED}01${LYELLOW}). ${cyan}Nur Salam
  ${LRED}02${LYELLOW}). ${cyan}Khairun Nasriah
  ${LRED}03${LYELLOW}). ${cyan}Rosita
  ${LRED}04${LYELLOW}). ${cyan}Fiqren
  ${LRED}05${LYELLOW}). ${cyan}Nurul Shafiqah
  ${LRED}06${LYELLOW}). ${cyan}Maizatul
  ${LRED}07${LYELLOW}). ${cyan}Isah Natasha
  ${LRED}08${LYELLOW}). ${cyan}Asmira
  ${LRED}09${LYELLOW}). ${cyan}Insyirah
  "
  sleep 0.6
  toilet -f future -F metal ${infomurid}
  echo -e "
  ${black}@${LCYAN}Daniel ${LYELLOW}>> ${purple}Kecerian
  ${black}@${LCYAN}Nur Salam ${LYELLOW}>> ${purple}PRS
  ${black}@${LCYAN}Khairun ${LYELLOW}>> ${purple}PRS
  ${black}@${LCYAN}Shafiqah ${LYELLOW}>> ${purple}Kecerian
  ${black}@${LCYAN}Insyirah ${LYELLOW}>> ${purple}Ketua
  ${black}@${LCYAN}Haifil ${LYELLOW}>> ${purple}Creator${red}
  "
  
  read -p "Ketik f untuk kembali: " fkembali
  if [ $fkembali = "f" ]
  then
    tampilanv2
  elif [ $fkembali = "F" ]
  then
    tampilanv2
  else
    error
    namamurid
  fi
}

#Update Script
update(){
    cd
    rm -rf classv3
    clear
    toilet -f future -F metal ${updated}
    git clone https://github.com/Talz666/classv3
    clear
    echo -e "${info}Sukses Updated"
    cd classv3
    bash 3f.sh
}

#Info Kelas
infokelas(){
    clear
    toilet -f future -F metal ${infokelas}
    echo -e "${date}"
    sleep 0.6
    echo -e "
    ${LCYAN}|________________________________|
    ${LCYAN}|${LYELLOW}Guru Kelas   ${red}: ${cyan}${namagurukelas}
    ${LCYAN}|________________________________|
    ${LCYAN}|${LYELLOW}Posisi Kelas ${red}: ${posisikelas}
    ${LCYAN}|________________________________|
    ${LCYAN}|${LYELLOW}Tingkatan    ${red}: ${tingkatan}
    ${LCYAN}|________________________________|
    ${LCYAN}|${LYELLOW}Jumlah Murid ${red}: ${totalmurid}
    ${LCYAN}|________________________________|
    "
    sleep 0.6
    toilet -f future -F metal ${extrapelajar}
    echo -e "
    ${LGREEN}Pelajar Baru   ${LYELLOW}= ${purple}${pelajarbaru}
    ${LGREEN}Jumlah Pelajar ${LYELLOW}= ${purple}${jumlahpelajar}
    ${LGREEN}Nama Pelajar   ${LYELLOW}= ${purple}${namapelajar}${red}
    "
    
    read -p "Ketik f untuk kembali: " fkembali
    if [ $fkembali = "f" ]
    then
        tampilanv2
    elif [ $fkembali = "F" ]
    then
        tampilanv2
    else
        error
        infokelas
    fi
}

#Error
error(){
    clear
    echo -e "${error}Something Went Wrong"
    sleep 2
}

#Keluar
keluar(){
    clear
    toilet -f future -F metal classv3
    echo -e "${info}Bye-Bye User!!!"
}
#MAIN
tampilan
#!/bin/sh

for i in state ireg iare iloc gccsa sa4 sa3 sa2 sa1 tr add ced sed nrmr ssc poa lga
do
  mkdir -p $i

  case $i in
    state)
      desc="State\/Territory"
      ;;
    ireg)
      desc="Indigenous Regions"
      ;;
    iare)
      desc="Indigenous Areas"
      ;;
    iloc)
      desc="Indigenous Locations"
      ;;
    gccsa)
      desc="Greater Capital City Statistical Areas"
      ;;
    sa4)
      desc="Statistical Area Level 4"
      ;;
    sa3)
      desc="Statistical Area Level 3"
      ;;
    sa2)
      desc="Statistical Area Level 2"
      ;;
    sa1)
      desc="Statistical Area Level 1"
      ;;
    tr)
      desc="Tourism Regions"
      ;;
    add)
      desc="Australian Drainage Divisions"
      ;;
    ced)
      desc="Commonwealth Electoral Divisions"
      ;;
    sed)
      desc="State Electoral Divisions"
      ;;
    nrmr)
      desc="Natural Resource Management Regions"
      ;;
    ssc)
      desc="State Suburbs"
      ;;
    poa)
      desc="Postal Areas"
      ;;
    lga)
      desc="Local Government Areas"
      ;;
  esac

  cat template/template.mml | sed "s/template/$i/g" | sed "s/structure_desc/$desc/" > $i/$i.mml

  cat template/labels.mss > $i/labels.mss
done

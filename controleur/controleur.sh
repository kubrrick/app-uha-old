#/bin/bash
#codé par Clément MOULINE
#version 1
echo "####################################################################################################"
echo "telechargement du : "
date

##########################################################################################################
#RT
echo "telechargement des plannings RT" 

#formation initiales
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 205 > rt111.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 206 > rt112.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 203 > rt121.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 204 > rt122.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 214 > rt211.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 215 > rt212.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 212 > rt221.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 213 > rt222.ics

#formation alternace
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 218 > rt11a.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 219 > rt12a.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 221 > rt21a.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 222 > rt22a.ics

##########################################################################################################
#TC
echo "telechargement des plannings TC"

#formation alternance
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 286 > tc111a.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 287 > tc112a.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 1185 > tc121a.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 1186 > tc122a.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 288 > tc211a.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 289 > tc212a.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 1195 > tc221a.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 1197 > tc222a.ics

#formation inconnues
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 1055 > tc11cadre.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 1204 > tc21cadre.ics

#formation initiales
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 274 > tc131.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 275 > tc132.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 250 > tc141.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 255 > tc142.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 268 > tc151.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 269 > tc152.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 280 > tc231.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 281 > tc232.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 282 > tc241.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 283 > tc242.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 834 > tc251.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 835 > tc252.ics

#IBM
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 238 > tc11tri.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 239 > tc12tri.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 1276 > tc21tri.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 1277 > tc22tri.ics

##########################################################################################################
#GTE
echo "telechargement des plannings GTE"

#formation initiales
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 1221 > gte11-a.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 1222 > gte11-b.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 86 > gte21-a.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 87 > gte21-b.ics

#formation alternace
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 60 > gte1a-c.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 756 > gte2a-c.ics

###########################################################################################################
#GB
echo "telechargement des plannings GB"

#formation initial
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 147 > gb111.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 148 > gb112.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 152 > gb121.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 153 > gb122.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 160 > gb211.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 161 > gb212.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 158 > gb221.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 159 > gb222.ics

#############################################################################################################
#HSE
echo "telechargement des plannings HSE"

#formation initial
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 173 > hse111.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 174 > hse112.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 175 > hse121.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 176 > hse122.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 177 > hse131.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 178 > hse132.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 179 > hse211.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 180 > hse212.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 181 > hse221.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 182 > hse222.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 183 > hse231.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 184 > hse232.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 190 > hse2pe1.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 191 > hse2pe2.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 192 > hse2po1.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 1255 > hse2po2.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 188 > hse2pp1.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 348 > hse2pp2.ics

#alternances
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 731 > hsea112.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 859 > hsea211.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 860 > hsea212.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 128 > hsea2pe1.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 626 > hsea2pe2.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 133 > hsea2po1.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 633 > hsea2po2.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 136 > hsea2pp1.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 642 > hsea2pp2.ics

###########################################################################################################
#CJ
echo "telechargement des plannings CJ"

#formation initiale
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 791 > cj11.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 792 > cj12.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 793 > cj13.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 794 > cj14.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 796 > cj21.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 797 > cj22.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 798 > cj23.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 799 > cj24.ics

##les lignes en commentaire ci-dessous, son à parement des emplois du temps inutiles, à verifier
#ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 758 > cj1lv1all_f.ics
#ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 760 > cj1lv1all_g.ics
#ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 783 > cj1lv1ang_a.ics
#ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 784 > cj1lv1ang_b.ics
#ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 785 > cj1lv1ang_c 1,2,4.ics
#ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 786 > cj1lv1ang_d.ics
#ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 787 > cj1lv1ang_e.ics
#ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 76 > cj1lv2all_c.ics
#ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 818 > cj1lv2ang_a.ics
#ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 847 > cj1lv2ang_b.ics
#ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 81 > cj1lv2esp_espagnol e.ics
#ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 82 > cj1lv2esp_espagnol f.ics

#ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 806 > cj2lv2all_b.ics
#ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 811 > cj2lv2ang_a.ics
#ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 233 > cj2lv2esp_enpagnol e.ics
#ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 237 > cj2lv2esp_enpagnol f.ics

#alternances
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 1056 > cj1_a.ics
ade2ics-v3.3.pl -c -d https://cas.uha.fr -u https://www.emploisdutemps.uha.fr/ade/ -l clement.mouline@uha.fr -p VOTRE_MDP -y 'IUT Colmar 2012-2013' -n 1239 > cj2_a.ics


echo "fin du telechargement"
###########################################################################################################
#demarage du parsing
echo "démarage du parsing"
java -jar parsing.jar
echo "conversion terminée"

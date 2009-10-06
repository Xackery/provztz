<?php
//**Server Settings**
$dbhost="localhost";
$dbuser="root";
$dbpasswd="password";
$dbname="peq";

$curzone = 'powater'; //Change this to the shortname of the zone you want to modify. You can visit http://www.eqemulator.net/wiki/wikka.php?wakka=ZoneIDList for a short name list.
$minlevel = 65; //This is the min level of mobs in the zone to search for and modify
$maxlevel = 70; //This is the max level of mobs in the zone to search for and modify

function DefaultStats($level)
{ //This function is called each level, it returns "default" data for mob stats.
    global $mob;
    $mob[0]['hp'] = 30000;    $mob[0]['ac'] = -1;
    $mob[0]['mindmg'] = 500;    $mob[0]['maxdmg'] = 800;
    $mob[0]['atk'] = -1;
    $mob[0]['flags'] = 'SERMCNIDf';
    $mob[0]['accuracy'] = 0;
    $mob[0]['slow_mitigation'] = -1;
    $mob[0]['attackspeed'] = -22;
    $mob[0]['hpregen'] = -1; #hpregen_rate
    $mob[0]['manaregen'] = -1; #manaregen_rate
    $mob[0]['npcspecial'] = -1; #special attacks.
    $mob[0]['aggroradius'] = -1; #special attacks.
    $mob[0]['mr'] = -1; $mob[0]['cr'] = -1; $mob[0]['dr'] = -1; $mob[0]['fr'] = -1; $mob[0]['pr'] = -1;
}

//From here and lower you can list mob statistics that are unique to a specific level. This is priotized over Default Stats listed above, but if a stat is excluded it will resort to default.
//level 65 mob stats, based on Councilor Icelok http://thehiddenforest.dyndns.org/npc.php?id=129038
$tmp = 65;
$mob[$tmp]['hp'] = 25000;
$mob[$tmp]['mindmg'] = 400;
$mob[$tmp]['maxdmg'] = 800;
//level 66 mob stats, based on Councilor Deynekn http://thehiddenforest.dyndns.org/npc.php?id=129036
$tmp = 66;
$mob[$tmp]['hp'] = 30000;
$mob[$tmp]['mindmg'] = 500;
$mob[$tmp]['maxdmg'] = 1000;
$mob[$tmp]['flags'] = 'SERMCNIDf';
//level 67 mob stats, based on Councilor Darakor http://thehiddenforest.dyndns.org/npc.php?id=129043
$tmp = 67;
$mob[$tmp]['hp'] = 35000;
$mob[$tmp]['mindmg'] = 600;
$mob[$tmp]['maxdmg'] = 1100;
$mob[$tmp]['flags'] = 'SERMCNIDf';
//level 68 mob stats, using the formula above to base it.
$tmp = 68;
$mob[$tmp]['hp'] = 40000;
$mob[$tmp]['mindmg'] = 700;
$mob[$tmp]['maxdmg'] = 1300;
$mob[$tmp]['flags'] = 'SERMCNIDf';
//level 69 mob stats
$tmp = 69;
$mob[$tmp]['hp'] = 45000;
$mob[$tmp]['mindmg'] = 800;
$mob[$tmp]['maxdmg'] = 1400;
$mob[$tmp]['flags'] = 'SERMCNIDf';
//level 70 mob stats, using elite temple guard http://thehiddenforest.dyndns.org/npc.php?id=162026
$tmp = 70;
$mob[$tmp]['hp'] = 50000;
$mob[$tmp]['mindmg'] = 800;
$mob[$tmp]['maxdmg'] = 1500;
$mob[$tmp]['flags'] = 'SERMCNIDf';
//level 71 mob stats
$tmp = 71;
$mob[$tmp]['hp'] = 52000;
$mob[$tmp]['mindmg'] = 900;
$mob[$tmp]['maxdmg'] = 1600;
$mob[$tmp]['flags'] = 'SERMCNIDf';
//level 72 mob stats, using guardian of zek template
$tmp = 72;
$mob[$tmp]['hp'] = 54000;
$mob[$tmp]['mindmg'] = 800;
$mob[$tmp]['maxdmg'] = 1400;
$mob[$tmp]['flags'] = 'SERMCNIDf';
//level 73 mob stats, using imperial guard http://thehiddenforest.dyndns.org/npc.php?id=162002
$tmp = 73;
$mob[$tmp]['hp'] = 56000;
$mob[$tmp]['mindmg'] = 800;
$mob[$tmp]['maxdmg'] = 1400;
$mob[$tmp]['flags'] = 'SERMCNIDf';
//level 74 mob stats, using guardian of zek template
$tmp = 74;
$mob[$tmp]['hp'] = 58000;
$mob[$tmp]['mindmg'] = 800;
$mob[$tmp]['maxdmg'] = 1400;
$mob[$tmp]['flags'] = 'SERMCNIDf';
//level 75 mob stats, using guardian of zek template
$tmp = 75;
$mob[$tmp]['hp'] = 60000;
$mob[$tmp]['mindmg'] = 800;
$mob[$tmp]['maxdmg'] = 1400;
$mattackspeed[$tmp] = 1400;
$maccuracy[$tmp] = 1400;
$mob[$tmp]['flags'] = 'SERMCNIDf';
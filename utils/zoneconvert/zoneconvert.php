<?php
echo "Loading variables... ";
include_once("config.php");
echo "<font color='green'>OK!</font><br>\n";

//*SHOULDN'T NEED TO CHANGE ANYTHING BELOW THIS LINE!*

$confirm = 0; //this is a var that gets set to 1 if you click link on bottom of report generated.
if (isset($_GET['confirm']) && $_GET['confirm']==1) $confirm = 1;

echo "Database connect... ";
mysql_connect($dbhost,$dbuser,$dbpasswd);
@mysql_select_db($dbname) or die( "Unable to select database.");
echo "<font color='green'>OK!</font><br>\n";

echo "Checking if zone '$curzone' exists.. ";
    $query = "SELECT * FROM `zone` WHERE `short_name`='$curzone';";
    $result=mysql_query($query);
    if (!$result) die("No, it does not exist (".mysql_error().")");
echo "<font color='green'>OK!</font><br>\n";

echo "<font color='blue'>Generating report...</font><br>\n";
    for ($curlevel = $minlevel; $curlevel <= $maxlevel; $curlevel++)
    {
        //Clean up non-set variable defaults for current level.
        DefaultStats($curlevel);
        if (!isset($mob[$curlevel]['hp'])) $mob[$curlevel]['hp'] = $mhp[0];
        if (!isset($mob[$curlevel]['mindmg'])) $mob[$curlevel]['mindmg'] = $mob[0]['mindmg'];
        if (!isset($mob[$curlevel]['maxdmg'])) $mob[$curlevel]['maxdmg'] = $mob[0]['maxdmg'];
        if (!isset($mob[$curlevel]['attackspeed'])) $mob[$curlevel]['attackspeed'] = $mob[0]['attackspeed'];
        if (!isset($mob[$curlevel]['accuracy'])) $mob[$curlevel]['accuracy'] = $mob[0]['accuracy'];
        if (!isset($mob[$curlevel]['flags'])) $mob[$curlevel]['flags'] = $mob[0]['flags'];
        //Clean up non-set variables for boss flag (+3 levels)
        if (!isset($mob[($curlevel+3)]['hp'])) $mob[($curlevel+3)]['hp'] = $mhp[0];
        if (!isset($mob[($curlevel+3)]['mindmg'])) $mob[($curlevel+3)]['mindmg'] = $mob[0]['mindmg'];
        if (!isset($mob[($curlevel+3)]['maxdmg'])) $mob[($curlevel+3)]['maxdmg'] = $mob[0]['maxdmg'];
        if (!isset($mob[($curlevel+3)]['attackspeed'])) $mob[($curlevel+3)]['attackspeed'] = $mob[0]['attackspeed'];
        if (!isset($mob[($curlevel+3)]['accuracy'])) $mob[($curlevel+3)]['accuracy'] = $mob[0]['accuracy'];
        if (!isset($mob[($curlevel+3)]['flags'])) $mob[($curlevel+3)]['flags'] = $mob[0]['flags'];
        
        //Do a query on current monsters of zone of X level.
        $query = "SELECT DISTINCT n.id, n.name, n.level, n.merchant_id, n.hp, n.mindmg, n.maxdmg, n.npcspecialattks, n.aggroradius, n.accuracy, n.attack_speed
                FROM npc_types n
                INNER JOIN spawnentry se on n.id = se.npcID
                INNER JOIN spawn2 s on se.spawngroupID = s.spawngroupID
                WHERE s.zone = '$curzone' AND n.level = $curlevel;"; // AND n.hp < ({$mob[$curlevel]['hp']}+1);";
        $result=mysql_query($query);
        if (!$result) die("Error on NPC Select Query (".mysql_error().")");
        if (mysql_num_rows($result)>0) //at least 1 result
        {
            while ($row = mysql_fetch_array($result, MYSQL_ASSOC))
            { //Go through each result
                if ($row['hp'] < $mob[$curlevel]['hp'])
                { //If mob has less HP than
                    $tmplevel = $curlevel;
                    $newhp = $mob[$tmplevel]['hp']; //Set new HP to the HP of template, it's greater than mob's HP.
                }
                else
                { //Mob has more HP than our template.. Likely boss? Use 3+ levels.
                    echo "Boss - ";
                    $tmplevel = $curlevel+3; //Use +3 level template for comparisons.
                    if ($row['hp'] < $mob[$tmplevel]['hp']) $newhp = $mob[$tmplevel]['hp']; //If template level + 3 has more HP, set it to that.
                    else $newhp = $row['hp']; //Otherwise, keep the mob's HP.
                }
                //Now go through, if our template has greater values, use that data, otherwise keep original mob data.
                if ($row['mindmg'] > $mob[$tmplevel]['mindmg']) $newmindmg = $row['mindmg'];
                else $newmindmg = $mob[$tmplevel]['mindmg'];
                if ($row['maxdmg'] > $mob[$tmplevel]['maxdmg']) $newmaxdmg = $row['maxdmg'];
                else $newmaxdmg = $mob[$tmplevel]['maxdmg'];
                if ($row['accuracy'] > $mob[$tmplevel]['accuracy']) $newaccuracy = $row['accuracy'];
                else $newaccuracy = $mob[$tmplevel]['accuracy'];
                if ($row['attack_speed'] > $mob[$tmplevel]['attackspeed']) $newattackspeed = $row['attack_speed'];
                else $newattackspeed = $mob[$tmplevel]['attackspeed'];
                
                echo "{$row['name']} ({$row['id']}) will be changed, HP: {$row['hp']} -> $newhp, MinDMG: {$row['mindmg']} -> $newmindmg, MaxDMG: {$row['maxdmg']} -> $newmaxdmg, Accuracy: {$row['accuracy']} -> $newaccuracy, Attack Speed: {$row['attack_speed']} -> $newattackspeed <br>\n";
                if ($confirm)
                { // Do the changes!
                    $query = "UPDATE `npc_types` SET hp = '$newhp', mindmg = '$newmindmg', maxdmg = '$newmaxdmg', accuracy = '$newaccuracy', attackspeed = '$newattackspeed' WHERE id = '{$row['id']}';";
                    $result=mysql_query($query);
                    if (!$result) echo ("Error on NPC UPDATE Query ($query), Error: ".mysql_error()."");
                }
            } //end while $row
        } //end else numresults
        echo "<font color='blue'> Found ".mysql_num_rows($result)." level $curlevel mobs in $curzone.</font><br>\n";
    } //end curlevel loop
echo "<font color='red'>Review the above modifications and click <a href='./zoneconvert.php?confirm=1'>DO THE CHANGES</a> to have them apply.</font><br>\n";
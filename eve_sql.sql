/*Select Skill IDs and Names*/
SELECT typeID, typename from invTypes join invGroups on invTypes.groupid=invGroups.groupid and categoryid=16;

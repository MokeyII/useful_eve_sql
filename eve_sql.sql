/*Select Skill IDs and Names*/
SELECT typeID, typename from invTypes join invGroups on invTypes.groupid=invGroups.groupid and categoryid=16;

/*Pull Player ID, SKill ID, and Trained Skill levels*/
SELECT character_id, skill_id, trained_skill_level FROM character_skills WHERE character_id = '92692957';

/*SELECT PlayerID and skill levels to match*/
SELECT character_id, skill_id, active_skill_level FROM character_skills WHERE character_id = 92692957 AND active_skill_level =< 4;

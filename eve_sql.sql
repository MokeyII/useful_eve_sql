/*Select Skill IDs and Names*/
SELECT typeID, typename from invTypes join invGroups on invTypes.groupid=invGroups.groupid and categoryid=16;

/*Pull Player ID, SKill ID, and Trained Skill levels*/
SELECT character_id, skill_id, trained_skill_level FROM character_skills WHERE character_id = '92692957';

/*SELECT PlayerID and skill levels to match*/
SELECT character_id, skill_id, active_skill_level FROM character_skills WHERE character_id = 92692957 AND active_skill_level =< 4;

/*Find PlayerID, SkillID, and check level*/
SELECT character_skills.character_id, character_skills.trained_skill_level, character_skills.skill_id FROM character_skills INNER JOIN character_infos ON character_infos.character_id = character_skills.character_id WHERE character_infos.character_id = 92692957 AND character_skills.active_skill_level <5 AND skill_id = 3361;


SELECT name, invTypes.typeName, character_skills.trained_skill_level FROM character_skills INNER JOIN character_infos ON character_infos.character_id = character_skills.character_id INNER JOIN invTypes ON character_skills.skill_id = invTypes.typeID WHERE character_skills.active_skill_level <5 AND skill_id = 12203 AND name = 'Mokey PYD';


/*Select All players skills, list by Name, typeName, and Trained Skill Level */
SELECT name, invTypes.typeName, character_skills.trained_skill_level 
	FROM character_skills 
INNER JOIN character_infos 	
	ON character_infos.character_id = character_skills.character_id 
INNER JOIN invTypes 
	ON character_skills.skill_id = invTypes.typeID;
  
 /*Select player passing parameters*/
 SELECT name, invTypes.typeName, character_skills.trained_skill_level 
  FROM character_skills 
 INNER JOIN character_infos
  ON character_infos.character_id = character_skills.character_id 
 INNER JOIN invTypes 
  ON character_skills.skill_id = invTypes.typeID 
  WHERE character_skills.active_skill_level <5 AND skill_id = 12203 AND name = 'Mokey PYD';


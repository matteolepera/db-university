------------------------------------------------------------------------------------------------------------------
-- FATTI A LEZIONE DI MATTINA:
-- Selezionare tutti gli appelli d'esame del Corso di Laurea Magistrale in Fisica del primo annoSELECT `exams`.*
FROM `exams`
INNER JOIN `courses`
ON `exams`.`course_id` = `courses`.id
INNER JOIN `degrees`
ON `courses`.`degree_id` = `degrees`.id
WHERE `courses`.`year` = 1
AND `degrees`.`name` = "Corso di Laurea Magistrale in Fisica";

-- Selezionare tutti i docenti che insegnano nel Corso di Laurea in Lettere (21)
SELECT `teachers`.*, `degrees`.`name` AS `degree_name`
FROM `teachers`
INNER JOIN `course_teacher`
ON `teachers`.id = `course_teacher`.`teacher_id`
INNER JOIN `courses`
ON `courses`.id = `course_teacher`.`course_id`
INNER JOIN `degrees`
ON `degrees`.id = `courses`.`degree_id`
WHERE `degrees`.`name` = "Corso di Laurea in Lettere";
------------------------------------------------------------------------------------------------------------------

-- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
-- students.* | degrees.name
SELECT `students`.*, `degrees`.`name` AS `degree_name`
FROM `students`
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = "Corso di Laurea in Economia";

-- 2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
-- degrees.name | deparments.name
SELECT `degrees`.`name`, `departments`.`name`
FROM `degrees`
INNER JOIN `departments`
ON `degrees`.`department_id` = `departments`.`id`
WHERE `degrees`.level = "magistrale"
AND `departments`.name = "Dipartimento di Neuroscienze";


-- 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
-- courses | teachers
SELECT `teachers`.name AS `teacher_name`, `teachers`.surname AS `teacher_surname`, `courses`.name AS `course_name`, `courses`.description
FROM `teachers`
INNER JOIN `course_teacher`
ON `course_teacher`.`teacher_id` = `teachers`.id
INNER JOIN `courses`
ON `course_teacher`.`course_id` = `courses`.id
WHERE `teachers`.id = 44
ORDER BY `course_name` ASC;

-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome


-- 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti


-- 6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)


-- 7. BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per superare ciascuno dei suoi esami


/* 1- Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia */
SELECT `students`.*, degrees.name
FROM `students`
 JOIN `degrees`
 ON `students`.`degree_id` = `degrees`.`id`
 WHERE `degrees`.`name` = 'Corso di Laurea in Economia';

/* 2- Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze  */
SELECT `degrees`.*, departments.name
FROM `degrees`
 JOIN `departments`
 ON `degrees`.`department_id` = `departments`.`id`
  WHERE `departments`.`id` = 7;

/* 3- Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44) */
SELECT `courses`.`name`, course_teacher.teacher_id, teachers.name, teachers.surname
FROM `courses`
 JOIN `course_teacher`
	ON `courses`.`id` = `course_teacher`.`course_id`
 JOIN `teachers`
	ON `course_teacher`.`teacher_id` = `teachers`.`id`
   WHERE `course_teacher`.`teacher_id` = 44;

/* 4- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il
relativo dipartimento, in ordine alfabetico per cognome e nome */
SELECT `students`.`name`, `students`.`surname`, degrees.name, departments.name
FROM `students`
 JOIN `degrees`
  ON `students`.`degree_id` = `degrees`.`id`
 JOIN `departments`
  ON `degrees`.`department_id` = `departments`.`id`
   ORDER BY students.surname, students.name;

/* 5- Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti */
SELECT `degrees`.`name` AS `degree name`, courses.name AS `course name`, departments.name AS `department name`
FROM `degrees`
 JOIN `courses`
  ON `degrees`.`id` = `courses`.`degree_id`
 JOIN `course_teacher`
  ON `courses`.`id` = `course_teacher`.`course_id`
 JOIN `departments`
  ON `degrees`.`department_id` = `departments`.`id`

/* 6- Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54) */
SELECT DISTINCT `teachers`.`name`, `teachers`.`surname`, departments.name
FROM `teachers`
 JOIN `course_teacher`
  ON `teachers`.`id` = `course_teacher`.`teacher_id`
 JOIN `courses`
  ON `course_teacher`.`course_id` = `courses`.`id`
 JOIN `degrees` 
  ON `courses`.`degree_id` = `degrees`.`id`
 JOIN `departments`
  ON `degrees`.`department_id` = `departments`.`id`
    WHERE `departments`.`id` = 5


 
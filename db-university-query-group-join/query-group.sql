/* 1- Contare quanti iscritti ci sono stati ogni anno */
SELECT COUNT(id) AS 'number_of_subscriptions_for_year', YEAR(enrolment_date)
FROM `students`
 GROUP BY YEAR(enrolment_date)
 ORDER BY YEAR(enrolment_date);

 /* 2- Contare gli insegnanti che hanno l'ufficio nello stesso edificio */
SELECT COUNT(id) AS 'teachers_in_same_structure', office_address
FROM `teachers`
 GROUP BY office_address;

/* 3- Calcolare la media dei voti di ogni appello d'esame */
SELECT AVG(vote) AS 'avg_votes_for_exam', exam_id
FROM `exam_student`
 GROUP BY exam_id;

/* 4- Contare quanti corsi di laurea ci sono per ogni dipartimento */
SELECT COUNT(id) AS 'number_of_courses_for_dep', department_id
FROM `degrees`
 GROUP BY department_id;

/* 4- con join per verificare il nome del dipartimento */

SELECT COUNT(department_id) AS 'number_of_courses_for_dep', department_id, departments.name
FROM `degrees`
 INNER JOIN departments 
 ON departments.id = degrees.department_id
  GROUP BY department_id
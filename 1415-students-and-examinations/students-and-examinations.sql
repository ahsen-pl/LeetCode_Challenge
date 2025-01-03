-- Write your PostgreSQL query statement below

/*SELECT
    st.student_id,
    st.student_name,
    su.subject_name,
    COUNT(e.student_id) as attended_exams
FROM students st
LEFT JOIN examinations e
ON st.student_id = e.student_id
LEFT JOIN subjects su
ON su.subject_name = e.subject_name
GROUP BY 
    st.student_id,
    st.student_name,
    su.subject_name
    */

SELECT
    st.student_id,
    st.student_name,
    su.subject_name,
    COUNT(e.subject_name) as attended_exams
FROM students st
CROSS JOIN subjects su
LEFT JOIN examinations e
ON st.student_id = e.student_id 
AND su.subject_name = e.subject_name
GROUP BY 
    st.student_id,
    st.student_name,
    su.subject_name

CREATE INDEX IF NOT EXISTS "idx_enrollments_student_id"
ON "enrollments" ("student_id");
CREATE INDEX IF NOT EXISTS "idx_enrollments_course_id"
ON "enrollments" ("course_id");

CREATE INDEX IF NOT EXISTS idx_courses_dept_num_sem
ON courses(department, number, semester);


CREATE INDEX IF NOT EXISTS idx_enrollments_course_id
ON enrollments(course_id);


CREATE INDEX IF NOT EXISTS idx_enrollments_student_id
ON enrollments(student_id);

CREATE INDEX IF NOT EXISTS idx_courses_semester
ON courses(semester);


CREATE INDEX IF NOT EXISTS idx_enrollments_course_id
ON enrollments(course_id);


CREATE INDEX IF NOT EXISTS idx_enrollments_course_id_student_id
ON enrollments(course_id, student_id);

CREATE INDEX IF NOT EXISTS idx_courses_department_semester
ON courses(department, semester);

CREATE INDEX IF NOT EXISTS idx_enrollments_student_id
ON enrollments(student_id);

CREATE INDEX IF NOT EXISTS idx_satisfies_course_id
ON satisfies(course_id);


CREATE INDEX IF NOT EXISTS idx_satisfies_requirement_id
ON satisfies(requirement_id);

CREATE INDEX IF NOT EXISTS idx_requirements_id
ON requirements(id);

CREATE INDEX IF NOT EXISTS idx_courses_title_semester
ON courses(title, semester);

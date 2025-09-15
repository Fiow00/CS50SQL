CREATE INDEX "enrollements_index" ON "enrollments"("student_id", "course_id");
CREATE INDEX "semester_index" ON "courses"("semester");
CREATE INDEX "department_index" ON "courses"("department");
CREATE INDEX "title_index" ON "courses"("title");
CREATE INDEX "satisfies_index" ON "satisfies"("course_id", "requirement_id");


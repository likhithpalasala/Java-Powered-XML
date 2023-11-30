 The project contains the saxon.jar file with the Saxon.

"Implementation of XQuery in Java"

To run the XQuery file q1.xq and store the output in the file o1.xml, use:
java -cp saxon.jar net.sf.saxon.Query -q:q1.xq -o:"o1.xml"

(if you omit -o:"o1.xml", it will print the results to the output). 

To run XQuery on the command line, use for example:
java -cp saxon.jar net.sf.saxon.Query -qs:'fn:doc("reed.xml")//course[reg_num=10778]//subj'


Project Requirements:
Consider the XML document available at reed.xml DTD reed.dtd
The following queries was expressed using XQuery and ran them against the file reed.xml using Saxon:

1. For each MATH course taught in room LIB 204, return an element tagged course with the title, the instructor,
the start, and the end times of the course.
2. For each different course, return an element tagged course with the course title and all the instructor names
that teach this course.
3. For each different department, display the department code and the number of courses taught by the
department.
4. For each different instructor, return an element tagged instructor that contains the name of the instructor and
the number of courses taught by the instructor.
5. For each different instructor, return an element tagged instructor that contains the name of the instructor and
the titles of all courses taught by the instructor.


Each XQuery was written into a separate file, such as q1.xq for the first query, and then used:
java -cp saxon.jar net.sf.saxon.Query -q:q1.xq -o:"o1.xml"
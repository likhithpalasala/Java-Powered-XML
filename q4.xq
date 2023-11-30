for $i in doc("reed.xml")//course
let $subj := $i//subj
let $inst := $i//instructor
group by $inst
return (<instructor><name>{$inst}</name><NumberOfCourses>{count($i/title)}</NumberOfCourses></instructor>,'&#xa;')
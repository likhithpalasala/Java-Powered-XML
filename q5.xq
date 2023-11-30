for $i in doc("reed.xml")//course
let $inst := $i//instructor
group by $inst
return (<instructor><name>{$inst}</name><course_name>{$i/title}</course_name></instructor>,'&#xa;')
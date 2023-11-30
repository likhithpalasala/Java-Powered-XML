for $i in doc("reed.xml")//course
let $sect := $i//sect
group by $sect
return (<data>{$sect}<NumberOfCourses>{count($i/title)}</NumberOfCourses></data>,'&#xa;')
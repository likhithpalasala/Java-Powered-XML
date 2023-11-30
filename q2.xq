for $i in doc("reed.xml")//course
let $subj := $i/subj
group by $subj
return (<course>{$i/title}{$i/instructor}</course>,'&#xa;')
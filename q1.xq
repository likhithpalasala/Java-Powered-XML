for $i in doc("reed.xml")//course[subj = "MATH"]
return (<course>{$i/title}{$i/instructor}{$i/time}</course> ,'&#xa;')
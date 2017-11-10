# README
1-run bundle 
2- rails db:migrate (there is no time form the user model but i did the migration)
to test the api 
run rails s 
3- i used 
by using any curl tool 
http -f POST :3000/api/files/prossecing file@text.csv 
responcne should be like that bassed on your data 
{
    "any": 3
}
which is the text.csv is the path of you file 

i used httpie for send a curl request 

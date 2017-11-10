# README
1-run bundle 
2-rails db:migrate (there is no time for the user model but i did the migration)
*to test the api 
1:run rails s 
2: using any curl tool 
"http -f POST :3000/api/files/prossecing file@text.csv"
responcne should be like that bassed on your data 
{
    "any": 3
}
which is the text.csv is the path of you file 

note: i used httpie for send a curl request 

_------
for task 2 
run rails s 

go to the root path or /users 
upload the csv file 

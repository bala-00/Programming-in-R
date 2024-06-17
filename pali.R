pali<-function(n)
{
  if(tolower(n)==tolower(rev(n)))
    {
    print("palindrome")
  }else{
    print("not")
  
  }
}
input<-readline(prompt = "enter the word:")
pali(input)

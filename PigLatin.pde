public void setup() 
{
  String[] lines = loadStrings("word.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public int findFirstVowel(String sWord)
{
String vowels[] = {"a", "e", "i", "o","u"}; 
  String letter = "";
  
  for(int i = 0; i < sWord.length(); i++)
  {
    letter = sWord.substring(i,i+1);
    for(int j = 0; j < vowels.length; j++)
    {
      if( letter.equals(vowels[j]) )
      {
        return i;
      }
    }
  }
  return -1;
}
public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  else if(findFirstVowel(sWord) == 0)
  {
    return sWord + "way";
  }
  else if(sWord.substring(0,2).contains("qu"))
  {
    return sWord.substring(2)+"quay";
  }
  else if(findFirstVowel(sWord) > 0)
  {
    return sWord.substring(findFirstVowel(sWord))+sWord.substring(0,findFirstVowel(sWord))+"ay";
  }
  return "butt";
}

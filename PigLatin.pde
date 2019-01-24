public void setup() 
{
  String[] lines = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
  //not used
}
//

public String pigLatin(String sWord)
  //precondition: sWord is a valid String of length greater than 0
  //postcondition: returns the pig latin equivalent of sWord
{
  if (findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  } else if (findFirstVowel(sWord)==0)
    return sWord+"way";
    
  else if(sWord.substring(0,2).equals("qu"))
  return sWord.substring(2) + "quay";
  else if (findFirstVowel(sWord)>0)
  return sWord+ "ay";
  else
  {
    return "ERROR!";
  }
}

public int findFirstVowel(String word) {
  for (int a=0; a<word.length(); a++) {
    if (word.substring(a, a+1).equals("a"))
      return a;
    if (word.substring(a, a+1).equals("e"))
      return a;
    if (word.substring(a, a+1).equals("i"))
      return a;
    if (word.substring(a, a+1).equals("o"))
      return a;
    if (word.substring(a, a+1).equals("u"))
      return a;
  }
  return -1;
}

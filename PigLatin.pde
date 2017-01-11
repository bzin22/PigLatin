import java.util.*;

String s = new String();

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}

public void draw()
{
}

public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	for (int i = 0; i < sWord.length(); i++)
	  {
	    if ( sWord.substring(i, i+1).equals("a") || sWord.substring(i, i+1).equals("e") || sWord.substring(i, i+1).equals("i") || sWord.substring(i, i+1).equals("o") || sWord.substring(i, i+1).equals("u") )
	    {
	      return 2;
	    }
	  }
  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1) // step 1
	{
		return sWord + "ay";
	}

	if (findFirstVowel(sWord) == 2) // step 4
	{
		for (int i = 0; i < sWord.length(); i++)
		{
			if (sWord.charAt(i).equals("a") || sWord.charAt(i).equals("e") || sWord.charAt(i).equals("i") || sWord.charAt(i).equals("o") || sWord.charAt(i).equals("u") ) 
			{
				sWord = sWord.substring(1,str.length()-1) + sWord.substring(0) + "ay";
			}
			else
			{
				sWord = sWord;
			}
		}
	}
	
	if ( sWord.substring(0,2).equals("qu") ) // step 3
	{
		s = s + sWord.substring(2,sWord.length()) + "qu" + "ay";
		return s;
	}
	else if (findFirstVowel(sWord) == 2) // step 2
	{
		sWord = sWord + "way";
		return sWord;
	}
	else // else case
	{
		return "ERROR!";
	}
}

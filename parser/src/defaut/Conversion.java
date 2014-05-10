package defaut;
/**
 * @author Clément MOULINE, Guillaume OPPERMANN
 * @licence WTFPL v2
 * @version 1.0.0
 * 
 * Classe de conversion d'in fichier Ical en un fichier XML
 * 
 */

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter ;
import java.io.IOException;
import java.io.PrintWriter;


public class Conversion {

	private String source; // l'attribut qui contiendra le chemin du ical à convertir
	private String lundi; // l'attribut qui contiendra le chemin du fichier convertit
	private String mardi;
	private String mercredi;
	private String jeudi;
	private String vendredi;
	private String samedi;
	private int day[] = new int[24]; // l'attribut tableau qui contiendra les jours de cours  penser 
	private String cours[] = new String[24] ; // l'attribut qui contiendra la liste des cours penser
	private int caseCourante = 0; // attribut de la case courante du tableau (cours et date)
	int day1[] = new int[24];//les tableau day contiendront les dates de chaque jours
	int day2[] = new int[24];
	int day3[] = new int[24];
	int day4[] = new int[24];
	int day5[] = new int[24];
	int day6[] = new int[24];
	String cours1[] = new String[24]; //les tableau cours contiendront les cours de chaque jours
	String cours2[] = new String[24];
	String cours3[] = new String[24];
	String cours4[] = new String[24];
	String cours5[] = new String[24];
	String cours6[] = new String[24];


	public Conversion(String source, String lundi, String mardi, String mercredi, String jeudi, String vendredi, String samedi)
	{
		this.source = source;
		this.lundi = lundi;
		this.mardi = mardi;
		this.mercredi = mercredi;
		this.jeudi = jeudi;
		this.vendredi = vendredi;
		this.samedi = samedi;

	}


	/**
	 * Methode permetant de parser le fichier ical et de recupérer un évènement. une fois cette element récupéré, ou pouvons envoyer toute les lignes a la prochaine methode
	 */
	public void startPars()
	{
		String ligne = ""; // contiendra la ligne de actuelement lue
		String summary = ""; // contiendra le nom de la matiere
		String description = ""; //contiendra la description
		String location = ""; //contiendra la salle
		String dtstart = ""; //contiendra la date et l'heure de debut du cours
		String dtend = ""; //contiendra la date et l'heure de la fin du cours
		String dtstamp = ""; //contiendra la date de dernière exportation

		try {
			//ouverture du calendrier
			BufferedReader planning = new BufferedReader(new  FileReader(source));

			//lecture de la 1er ligne
			ligne = planning.readLine();

			//tant que nous ne sommes pas a la fin du ical et tant que la ligne n'est pas null
			while (!ligne.contains("END:VCALENDAR") && ligne != null) 
			{
				//si un evenement commence
				if (ligne.contains("BEGIN:VEVENT")) 
				{//lire la ligne d'apres
					ligne = planning.readLine();


					//tant que la ligne suivante n'es pas le marqueur de la fin de l'evenement
					while (!ligne.contains("END:VEVENT")) 
					{			
						if (ligne.contains("DTSTART")) 
						{
							// date et heure de début du rendez-vous
							dtstart = ligne;

						}
						else if (ligne.contains("DTEND")) 
						{
							// date et heure de fin du rendez-vous
							dtend = ligne;
						}
						else if (ligne.contains("SUMMARY")) 
						{
							// numéro de vol ou type de rendez-vous (hotel par exemple)
							summary = ligne;				
						}


						else if (ligne.contains("DTSTAMP")) 
						{
							// date et heure de création du planning (utile pour savoir s'il a été modifié)
							dtstamp = ligne;
						}

						else if (ligne.contains("DESCRIPTION")) 
						{

							description = ligne;
							//System.out.println(ligne);

						}
						else if (ligne.contains("LOCATION")) 
						{
							// lieu du début du rendez-vous
							location = ligne;
							//on passe maintenant les différentes ligne à l'épuration
							startEpur(dtstart, dtend, summary, dtstamp, location, description );
						}
						ligne = planning.readLine();
					}
				}
				//lire la ligne d'apres 
				ligne = planning.readLine();
			}
			planning.close(); //fermeture du fichier ical
			startTri();
			System.out.println(caseCourante + " cours ajoutés");
			startInitLundi(); // ecriture de la fin du fichier XML
		}

		//en cas d'erreur 
		catch (FileNotFoundException e1) {
			// Erreur : le fichier n'existe pas
			System.out.println("Erreur: le fichier n'es pas accessible surement parce qu'il n'existe pas ou n'est pas dans le bon dossier");
		} catch (IOException e) {
			// Erreur : problème de lecture fichier
			System.out.println("Erreur: Le fichier n'a pu être lu");
		}
	}
	/**
	 * cette methode suprime l'intitulé des evenements
	 * 
	 * @param dtstamp variable contenant la ligne derniere modification
	 * @param dtstart variable contenant la ligne d'heure de debut du cours
	 * @param dtend dtend variable contenant la ligne d'heure de fin du cours
	 * @param summary variable contenant la ligne du nom du cours
	 * @param location variable contenant la ligne de la salle ou le lieu du cours
	 * @param description variable contenant la ligne de la description du cours, et des profs assurant le cours
	 * @param lastmodified variable contenant la ligne de la derniere modification
	 * @param diffgmt variable contenant la différence d'heure
	 */
	private void startEpur(String dtstart, String dtend, String summary, String dtstamp, String location, String description)
	{
		char temp1[]; //conversion en tableau temporaire 1 pour conversion
		char temp2[]; //conversion en tableau temporaire 2 pour conversion
		char temp3[]; //conversion en tableau temporaire 3 pour conversion
		char temp4[]; //conversion en tableau temporaire 4 pour conversion
		char temp5[]; //conversion en tableau temporaire 5 pour conversion
		char temp6[]; //conversion en tableau temporaire 6 pour conversion
		String temp7[];
		char temp8[];

		String dtemp1 = ""; //variable temporaire convertie sous forme de String
		String dtemp2 = ""; //variable temporaire convertie sous forme de String
		String dtemp3 = ""; //variable temporaire convertie sous forme de String
		String dtemp4 = ""; //variable temporaire convertie sous forme de String
		String dtemp5 = ""; //variable temporaire convertie sous forme de String
		String dtemp6 = ""; //variable temporaire convertie sous forme de String
		String dtemp7 = "";
		String dtemp9 = "";
		String dtemp10 = "";
		String tempDesc = "";


		temp1 = dtstamp.toCharArray(); //converision en tableau
		temp2 = dtstart.toCharArray(); //converision en tableau
		temp3 = dtend.toCharArray(); //converision en tableau
		temp4 = summary.toCharArray(); //converision en tableau
		temp5 = location.toCharArray(); //converision en tableau
		temp6 = description.toCharArray(); //converision en tableau


		//epuration DTSTAMP
		for(int i =  8 ; i < temp1.length ; i++)
		{
			dtemp1 = dtemp1 + temp1[i];
		}

		//Epuration DTstart
		//sortie de l'heure
		for(int i = 35 ; i < 41; i++)
		{
			dtemp2 = dtemp2 + temp2[i];
		}
		//sortie de la date
		for (int i = 26 ; i <34 ; i++)
		{
			dtemp7 = dtemp7 + temp2[i];
		}

		//epuration DTEND
		//heure dtend
		for(int i = 33 ; i < 39; i++)
		{
			dtemp3 = dtemp3 + temp3[i];
		}
		//sortie de la date dtend
		for (int i = 24 ; i <32 ; i++)
		{
			dtemp9 = dtemp9 + temp3[i];
		}

		//epuration SUMMARY
		for(int i =  8 ; i < temp4.length ; i++)
		{
			dtemp4 = dtemp4 + temp4[i];
		}

		//epuration Location
		for(int i =  9 ; i < temp5.length ; i++)
		{
			dtemp5 = dtemp5 + temp5[i];
		}

		//epuration DESCRIPTION
		for(int i =  27 + temp5.length ; i < temp6.length ; i++)
		{
			tempDesc = tempDesc + temp6[i];			
		}

		temp7 = tempDesc.split("Cours");

		dtemp6 = temp7[0];

		temp8 = dtemp6.toCharArray();

		for(int i =0; i<temp8.length -4; i++)
		{
			dtemp10 = dtemp10 + temp8[i];
		}

		//traitement des heures et minutes des cours
		char tempStart[];
		char tempFin[];
		tempStart = dtemp2.toCharArray();
		tempFin = dtemp3.toCharArray();
		String heureStart = "";
		String minuteStart = "";
		String heureFin = "";
		String minuteFin = "";

		//sorti de l'heure de début
		for (int i = 0 ; i<2; i++)
		{
			heureStart = heureStart + tempStart[i];
		}
		//sorti des minutes du début
		for (int i= 2; i<4; i++)
		{
			minuteStart = minuteStart + tempStart[i];
		}

		//sorti de l'heure de fin
		for (int i= 0 ; i<2; i++)
		{
			heureFin = heureFin + tempFin[i];
		}
		//sorti minute de fin
		for(int i = 2; i<4; i++)
		{
			minuteFin = minuteFin + tempFin[i];
		}
		startStock(dtemp7, dtemp5, dtemp10, heureStart, minuteStart);
	}



	private void startStock( String dtemp7, String dtemp5, String dtemp10, String heureStart, String minuteStart)
	{
		//début de l'écriture
		//on passe le cours dans la variable texte
		String text = "<cour><nom>"+ heureStart + "H " + minuteStart +"</nom><prof>"+ dtemp10 +"</prof><lieu>"+ dtemp5 +"</lieu><pic></pic></cour>";

		int dtemp8= Integer.parseInt(dtemp7);

		//on passe le cours dans deux tableau pour le tri
		day[caseCourante] = dtemp8; //ajoute la date au tableau la date
		cours[caseCourante] = text; // ajoute le cours dans le tabeau des cours
		caseCourante = caseCourante + 1; // incrementation pour parcourir le tableau
		//System.out.println(dtemp8);
	}

	private void startTri()
	{
		//on tri maintenant les cours dans l'ordre en fonction de la date, le tri en fonction de l'heure étant natif dans le fichier iCal
		int j = 0;
		int k = 0;
		int l = 0;
		int m = 0;
		int n = 0;
		int o = 0;


		//on utilise un tableau par jours
		while ((day[j] == day[j+1])) //si la case courante est égal à la case suivant
		{			
			j++;
			//System.out.println(j);
		}

		j= j +1;
		for (int a = 0 ; a<j; a++)
		{
			day1[a] = day1[a] + day[a];
			cours1[a] = cours[a];
		}
		k = k + j +1;

		while ((day[k] == day[k+1])) //si la case courante est égal à la case suivant
		{
			k++;
		}

		for (int a = j; a<=k; a++)
		{
			day2[a] = day2[a] + day[a];
			cours2[a] = cours[a];
		}
		l = l + k +1;

		while ((day[l] == day[l+1])) //si la case courante est égal à la case suivant
		{
			l++;
		}
		for (int a = k+1; a<=l; a++)
		{
			day3[a] = day3[a] + day[a];
			cours3[a] = cours[a];
		}
		m = m + l +1;

		while ((day[m] == day[m+1])) //si la case courante est égal à la case suivant
		{
			m++;
		}
		for (int a = l+1; a<=m; a++)
		{
			day4[a] = day4[a] + day[a];
			cours4[a] = cours[a];
		}
		n = n + m +1;

		while ((day[n] == day[n+1])) //si la case courante est égal à la case suivant
		{
			n++;
		}
		for (int a = m+1; a<=n; a++)
		{
			day5[a] = day5[a] + day[a];
			cours5[a] = cours[a];
		}		
		o = o + n +1;


		while ((day[o] == day[o+1]) && day[o] != 0) //si la case courante est égal à la case suivant
		{
			o++;
		}
		for (int a = n+1; a<=o; a++)
		{
			day6[a] = day6[a] + day[a];
			cours6[a] =  cours[a];
		}
	}


	/**
	 * on appelle la méthode d'écriture des fichiers xml, 3 méthodes par jours
	 */
	private void startInitLundi() 
	{
		PrintWriter ecri;
		try
		{
			ecri = new PrintWriter(new FileWriter(lundi, false)); //le true permet la concatenation voir constructeur FileWriter
			ecri.print("<?xml version=\"1.0\" encoding=\"UTF-8\"?><cours>");
			ecri.flush();
			ecri.close();
			System.out.println("debut de la conversion");

		}//try
		catch (NullPointerException a)
		{
			System.out.println("Erreur : pointeur null");
		}
		catch (IOException a)
		{
			System.out.println("Erreur: Probleme lors de l'ecriture de la balise de debut du fichier XML");
		}		
		startEcriLundi();  
	}



	private void startEcriLundi()
	{
		for (int i = 0 ; i<day1.length ; i++)
		{
			if( day1[i] != 0)
			{
				PrintWriter ecrilundi;
				try
				{
					ecrilundi = new PrintWriter(new FileWriter(lundi, true)); //le true permet la concatenation voir constructeur FileWriter
					ecrilundi.print(cours1[i]);
					ecrilundi.flush();
					ecrilundi.close();
					System.out.println("ajout d'un cours");
				}//try
				catch (NullPointerException a)
				{
					System.out.println("Erreur : pointeur null");
				}
				catch (IOException a)
				{
					System.out.println("Erreur: Probleme lors de l'ecriture d'un cours");
				};
			}
		}
		startFinLundi();
	}

	private void startFinLundi()
	{
		try
		{
			PrintWriter ecrilundi;

			ecrilundi = new PrintWriter(new FileWriter(lundi, true)); //le true permet la concatenation (voir constructeur FileWriter)
			ecrilundi.print("</cours>");
			ecrilundi.flush();
			ecrilundi.close();
			System.out.println("conversion terminée");
		}//try
		catch (NullPointerException a)
		{
			System.out.println("Erreur : pointeur null");
		}
		catch (IOException a)
		{
			System.out.println("Erreur: Probleme lors de l'ecriture de la balise de fin du fichier XML");
		}
		startInitMardi();
	}
	private void startInitMardi()
	{
		PrintWriter ecri;
		try
		{
			ecri = new PrintWriter(new FileWriter(mardi, false)); //le true permet la concatenation voir constructeur FileWriter
			ecri.print("<?xml version=\"1.0\" encoding=\"UTF-8\"?><cours>");
			ecri.flush();
			ecri.close();
			System.out.println("debut de la conversion");

		}//try
		catch (NullPointerException a)
		{
			System.out.println("Erreur : pointeur null");
		}
		catch (IOException a)
		{
			System.out.println("Erreur: Probleme lors de l'ecriture de la balise de debut du fichier XML");
		}
		startEcriMardi();  
	}


	private void startEcriMardi()
	{
		for (int i = 0 ; i<day2.length ; i++)
		{
			if( day2[i] != 0)
			{
				PrintWriter ecrilundi;
				try
				{
					ecrilundi = new PrintWriter(new FileWriter(mardi, true)); //le true permet la concatenation voir constructeur FileWriter
					ecrilundi.print(cours2[i]);
					ecrilundi.flush();
					ecrilundi.close();
					System.out.println("ajout d'un cours");
				}//try
				catch (NullPointerException a)
				{
					System.out.println("Erreur : pointeur null");
				}
				catch (IOException a)
				{
					System.out.println("Erreur: Probleme lors de l'ecriture d'un cours");
				};
			}
		}
		startFinMardi();
	}

	private void startFinMardi()
	{
		try
		{
			PrintWriter ecrilundi;

			ecrilundi = new PrintWriter(new FileWriter(mardi, true)); //le true permet la concatenation (voir constructeur FileWriter)
			ecrilundi.print("</cours>");
			ecrilundi.flush();
			ecrilundi.close();
			System.out.println("conversion terminée");
		}//try
		catch (NullPointerException a)
		{
			System.out.println("Erreur : pointeur null");
		}
		catch (IOException a)
		{
			System.out.println("Erreur: Probleme lors de l'ecriture de la balise de fin du fichier XML");
		}
		startInitMercredi();
	}
	private void startInitMercredi()
	{
		PrintWriter ecri;
		try
		{
			ecri = new PrintWriter(new FileWriter(mercredi, false)); //le true permet la concatenation voir constructeur FileWriter
			ecri.print("<?xml version=\"1.0\" encoding=\"UTF-8\"?><cours>");
			ecri.flush();
			ecri.close();
			System.out.println("debut de la conversion");

		}//try
		catch (NullPointerException a)
		{
			System.out.println("Erreur : pointeur null");
		}
		catch (IOException a)
		{
			System.out.println("Erreur: Probleme lors de l'ecriture de la balise de debut du fichier XML");
		}
		startEcriMercredi();  
	}


	private void startEcriMercredi()
	{
		for (int i = 0 ; i<day3.length ; i++)
		{
			if( day3[i] != 0)
			{
				PrintWriter ecrilundi;
				try
				{
					ecrilundi = new PrintWriter(new FileWriter(mercredi, true)); //le true permet la concatenation voir constructeur FileWriter
					ecrilundi.print(cours3[i]);
					ecrilundi.flush();
					ecrilundi.close();
					System.out.println("ajout d'un cours");
				}//try
				catch (NullPointerException a)
				{
					System.out.println("Erreur : pointeur null");
				}
				catch (IOException a)
				{
					System.out.println("Erreur: Probleme lors de l'ecriture d'un cours");
				};
			}
		}
		startFinMercredi();
	}

	private void startFinMercredi()
	{
		try
		{
			PrintWriter ecrilundi;

			ecrilundi = new PrintWriter(new FileWriter(mercredi, true)); //le true permet la concatenation (voir constructeur FileWriter)
			ecrilundi.print("</cours>");
			ecrilundi.flush();
			ecrilundi.close();
			System.out.println("conversion terminée");
		}//try
		catch (NullPointerException a)
		{
			System.out.println("Erreur : pointeur null");
		}
		catch (IOException a)
		{
			System.out.println("Erreur: Probleme lors de l'ecriture de la balise de fin du fichier XML");
		}
		startInitJeudi();
	}
	private void startInitJeudi()
	{
		PrintWriter ecri;
		try
		{
			ecri = new PrintWriter(new FileWriter(jeudi, false)); //le true permet la concatenation voir constructeur FileWriter
			ecri.print("<?xml version=\"1.0\" encoding=\"UTF-8\"?><cours>");
			ecri.flush();
			ecri.close();
			System.out.println("debut de la conversion");

		}//try
		catch (NullPointerException a)
		{
			System.out.println("Erreur : pointeur null");
		}
		catch (IOException a)
		{
			System.out.println("Erreur: Probleme lors de l'ecriture de la balise de debut du fichier XML");
		}
		startEcriJeudi();  
	}


	private void startEcriJeudi()
	{
		for (int i = 0 ; i<day4.length ; i++)
		{
			if( day4[i] != 0)
			{
				PrintWriter ecrilundi;
				try
				{
					ecrilundi = new PrintWriter(new FileWriter(jeudi, true)); //le true permet la concatenation voir constructeur FileWriter
					ecrilundi.print(cours4[i]);
					ecrilundi.flush();
					ecrilundi.close();
					System.out.println("ajout d'un cours");
				}//try
				catch (NullPointerException a)
				{
					System.out.println("Erreur : pointeur null");
				}
				catch (IOException a)
				{
					System.out.println("Erreur: Probleme lors de l'ecriture d'un cours");
				};
			}
		}
		startFinJeudi();
	}

	private void startFinJeudi()
	{
		try
		{
			PrintWriter ecrilundi;

			ecrilundi = new PrintWriter(new FileWriter(jeudi, true)); //le true permet la concatenation (voir constructeur FileWriter)
			ecrilundi.print("</cours>");
			ecrilundi.flush();
			ecrilundi.close();
			System.out.println("conversion terminée");
		}//try
		catch (NullPointerException a)
		{
			System.out.println("Erreur : pointeur null");
		}
		catch (IOException a)
		{
			System.out.println("Erreur: Probleme lors de l'ecriture de la balise de fin du fichier XML");
		}
		startInitVendredi();
	}
	private void startInitVendredi()
	{
		PrintWriter ecri;
		try
		{
			ecri = new PrintWriter(new FileWriter(vendredi, false)); //le true permet la concatenation voir constructeur FileWriter
			ecri.print("<?xml version=\"1.0\" encoding=\"UTF-8\"?><cours>");
			ecri.flush();
			ecri.close();
			System.out.println("debut de la conversion");

		}//try
		catch (NullPointerException a)
		{
			System.out.println("Erreur : pointeur null");
		}
		catch (IOException a)
		{
			System.out.println("Erreur: Probleme lors de l'ecriture de la balise de debut du fichier XML");
		}
		startEcriVendredi();  
	}


	private void startEcriVendredi()
	{
		for (int i = 0 ; i<day5.length ; i++)
		{
			if( day5[i] != 0)
			{
				PrintWriter ecrilundi;
				try
				{
					ecrilundi = new PrintWriter(new FileWriter(vendredi, true)); //le true permet la concatenation voir constructeur FileWriter
					ecrilundi.print(cours5[i]);
					ecrilundi.flush();
					ecrilundi.close();
					System.out.println("ajout d'un cours");
				}//try
				catch (NullPointerException a)
				{
					System.out.println("Erreur : pointeur null");
				}
				catch (IOException a)
				{
					System.out.println("Erreur: Probleme lors de l'ecriture d'un cours");
				};
			}
		}
		startFinVendredi();
	}

	private void startFinVendredi()
	{
		try
		{
			PrintWriter ecrilundi;

			ecrilundi = new PrintWriter(new FileWriter(vendredi, true)); //le true permet la concatenation (voir constructeur FileWriter)
			ecrilundi.print("</cours>");
			ecrilundi.flush();
			ecrilundi.close();
			System.out.println("conversion terminée");
		}//try
		catch (NullPointerException a)
		{
			System.out.println("Erreur : pointeur null");
		}
		catch (IOException a)
		{
			System.out.println("Erreur: Probleme lors de l'ecriture de la balise de fin du fichier XML");
		}
		startInitSamedi();
	}
	private void startInitSamedi()
	{
		PrintWriter ecri;
		try
		{
			ecri = new PrintWriter(new FileWriter(samedi, false)); //le true permet la concatenation voir constructeur FileWriter
			ecri.print("<?xml version=\"1.0\" encoding=\"UTF-8\"?><cours>");
			ecri.flush();
			ecri.close();
			System.out.println("debut de la conversion");

		}//try
		catch (NullPointerException a)
		{
			System.out.println("Erreur : pointeur null");
		}
		catch (IOException a)
		{
			System.out.println("Erreur: Probleme lors de l'ecriture de la balise de debut du fichier XML");
		}
		startEcriSamedi();  
	}


	private void startEcriSamedi()
	{
		for (int i = 0 ; i<day6.length ; i++)
		{
			if( day6[i] != 0)
			{
				PrintWriter ecrilundi;
				try
				{
					ecrilundi = new PrintWriter(new FileWriter(samedi, true)); //le true permet la concatenation voir constructeur FileWriter
					ecrilundi.print(cours6[i]);
					ecrilundi.flush();
					ecrilundi.close();
					System.out.println("ajout d'un cours");
				}//try
				catch (NullPointerException a)
				{
					System.out.println("Erreur : pointeur null");
				}
				catch (IOException a)
				{
					System.out.println("Erreur: Probleme lors de l'ecriture d'un cours");
				};
			}
		}
		startFinSamedi();
	}

	private void startFinSamedi()
	{
		try
		{
			PrintWriter ecrilundi;

			ecrilundi = new PrintWriter(new FileWriter(samedi, true)); //le true permet la concatenation (voir constructeur FileWriter)
			ecrilundi.print("</cours>");
			ecrilundi.flush();
			ecrilundi.close();
			System.out.println("conversion terminée");
		}//try
		catch (NullPointerException a)
		{
			System.out.println("Erreur : pointeur null");
		}
		catch (IOException a)
		{
			System.out.println("Erreur: Probleme lors de l'ecriture de la balise de fin du fichier XML");
		}
	}
}

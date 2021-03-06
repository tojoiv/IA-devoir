/************************
* Devoir PPC - M1 App 
* Binome : Nom1 Nom 2 	(TODO)
*
* Modèle choix.mod
* Description : TODO
*
************************/
using CP;

string   nom = ...;					/* nom de l'instance */
{string} fichiersDonnees = ...;		/* ens des chemins vers les fichiers décrivant l'instance */
int cardFD = card (fichiersDonnees);
range r = 1..cardFD; 


// Prétraitement

//string tabFD [r] = [ e : e | e in fichiersDonnees]; 

/************************************************************************
* Lecture du fichier d'instance
************************************************************************/

/* TODO 
Déclaration des structures de données utiles pour lire 
les fichiers décrivant l'instance.
*/



execute {  
	includeScript("lectureInstance.js");	// Permet d'inclure un fichier de script
	for (s in fichiersDonnees){
		lecture (s);
	}	
}



main {

	var source = new IloOplModelSource("choixTraitement.mod");
	var cp = new IloCP();
	var def = new IloOplModelDefinition(source);
	var opl = new IloOplModel(def,cp);
	//thisOplModel.generate();
	//var data = new IloOplDataSource("./dat/sessions.dat");
	
	var data_session = new IloOplDataSource("./dat/sessions.dat");
	var data_pit = new IloOplDataSource("./dat/pits_Rio_1.dat");
	var data_zone = new IloOplDataSource("./dat/zones.dat");
	var data_transfert_zone = new IloOplDataSource("./dat/transferts_zones.dat");
	var data_transfert_pit = new IloOplDataSource("./dat/transferts_pits.dat");

	opl.addDataSource(data_session);
	opl.addDataSource(data_pit);
	opl.addDataSource(data_zone);
	opl.addDataSource(data_transfert_zone);
	opl.addDataSource(data_transfert_pit);
	//thisOplModel.addDataSource(data);
	//thisOplModel.generate();
	opl.generate();
	
}


/************************************************************************
* Prétraitement sur les données de l'instance (si besoin)
************************************************************************/

/* TODO 
Déclaration des structures de données utiles pour faciliter
l'expression du modèle
*/


/************************************************************************
* Variables de décision
************************************************************************/

/* TODO */

/************************************************************************
* Contraintes du modèle 					(NB : ne peut être mutualisé)
************************************************************************/

/* TODO */


/************************************************************************
* Contrôle de flux  (si besoin)
************************************************************************/

/* TODO */

/************************************************************************
* PostTraitement
************************************************************************/

/* TODO */


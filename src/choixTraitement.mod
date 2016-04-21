/************************
* Devoir PPC - M1 App 
* Binome : Nom1 Nom 2 	(TODO)
*
* Modèle choix.mod
* Description : TODO
*
************************/
using CP;


/************************************************************************
* Lecture du fichier d'instance
************************************************************************/

/* TODO 
Déclaration des structures de données utiles pour lire 
les fichiers décrivant l'instance.
*/




tuple Session {
	string ids;
	string sport;
	int jour;
	int debut;
	int fin;
	string installation;
	
}

tuple Pit {
	string idP;
	int duree;
	int debut;
	int fin;
	{int} jours;
}

tuple Zone {
	string idZ;
	string  installation;
	int avant;
	int apres;
}

tuple Transfert {
	string idLieuDepart;
	string idLieuArrivee;
	int duree;	
}



{Session} session = ...;
{Pit} pit = ...;
{Zone} zone = ...;
{Transfert} transfert = ...;


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


/************************
* Devoir PPC - M1 App 
* Binome : Nom1 Nom2 	(TODO)
*
* Fonctions de script utiles pour la lecture des fichiers d'instance
************************/

// NB comme pour n'importe quel langage de programmation, pour faciliter la 
// lisibilité de votre code, n'hésitez pas à le décomposer en plusieurs 
// fonctions

/* TODO */
//var s = "1";

function lecture (nom_fichier){
	var fIn = new IloOplInputFile (nom_fichier);
	writeln ("nom fichier =", nom_fichier);
	//var fIn = new IloOplInputFile ("test1.txt");
	var tab_nom = nom_fichier.split ("/");
	var str_ln = tab_nom.length;
	var nomf = (tab_nom[str_ln-1]).split("");
	//writeln("str_ln ==", str_ln);
//	var s = new Array(str_ln);
	var nomf_ln = nomf.length;
	var str = "";
	//writeln ("tab[0]=", tab_nom[0], tab_nom[1]);
	//var test = tab_nom[tab_nom.lenght];
	//writeln ("test = ", test);
	//var te = "";
	//for (var i = 0 ; i <= test.lenght; i ++){
	for (var i = 0 ; i < nomf_ln - 4  ; i ++){
		//s[i] = "" + tab_nom[i];
		str =  str + nomf[i];
		//writeln ("dans la boucle");
		
	}
	
	str = "./dat/" + str + ".dat";
	
	//writeln ("te == ", te);
	//writeln ("s[0] ==", str[0]);
	writeln ("nom fichier apres ===", str);
	//var fOut = new IloOplOutputFile ("./dat/bidon.dat");
	var fOut = new IloOplOutputFile (str);
	//var fOut = new IloOplOutputFile ("test1.dat");
	if (fIn.exists) {
     var s;
     var verif = 0;
     //var reg = new RegExp ("[ \t]+", "m");
     //fOut.writeln ("test1 = {");
     var virgule_out = "";
     while (!fIn.eof) {
	      s=fIn.readline();	      
	      //tab = s.split (/[ \t]+/);
	      if (s != "" && s.charAt(0) != "\t" && s.charAt(0) != " " && s.charAt(0) != "/"){		      
		      var space = s.split (" ");
		      var det_ident = space[0].split ("\t");
		      var id_ln = det_ident.length;		      
		      var ident = "";
		      if (id_ln != 1 ){
		      		ident = det_ident[0];
		      } else {
		      	 	ident = space [0];
		      }
		      var sp_ln = space.length;
		      var virgule_in = "";
		      var string_Pits = "";
		      //var ident = space[0];
		      //var ident = det_ident;
		      writeln ("ident =====", ident);
		      var av_ap = new Array (2);
		      av_ap[0] = -1;
		      av_ap[1] = -1;
		      var i_aa = 0;
		      if (verif == 0){
		      		fOut.writeln (ident, "={");
		      		verif = -1;		  	
		      }
		      
		      fOut.writeln (virgule_out);
		      fOut.write ("<");
		      for (var i = 0 ; i < sp_ln ; i ++ ){	      	 
	      	 	 var tabu = space [i].split ("\t");
		  		 var tb_ln = tabu.length;
		  		 //if (i == 0){
  		 			//ident = tabu[i];
  		 		 //}

		  		 for (var j = 0; j < tb_ln ; j ++){
		  		 	if (tabu[j] != "" && tabu[j] != ident){
		  		 		//str = str.concat ("", )
		  		 		//writeln ("tabu premier ", tabu[j].charAt(0));
		  		 		
		  		 		//var total_split = tabu[j].split("");
		  		 		var prim = (tabu[j].charAt(0));//total_split[0];//.charAt(0);
		  		 		//var prim2 = (prim * 1) + 100 ; 
		  		 		//writeln( "primm ===", prim);
		  		 		if ( prim != 0 && prim != 1 && prim != 2 && prim != 3 && prim != 4 && 
		  		 			 prim != 5 && prim != 6 && prim != 7 && prim != 8 && prim != 9 ) 							{		  		 		
		  		 		//writeln ("prim ===", prim + 5 );
		  		 		//if (prim){
		  		 			//writeln("Nan Reussi");
		  		 			fOut.write (virgule_in,"\"",tabu[j],"\"");
		  		 			virgule_in = ",";
		  		 		} else {		  		 			
		  		 			//writeln("Pas Nan");
		  		 			//fOut.write (virgule_in,tabu[j]);
		  		 			var dotdot = tabu [j].split (":");
		  		 			var dd_ln = dotdot.length;
		  		 			// Cas des heures séparés par des :
		  		 			if (dd_ln == 2){
		  		 				var min = dotdot[0] * 60 +  dotdot [1] * 1;
		  		 				fOut.write (virgule_in,min);
		  		 			}		  		 			
		  		 			else {
		  		 				var comma = dotdot[0].split (",");
		  		 				var cm_ln = comma.length;
		  		 				
		  		 				// un seul element
		  		 				if (cm_ln == 1){
		  		 					if (ident == "zone"){
		  		 						av_ap[i_aa] = comma[0];
		  		 						i_aa ++;
		  		 						
	  		 							/*fOut.write (",{");
									      	fOut.write (string_Pits);
									      	fOut.write ("}");*/
		  		 					} else {
		  		 						 fOut.write (virgule_in, comma[0]);
		  		 					}
		  		 					
		  		 					
		  		 					
		  		 				}
		  		 				// Cas des jours d'ouverture des pits
		  		 				else {
		  		 					//write ("plus d'un seul element");
		  		 					var jourJO = new Array (31);
		  		 					var virgule_jour = "";
	 								for (var x = 2; x <=31; x++ ){
	 									jourJO[x] = x;
	 								}

	 								writeln ("ident ====", ident);

		  		 					
	  		 						//fOut.write (virgule_in, "{");
	  		 						//if (ident == "pit"){
  		 							for (var k = 0 ; k < cm_ln; k ++){
  		 								var bar = comma [k].split ("-");
  		 								var br_ln = bar.length;

 // 		 								writeln ("br_ln ===", br_ln);
  		 								
  		 								if (br_ln == 1){
  		 									for (var x = 2; x <=31; x++ ){
  		 										if (bar[0] == x){
  		 											jourJO[x] = 0;
  		 										}
  		 									}
  		 								} else {
  		 									var inf = bar[0];
  		 									var sup = bar[1];

  		 									for (var s = 1 * inf; s <= 1 * sup; s ++){
  		 										jourJO [s] = 0;
  		 									}
  		 								}	  		 								
  		 							}	

	 								for (var x = 2; x <=31; x++ ){
	 									if (jourJO[x] != 0) {
	 										string_Pits = string_Pits + virgule_jour+ jourJO[x];
	 										//fOut.write(virgule_jour, jourJO[x]);
	 										virgule_jour = ",";
										}
	 								}
	  		 						//}
	  		 						//fOut.write ("}");		  		 					 
		  		 				}
		  		 			}
		  		 		}
		  		 				  		 		
		  		 	}
		  		 }

		      }

		      //writeln ("ident ====", ident);
		      if (ident == "pit"){
		      	  fOut.write (",{");
		      	  fOut.write (string_Pits);
		      	  fOut.write ("}");
		      }
		      
		      if (ident == "zone"){
		      	  if (av_ap [0] == -1){
		      	  	writeln ("avant = ", av_ap [0]);
		      	  	writeln ("avant = ", av_ap [1]);
		      	  	av_ap[0] = 3;
		      	  }
		      	  if (av_ap [1] == -1){
		      	  	av_ap [1] = 20;
		      	  }
		      	  fOut.write (virgule_in, av_ap [0]);
		      	  fOut.write (virgule_in, av_ap [1]);
		      	  
		      }
		      
		      fOut.write (">");
		      virgule_out = ",";

	      }

	      

	   //fOut.writeln ("<",tab[0],">");
      //fOut.writeln("{", sp_ln, "}");
     }
     fOut.writeln ();
     fOut.writeln ();
     fOut.writeln ("};");

     fIn.close();
   } else {
   	writeln ("======================================fichier non existant==================================");
   }


};

function lecture_dat (nom_dat){
 	//{Session} session = IloOplInputFile(nom_dat);
}

// lecture

execute {
	var fIn = new IloOplInputFile ("test1.txt");
	var fOut = new IloOplOutputFile ("test1.dat");
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
		      var sp_ln = space.length;
		      var virgule_in = "";
		      var string_Pits = "";
		      var ident = space[0];
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
		  		 			 prim != 5 && prim != 6 && prim != 7 && prim != 8 && prim != 9 ) {		  		 		
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
		  		 				//writeln("dotdot[1] =====", dotdot [1]);
		  		 				var min = dotdot[0] * 60 +  dotdot [1] * 1;
		  		 				//var min = dotdot [1] * 23;
		  		 				fOut.write (virgule_in,min);
		  		 			}		  		 			
		  		 			else {
		  		 				//writeln ("dotdot[0] ==", dotdot[0]);
		  		 				//writeln ("valeur de dd_ln =========", dd_ln);
		  		 				var comma = dotdot[0].split (",");
		  		 				var cm_ln = comma.length;
		  		 				//writeln ("valeur de cm_ln =========", cm_ln);
		  		 				// Cas des simples nombres
		  		 				if (cm_ln == 1){
		  		 					//write ("un seul element");
		  		 					//write ("je suis rentré dans le truc 2 =================================================");
		  		 					fOut.write (virgule_in, comma[0]);
		  		 					
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
     writeln("the file test1.txt doesn't exist");
   }
}


// lecture
range r = 0..4;

execute {
	var fIn = new IloOplInputFile ("test1.txt");
	var fOut = new IloOplOutputFile ("test1.dat");
	if (fIn.exists) {
     fOut.writeln("the file test1.txt exists");
     var s;
     //var reg = new RegExp ("[ \t]+", "m");
     fOut.writeln ("test1 = {");
     while (!fIn.eof) {
	      s=fIn.readline();
	      //tab = s.split (/[ \t]+/);
	      if (s != ""){
		      var space = s.split (" ");
		      var sp_ln = space.length;
		      var virgule = "";
		      fOut.write ("<");
		      for (var i = 0 ; i < sp_ln ; i ++ ){	      	 
	      	 	 var tabu = space [i].split ("\t");
		  		 var tb_ln = tabu.length;
		  		 for (var j = 0; j < tb_ln ; j ++){
		  		 	if (tabu[j] != ""){
		  		 		//str = str.concat ("", )
		  		 		fOut.write (virgule,"\"",tabu[j],"\"");
		  		 		virgule = ",";
		  		 	}
		  		 }	  		 
		      }
		      fOut.writeln (">");
	      }

	      

	   //fOut.writeln ("<",tab[0],">");
      //fOut.writeln("{", sp_ln, "}");
     }

     fOut.writeln ("};");

     fIn.close();
   } else { 
     writeln("the file test1.txt doesn't exist");
   }
}


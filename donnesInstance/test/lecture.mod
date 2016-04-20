// lecture
range r = 0..4;

execute {
	var fIn = new IloOplInputFile ("test1.txt");
	var fOut = new IloOplOutputFile ("test1.dat");
	if (fIn.exists) {
     fOut.writeln("the file test1.txt exists");
     var s;
     var tab;
     //var reg = new RegExp ("[ \t]+", "m");
     while (!fIn.eof) {
      s=fIn.readline();
      //tab = s.split (/[ \t]+/);
      tab = s.split (" ");
      fOut.writeln ("test1 = {");
      for (var i in r ){
      	   fOut.writeln ("<",tab[i],">");
      }

	   //fOut.writeln ("<",tab[0],">");

      //fOut.writeln("{", s, "}");
     }
     fIn.close();
   } else { 
     writeln("the file test1.txt doesn't exist");
   }
}


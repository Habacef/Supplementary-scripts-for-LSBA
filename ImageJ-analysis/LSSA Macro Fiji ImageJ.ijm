run("Set Measurements...", "area integrated redirect=None decimal=3");
run("ROI Manager...");
name = getTitle();
setBatchMode(true);  
imgArray = newArray(nImages);   
for (i=0; i<nImages; i++) 
{     selectImage(i+1);     
imgArray[i] = getImageID(); 
  }      
a=0
for (i=0; i< imgArray.length; i++) {     selectImage(imgArray[i]); 
if(a==0) {
run("Specify...", "width=10 height=10 x=28.125 y=28.125 scaled");
waitForUser("Bitte ROI verschieben und im Manager ablegen");
selectImage(imgArray[i]); 
roiManager("add");

run("Specify...", "width=10 height=10 x=46.875 y=28.125 scaled");
waitForUser("Bitte ROI verschieben und im Manager ablegen");
selectImage(imgArray[i]); 
roiManager("add");

run("Specify...", "width=10 height=10 x=28.125 y=46.875 scaled");
waitForUser("Bitte ROI verschieben und im Manager ablegen");
selectImage(imgArray[i]); 
roiManager("add");

run("Specify...", "width=10 height=10 x=46.875 y=46.875 scaled");
waitForUser("Bitte ROI verschieben und im Manager ablegen");
selectImage(imgArray[i]); 
roiManager("add");
a=1;
	}
else {a=0;}

}

name = getTitle();

selectImage(imgArray[0]); 
roiManager("select", 0);
roiManager("measure");
roiManager("select", 1);
roiManager("measure");
roiManager("select", 2);
roiManager("measure");
roiManager("select", 3);
roiManager("measure");

selectImage(imgArray[1]); 
roiManager("select", 0);
roiManager("measure");
roiManager("select", 1);
roiManager("measure");
roiManager("select", 2);
roiManager("measure");
roiManager("select", 3);
roiManager("measure");

selectImage(imgArray[2]); 
roiManager("select", 4);
roiManager("measure");
roiManager("select", 5);
roiManager("measure");
roiManager("select", 6);
roiManager("measure");
roiManager("select", 7);
roiManager("measure");

selectImage(imgArray[3]); 
roiManager("select", 4);
roiManager("measure");
roiManager("select", 5);
roiManager("measure");
roiManager("select", 6);
roiManager("measure");
roiManager("select", 7);
roiManager("measure");

selectImage(imgArray[4]); 
roiManager("select", 8);
roiManager("measure");
roiManager("select", 9);
roiManager("measure");
roiManager("select", 10);
roiManager("measure");
roiManager("select", 11);
roiManager("measure");

selectImage(imgArray[5]); 
roiManager("select", 8);
roiManager("measure");
roiManager("select", 9);
roiManager("measure");
roiManager("select", 10);
roiManager("measure");
roiManager("select", 11);
roiManager("measure");

selectImage(imgArray[6]); 
roiManager("select", 12);
roiManager("measure");
roiManager("select", 13);
roiManager("measure");
roiManager("select", 14);
roiManager("measure");
roiManager("select", 15);
roiManager("measure");

selectImage(imgArray[7]); 
roiManager("select", 12);
roiManager("measure");
roiManager("select", 13);
roiManager("measure");
roiManager("select", 14);
roiManager("measure");
roiManager("select", 15);
roiManager("measure");

selectImage(imgArray[8]); 
roiManager("select", 16);
roiManager("measure");
roiManager("select", 17);
roiManager("measure");
roiManager("select", 18);
roiManager("measure");
roiManager("select", 19);
roiManager("measure");

selectImage(imgArray[9]); 
roiManager("select", 16);
roiManager("measure");
roiManager("select", 17);
roiManager("measure");
roiManager("select", 18);
roiManager("measure");
roiManager("select", 19);
roiManager("measure");

selectImage(imgArray[10]); 
roiManager("select", 20);
roiManager("measure");
roiManager("select", 21);
roiManager("measure");
roiManager("select", 22);
roiManager("measure");
roiManager("select", 23);
roiManager("measure");

selectImage(imgArray[11]); 
roiManager("select", 20);
roiManager("measure");
roiManager("select", 21);
roiManager("measure");
roiManager("select", 22);
roiManager("measure");
roiManager("select", 23);
roiManager("measure");

selectImage(imgArray[12]); 
roiManager("select", 24);
roiManager("measure");
roiManager("select", 25);
roiManager("measure");
roiManager("select", 26);
roiManager("measure");
roiManager("select", 27);
roiManager("measure");

selectImage(imgArray[13]); 
roiManager("select", 24);
roiManager("measure");
roiManager("select", 25);
roiManager("measure");
roiManager("select", 26);
roiManager("measure");
roiManager("select", 27);
roiManager("measure");

selectImage(imgArray[14]); 
roiManager("select", 28);
roiManager("measure");
roiManager("select", 29);
roiManager("measure");
roiManager("select", 30);
roiManager("measure");
roiManager("select", 31);
roiManager("measure");

selectImage(imgArray[15]); 
roiManager("select", 28);
roiManager("measure");
roiManager("select", 29);
roiManager("measure");
roiManager("select", 30);
roiManager("measure");
roiManager("select", 31);
roiManager("measure");

selectImage(imgArray[16]); 
roiManager("select", 32);
roiManager("measure");
roiManager("select", 33);
roiManager("measure");
roiManager("select", 34);
roiManager("measure");
roiManager("select", 35);
roiManager("measure");

selectImage(imgArray[17]); 
roiManager("select", 32);
roiManager("measure");
roiManager("select", 33);
roiManager("measure");
roiManager("select", 34);
roiManager("measure");
roiManager("select", 35);
roiManager("measure");

selectImage(imgArray[18]); 
roiManager("select", 36);
roiManager("measure");
roiManager("select", 37);
roiManager("measure");
roiManager("select", 38);
roiManager("measure");
roiManager("select", 39);
roiManager("measure");

selectImage(imgArray[19]); 
roiManager("select", 36);
roiManager("measure");
roiManager("select", 37);
roiManager("measure");
roiManager("select", 38);
roiManager("measure");
roiManager("select", 39);
roiManager("measure");

output = "Z:/processed/";

selectWindow("Results");
saveAs("Results", output+"Results of "+name+".xls");
run("Close");

roiManager("select all");
roiManager("Save", output+"ROIs of "+name+".zip");  
roiManager("select all");
roiManager("delete");
selectWindow("ROI Manager");
run("Close");
run("Close All");
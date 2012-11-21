<?php

/* AAAA Filter - Finds non AAAA products and flips their visibility status
 *
 */

error_reporting( E_ALL );

$CSVDelimiter = ',';
$CSVEnclosure = '"';

$CSVTitleColumn = 2;
$CSVVisibleColumn = 22;

$Filename = $_GET['file'];
$AAAAFilename = 'AAAA'.$Filename;


$fin = fopen('../tempEP/'.$Filename, 'r');
$fout = fopen('../tempEP/'.$AAAAFilename, 'w+');

if( !$fin or !$fout){
    echo "Error opening file\n";
    exit();
}

$AAAACount = 0;
$AAAAVisible = 0;
$TotalCount = 0;

while(($row = fgetcsv($fin, 0, $CSVDelimiter, $CSVEnclosure)) != FALSE){
    
    # First row holds column headings so ignore it
    if($TotalCount++ == 0){
        fputcsv( $fout ,$row, $CSVDelimiter, $CSVEnclosure );
        continue;
    }

    # Search the title column for AAAA 
    if( ! strstr( $row[$CSVTitleColumn] , "AAAA" ) ){

        # Mark non AAAA invisible
        $row[$CSVVisibleColumn] = "0";


    }else{

        if( $row[$CSVVisibleColumn] == 1){
            $AAAAVisible++;    
        }

        $AAAACount++;
    }

    fputcsv( $fout ,$row, $CSVDelimiter, $CSVEnclosure );
}

echo "AAAA: " . $AAAACount;
echo ";\n";
echo "AAAA-Visible: " . $AAAAVisible;
echo ";\n";
echo "Total: " . $TotalCount;
echo ";\n";

fclose($fin);
fclose($fout);

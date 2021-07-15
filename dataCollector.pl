#!/usr/bin/perl
use Excel::Writer::XLSX;

#All txt files
my @files = <./Data/*.txt>;
#Start writing data from first row
my $row = 1;

#Number of each column to excel
my $ComputermodelColumn = 0;
my $SerialnumberColumn = 1;
my $ProcesorColumn = 2;
my $MemoryColumn = 3;
my $DiskColumn = 4;
my $SystemversionColumn = 5;
my $ComputernameColumn = 6;
my $UsernameColumn = 7;
my $ApplicationsColumn = 8;
my $BrewColumn = 9;

#Create excel file
my $workbook = Excel::Writer::XLSX->new( 'perl.xlsx' );
#Create excel worsheet
$worksheet = $workbook->add_worksheet();

#Create names of columns at 0 row
$worksheet->write(0, 0, 'Computer Model');
$worksheet->write(0, 1, 'Serial Number');
$worksheet->write(0, 2, 'Procesor');
$worksheet->write(0, 3, 'Memory');
$worksheet->write(0, 4, 'Disk');
$worksheet->write(0, 5, 'System Version');
$worksheet->write(0, 6, 'Computer Name');
$worksheet->write(0, 7, 'Username');
$worksheet->write(0, 8, 'Applications');
$worksheet->write(0, 9, 'Brew');

#Loop for each txt file
foreach my $file (@files) {
  open (FILE, "<$file") || die $!;
	my @Allcontent = (<FILE>);
	close FILE || die $!;
	
	#Variables needed for obtaining data 
	my $mainData = "";
	my $flag = "";
	my @Apliactions = "";
	my @Brew = "";
	
	#Loop for each line of file
	foreach my $content (@Allcontent){

	#Get Header
	$header = substr($content, 0, index($content, ";"));
	
	#Write the data to specific column in relation to header
	if($header eq 'Computer model'){
	$mainData = substr($content, index($content, ";") +1 , -1);
	$worksheet->write($row, $ComputermodelColumn, [$mainData]);
	}

	if($header eq 'Serial number'){
	$mainData = substr($content, index($content, ";") +1 , -1);
	$worksheet->write($row, $SerialnumberColumn, [$mainData]);
	}

	if($header eq 'Procesor'){
	$mainData = substr($content, index($content, ";") +1 , -1);
	$worksheet->write($row, $ProcesorColumn, [$mainData]);
	}

	if($header eq 'Memory'){
	$mainData = substr($content, index($content, ";") +1 , -1);
	$worksheet->write($row, $MemoryColumn, [$mainData]);
	}

	if($header eq 'Disk'){
	$mainData = substr($content, index($content, ";") +1 , -1);
	$worksheet->write($row, $DiskColumn, [$mainData]);
	}

	if($header eq 'System Version'){
	$mainData = substr($content, index($content, ";") +1 , -1);
	$worksheet->write($row, $SystemversionColumn, [$mainData]);
	}

	if($header eq 'Computer name'){
	$mainData = substr($content, index($content, ";") +1 , -1);
	$worksheet->write($row, $ComputernameColumn, [$mainData]);
	}

	if($header eq 'Username'){
	$mainData = substr($content, index($content, ";") +1 , -1);
	$worksheet->write($row, $UsernameColumn, [$mainData]);
	}
	
	if($header eq 'Applications'){
	#This line must be ommited. Data of Applications starts from next line
	$flag = "Applications";
	next;
	}

	if($header eq 'Brew'){
	#This line must be ommited. Data of Brew starts from next line
	$flag = "Brew";
	next;
	}
		

	#Appliactions and Brew are arrays, so they have to be parse into one long string

	if($flag eq "Applications"){
	my $element = substr($content, rindex($content, "/") +1, -1);
	push(@Apliactions, $element);
	my $parse = join " || ", @Apliactions;
	$worksheet->write($row, $ApplicationsColumn, [$parse]);
		}

	if($flag eq "Brew"){
	my $element = substr($content, 0);
	push(@Brew, $element);
	my $parse = join " || ", @Brew;
	$worksheet->write($row, $BrewColumn, [$parse]);
		}
	}
	#Iterate rows of excel
	$row += 1;
}

$workbook->close();

	

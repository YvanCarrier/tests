#hanoi.
param (
[int]$nbdisks=0)


function MoveDisks {
	param (
		[int] $n=0,
		$Rodfrom,
		$Rodto,
		$Rodaux
	)
	if ( $n -lt 1 ) {
		return
	}
	$m=$n-1
	MoveDisks $m $Rodfrom $Rodaux $Rodto
	write-host "move Disk $n from $RodFrom to  $rodto"
	MoveDisks $m $Rodaux $Rodto $Rodfrom
}
#int main()
if ($nbdisks -gt 0) {
	write-host " running for $nbdisks `n"
	MOvedisks $nbDisks "A"  "C" "B"
	write-host "`done "
}

<# towerOfHanoi(n - 1, aux_rod, to_rod, from_rod);
}
id towerOfHanoi(int n, char from_rod, char to_rod,
                  char aux_rod)
{
    if (n == 0) {
        return;
    }
    towerOfHanoi(n - 1, from_rod, aux_rod, to_rod);
    cout << "Move disk " << n << " from rod " << from_rod
         << " to rod " << to_rod << endl;
     #>
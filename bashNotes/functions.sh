function hello {
	echo "hello"
}

function ntmy {
	echo "Nice to meet you, $1"
}

function addseq {
	sum=0
	
	for element in $@
	do
		let sum=sum+$element

	done
	
	echo $sum
}


function plier {
	product=1
	for element in $@
	do
		let product=product*element
	done
	echo $product
}

function fib {
	a=0
	b=1
	for (( i=0; i<$1; i++ ))
	do
		echo "$a"
		fn=$((a + b))
		a=$b
		b=$fn
	done
}

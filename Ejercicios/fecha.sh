# Segun la fecha te dice si es finde  de semana

dia=$(date  +%u)

if [ $dia -gt 5 ]; then
	echo "Es finde de semana"
else
	echo "Es dia laborable"
fi


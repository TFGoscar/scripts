mes=$(date | awk '{print $2}')
day=$(date | awk '{print $3}')
hora=$(date | awk '{print $4}' | cut -c 1-2)
minuto=$(date | awk '{print $4}' | cut -c 4-5)

echo "%{F#cf9fff}$mes %{F#ffffff}$day %{F#cf9fff}| %{F#ffffff}$hora%{F#cf9fff}:%{F#ffffff}$minuto"


# Morado --> %{F#cf9fff}
# Blanco --> %{F#ffffff}


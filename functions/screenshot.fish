function screenshot -d "Take a screenshot of the root or a window"
	set -l window 'root'
	set -l pictures '/home/dvberkel/Pictures/'
	if count $argv > 0
		switch $argv[1]
			case window
				set window (xprop -root | grep "_NET_ACTIVE_WINDOW(WINDOW)" | cut -d ' ' -f 5)
			case '*'
				set window root
		end
	end
	set -l name (date +%Y-%m-%d.%H:%M:%S.png)
	import -border -window $window $pictures/$name
	ln -sf $pictures/$name $pictures/last
end
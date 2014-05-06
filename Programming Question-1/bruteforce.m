function inver=bruteforce(data)
	inver=0;
	i = 1;
	while i <= length(data)
		j = i + 1;
		while j <= length(data)
			if data(i) > data(j)
				inver++;
			end
			j++;
		end
		i++;
	end
end

function inversion=findsplitinversion(data_a, data_b)
	i = 1;
	j = 1;
	k = 1;
	data_a_sorted=zeros(1);
	data_b_sorted=zeros(1);
	data_sorted=zeros(1);
	inversion = 0;
        data_a_sorted=sort(data_a);
        data_b_sorted=sort(data_b);
	
	length_a = length(data_a_sorted);
	length_b = length(data_b_sorted);

	stop = length_a + length_b;
        for k = 1:stop,
		if data_a_sorted(i) < data_b_sorted(j)
			data_sorted(k) = data_a_sorted(i);
			i++; 
			if i > length_a
				data_sorted = [ data_sorted data_b_sorted(j:length_b)];
				break;
			end
		else
			data_sorted(k) = data_b_sorted(j);
			j++;
			inversion = inversion + length_a - (i-1);
			if j > length(data_b_sorted)
				data_sorted = [ data_sorted data_a_sorted(i:length_a) ];
				break;
			end
		end
	end
end

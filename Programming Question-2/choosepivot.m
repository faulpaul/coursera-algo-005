function [ data, p ] = choosepivot(data, start, stop, pivot)
	
	length_data = length(start:stop);

	if strcmp(pivot, 'first') %% just take first 
		data;
		p = data(start);
	elseif strcmp(pivot, 'last') %% swap first and last, then use the new first
		data = swap(data,start,stop);
		p = data(start);
	else %% compare the first, medium and last and choose the median, swap median to first and use new first
		median = floor((length_data+1) / 2);
                median = start -1 + median;

                if data(start) == data(median)
                        a = [ data(start), start; data(stop), stop];
                elseif data(median) == data(stop)
                        a = [ data(start), start; data(stop), stop ];
                else
                        a = [ data(start), start; data(median), median; data(stop), stop ];
                end

                a = sortrows(a);

		if length(a) <=2
			new_p = a(1,2);
		else
			new_p = a(2,2);
		end

		data = swap(data,start,new_p);
		p = data(start);
	end
end

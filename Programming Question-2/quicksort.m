function [data, numbers]=quicksort(data, start, stop, pivot)

 %% if the slice of the array is only 1 entry long
 if (stop - start) < 1
	numbers = 0;
	break; %% return an untouched data array
 else
 	%% Chose Pivot
	if (strcmp(pivot, 'last') == 1) %% take the last and switch it to the first place
		temp = data(start);
                data(start) = data(stop);
                data(stop) = temp;
		p = data(start);
	elseif (strcmp(pivot, 'median') == 1) %% median of three
		length_data = length(start:stop);
		if length_data > 1
			median = floor(length_data / 2);
		else
			median = 1;
		end
		median = start -1 + median;
		if data(start) == data(median)
			a = [ data(start), data(stop) ];
		elseif data(median) == data(stop)
			a = [ data(start), data(stop) ];
		else
			a = [ data(start), data(median), data(stop) ];
		end
		a = sort(a);
		a
		if length(a) <= 2
			p = a(1);
		else
			p = a(2);
		end
		start
		stop
		p
		data
	
	else	%% just take the first 
 		p = data(start);
	end

	i = start; %% boundary between the partinioned arrays
	%%start
	%%stop
	%%data
	numbers = 0;

	%% partition data
	for j = (start+1):stop, %% boundary between the partinioned and the unpartitioned area
		if data(j) > p %% bigger than pivot
			j++; %% no change needead
		else %%if smaler than pivot
			if ( i + 1 ) < j %% if we already have elements that are bigger than the pivot we need to swap
				temp = data(j);
				data(j) = data(i+1);
				data(i+1) = temp;
			end 
			i++;
			j++;	
		end
		numbers++;
	end

	%% move pivot to the right element in the array
	%% if it has to be moved
	if i > start 
		temp = data(i);
		data(i) = data(start);
		data(start) = temp;
	end

	%% sort the areas left and right of the pivot recursively
	[ data, return1 ] = quicksort(data, start, (i-1), pivot);  %%left of the pivot
	[ data, return2 ] = quicksort(data, (i+1), stop, pivot);  %%right of the pivot
	numbers = numbers + return1 + return2;
 end

end

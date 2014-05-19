function [data, numbers]=quicksort(data, start, stop, pivot)

length_data = length(start:stop);

 %% if the slice of the array is only 1 entry long
 if length_data < 1
	numbers = 0;
	break; %% return an untouched data array
 else
 	%% Chose Pivot
	if (strcmp(pivot, 'last') == 1) %% take the last and switch it to the first place
		data=swap(data,start,stop);
		p = data(start);
	elseif (strcmp(pivot, 'median') == 1) %% median of three
		median = floor((length_data+1) / 2);

		median = start -1 + median;

		if data(start) == data(median)
			a = [ data(start), data(stop) ];
		elseif data(median) == data(stop)
			a = [ data(start), data(stop) ];
		else
			a = [ data(start), data(median), data(stop) ];
		end

		a = sort(a);
		
		if length(a) <= 2
			p = a(1);
		else
			p = a(2);
		end
	
	else	%% just take the first 
 		p = data(start);
	end

	i = start; %% boundary between the partinioned arrays
	numbers = 0;

	%% partition data
	for j = (start+1):stop, %% boundary between the partinioned and the unpartitioned area
		if data(j) > p %% bigger than pivot
			j++; %% no change needead
		else %%if smaler than pivot
			if ( i + 1 ) < j %% if we already have elements that are bigger than the pivot we need to swap
				data=swap(data,i+1,j);
			end 
			i++;
			j++;	
		end
		numbers++;
	end

	%% move pivot to the right element in the array
	%% if it has to be moved
	%%if i > start 
	disp('--------------------------------------------------------')
	median
	start
	stop
	disp('before swap')
	data 
		data=swap(data,start,i);
	disp('after swap')
	data
	%%end	

	%% sort the areas left and right of the pivot recursively
	[ data, return1 ] = quicksort(data, start, (i-1), pivot);  %%left of the pivot
	[ data, return2 ] = quicksort(data, (i+1), stop, pivot);  %%right of the pivot
	numbers = numbers + return1 + return2;
 end

end

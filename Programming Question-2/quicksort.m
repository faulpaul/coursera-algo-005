function [data, numbers]=quicksort(data, start, stop, pivot)

 length_data = length(start:stop);
 numbers = 0;

 %% if the slice of the array is only 1 entry long
 if length_data < 1
	break; %% return an untouched data array
 else

	[ data, p ] = choosepivot(data,start,stop,pivot);
	i = start; %% boundary between the partinioned arrays

	%% partition data
	for j = (start+1):stop, %% boundary between the partinioned and the unpartitioned area
		if data(j) > p %% bigger than pivot
			j++; %% no change needead
		else %%if smaler than pivot
			if ( i + 1 ) < j %% if we already have elements that are bigger than the pivot we need to swap
				data=swap(data,(i+1),j);
			end 
			i++;
			j++;	
		end
		numbers++;
	end

	%% move pivot to the right element in the array
	%% if it has to be moved
	if i > start 
		data=swap(data,start,i);
	end	

	%% sort the areas left and right of the pivot recursively
	[ data, return1 ] = quicksort(data, start, (i-1), pivot);  %%left of the pivot
	[ data, return2 ] = quicksort(data, (i+1), stop, pivot);  %%right of the pivot
	numbers = numbers + return1 + return2;
 end

end

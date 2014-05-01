# Programming example 1
# find the numbers of inversions in a huge array

#open file
filename = "IntegerArray.txt";
filehandle = fopen(filename, "r");
line=0;
counter_a=1; #stupid octave starts with 1
data=zeros(1);
inversion=0;

while ((line=fgetl(filehandle)) ~= -1)
	data(counter_a++)=str2num(line);
end

fclose (filehandle);

#compare both strings
for i = data
 j = i+1;
 for j = length(data)
  if data(i) > data(j);
   inversion++;
  endif
 endfor
endfor

inversion

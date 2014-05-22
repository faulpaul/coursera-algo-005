function data=openfile(filename)
        #open file
        filehandle = fopen(filename, "r");
        #read data to array
        line=0;
        counter=1; #stupid octave starts with 1
        data=zeros(1);
        while ((line=fgetl(filehandle)) ~= -1)
                data(counter++)=str2num(line);
        end
        fclose (filehandle);
end

function populasi = Create_population(target,besar_populasi)
    populasi = struct();
    for i=1:besar_populasi
        gen = Create_gen(length(target));
        populasi(i).gen = gen;
        populasi(i).fitness = Calculate_fitness(gen,target);
    end
end  
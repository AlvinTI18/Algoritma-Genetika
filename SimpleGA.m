function [solusi,generasi] = SimpleGA(target,besar_populasi,laju_mutasi)
    populasi = Create_population(target,besar_populasi);
    isLooping = true;
    generasi = 0;

    while isLooping
        % individu terbaik
        [parent1,parent2] = Selection(populasi);

        % crossover
        [child1,child2] = Crossover(parent1,parent2);

        % Mutasi
        mutant1 = Mutation(child1,laju_mutasi);
        mutant2 = Mutation(child2,laju_mutasi);

        % hitung fitness
        mutant1.fitness = Calculate_fitness(mutant1.gen,target);
        mutant2.fitness = Calculate_fitness(mutant2.gen,target);

        % calon anggota
        children =  [mutant1, mutant2];
        populasi = Regeneration(children,populasi);
        generasi = generasi + 1;

        % terminasi
        [isLooping,solusi] = Termination(populasi);
        Logging(populasi,target,solusi,generasi);
        % isLooping = false;
    end
end
function new_populasi = Regeneration(children,populasi)
    fitness = zeros(1,length(populasi));

    for i=1:length(fitness)
        fitness(i) = populasi(i).fitness;
    end
    % kita remove berdasarkan fitness paling minimum

    for i=1:length(children)
        [~,index] = min(fitness);
        populasi(index) = [];
        fitness(index) = [];
    end

    % add member

    for i=1:length(children)
        n = length(populasi) + 1;
        populasi(n) = children(i);
    end
    new_populasi = populasi;
end

function [isLooping,solusi] = Termination(populasi)

    [the_best_solution,~] = Selection(populasi);
    if the_best_solution.fitness == 100
        isLooping = false;
        disp('ketemu jawabannya');
    else
        isLooping = true;
    end
    
    solusi = the_best_solution;
end
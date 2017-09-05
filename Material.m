classdef Material
    %UNTITLED10 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        kappa = 0.9107
        mu = 0.3446
    end
    
    methods(Static)
        function obj = setLameParam(obj, newKappa, newMu)
           obj.kappa = newKappa;
           obj.mu = newMu;
        end
        function [kappa,mu] = getLameParam(obj)
            kappa = obj.kappa;
            mu = obj.mu;
        end
    end
    
end


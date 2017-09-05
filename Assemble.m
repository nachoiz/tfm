classdef Assemble
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        
    end
    
    methods (Static)
        function glob_mat = get_glob_mat(element,nnode,nunkn,dof)
            
           glob_mat = sparse(dof.nndof,dof.nndof);
           
           for i = 1:nnode*nunkn
                for j = 1:nnode*nunkn
                    vestiff = squeeze(element(i,j,:));
                    glob_mat = glob_mat + sparse(dof.idx(i,:),dof.idx(j,:),vestiff,dof.nndof,dof.nndof);   
                end
           end
        end
    end
    
end


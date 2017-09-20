classdef Mesh
    % Class containing the coordinates and connectivities of the mesh
    
    properties
        coord
        connec
        nelem
        npnod
    end
    
    
    methods
        function obj = Mesh(filename)
            [obj.coord,obj.connec] = Preprocess.readFromGiD(filename);
            obj.nelem = length(obj.connec(:,1));
            obj.npnod = length(obj.coord(:,1));
        end
    end
    
end


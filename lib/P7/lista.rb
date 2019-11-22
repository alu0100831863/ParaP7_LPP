Node = Struct.new(:value, :prev, :next)
class Lista
     attr_accessor :head, :tail

    #  Constructor initialize
     def initialize(valor)
        @head = Node.new(valor,nil,nil)
        @tail = @head
     end
     
    #  Empty
     def empty
        @head.value==nil
     end
     
    #  Insertar elemento en lista
        
        # Head 
        
     def insert_head(valor)
        if empty
            aux = Node.new(valor, nil, nil)
            @head = @tail = aux
        else    
            aux = Node.new(valor, nil, @head)
            @head.prev = aux
            @head = aux
        end
     end
     
        # Tail
        
     def insert_tail(valor)
        if empty
            aux = Node.new(valor, nil, nil)
            @head = @tail = aux
        else   
            aux = Node.new(valor, @tail, nil)
            @tail.next = aux
            @tail = aux
        end
     end
     
    #  Extraer elemento en lista
    
        # Head
        
     def extract_head
        if empty
            nil
        else
           aux = @head.value
           @head = @head.next
           @head.prev = nil
           aux
        end
     end
    
        # Tail
        
     def extract_tail
        if empty
            nil
        else
           aux = @tail.value
           @tail = @tail.prev
           @tail.next = nil
           aux
        end
     end
    
end

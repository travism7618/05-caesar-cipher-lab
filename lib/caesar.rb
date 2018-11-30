def caesar_encode(code_to_cypher,offset)
code_to_cypher.split("").map{|character| if character==character.upcase then if [*("A".."Z")].index(character)==nil then character else [*("A".."Z")][(([*("A".."Z")].index(character))+offset)%26] end else [*("a".."z")][(([*("a".."z")].index(character))+offset)%26] end}.join
end

def caesar_decode(code_to_cypher,offset)
code_to_cypher.split("").map{|character| if character==character.upcase then if [*("A".."Z")].index(character)==nil then character else [*("A".."Z")][(([*("A".."Z")].index(character))-offset)%26] end else [*("a".."z")][(([*("a".."z")].index(character))-offset)%26] end}.join
end
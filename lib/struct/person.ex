defmodule Struct.Person do
  @moduledoc false
    defstruct name: '', age: nil, sex: nil, over_18: false

    # it's really similar to OOP
    def get_age(person = %Struct.Person{}), do: person.age
    def put_age(person = %Struct.Person{}, new_age), do: person.age = new_age
end

p1 = %Struct.Person{name: "aki", age: 18, sex: 'man', over_18: true}
p1.name

Struct.Person.get_age(p1)

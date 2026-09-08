domains
    name = symbol.
    city = symbol.
    street = symbol.
    car_brand = symbol.
    color = symbol.
    phone = string.
    address = addressStruct(city, street, integer, integer).

predicates
    phone_number(name, address, phone).
    car_info(name, car_brand, color, integer, symbol).

    find_owner_by_car(car_brand, color, name, city, phone).

clauses

    phone_number(ivanov, addressStruct(moscow, bauman, 10, 5), "8-926-987-65-43").
    phone_number(popov, addressStruct(tula, pervomayskaya, 22, 15), "8-903-555-22-11").
    phone_number(ivanov, addressStruct(volgograd, davidkovo, 3, 2), "8-999-777-88-66").

    car_info(ivanov, toyota, blue, 1000000, a123aa).
    car_info(popov, bmw, black, 2000000, b456bb).
    car_info(ivanov, lada, red, 500000, c789cc).

    find_owner_by_car(Brand, Color, Name, City, Phone) :-
        car_info(Name, Brand, Color, _, _),
        phone_number(Name, addressStruct(City, _, _, _), Phone).

goal
	find_owner_by_car(toyota, blue, Name, City, Phone).
	%find_owner_by_car(tesla, white, Name, City, Phone).
	%find_owner_by_car(lada, red, Name, City, Phone).
	%car_info(Name, Brand, Color, _, _).
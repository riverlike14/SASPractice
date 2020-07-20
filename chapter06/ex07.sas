DATA mysas.person1;
	SET mysas.person;
	IF dept="math" OR dept="econ" THEN DELETE;
RUN;

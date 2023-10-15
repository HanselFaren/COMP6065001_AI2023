american(west).
american(bob).
enemy(nono,america).
hostile(X) :- enemy(X, america).
missile(m_one).
owns(nono, m_one).
weapon(X) :- missile(X).
sells(west,X,nono) :- missile(X),owns(nono, X).
criminal(X) :- american(X), weapon(Y), sells(X,Y,Z), hostile(Z). 

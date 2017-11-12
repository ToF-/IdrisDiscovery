

- on doit définir la sémantique du type : qu'est-ce qu'on cherche à faire avec ce type. 
- que signifie : ajouter deux valeurs de InRange a b ?
- pourquoi détecter des additions de valeurs InRange a b illégales

- raccourcis idris dans vim :
\i -> ouvre la sortie du repl
\e -> compile le code et execute une expression
\c -> case split d'une expression
\d -> crée une implémentation par défaut
\m c - > case of 
\t -> fournit le type d'une expression

- on n'arrive pas à finir ce kata parce qu'on ne sait pas ce que signifie d'ajouter 2 nombres qui sont dans un range
- et c'est cool que le langage nous force à définir cela

- on peut difficilement assumer que le compilateur va analyser toutes les expressions contenant + entre InRange afin de vérifier à la compilation que l'opération est correcte.

- exemple plus simple : additionner deux entiers positifs (resultat reste positif)
 

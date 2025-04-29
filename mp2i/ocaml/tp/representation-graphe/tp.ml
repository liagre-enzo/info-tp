type matrice_adjacence = int array array

let mat_go = [| [|0; 1; 0; 0; 0; 0; 0; 0; 0|];
[|1; 0; 0; 1; 0; 0; 0; 0; 0|];
[|0; 0; 0; 0; 1; 1; 0; 0; 0|];
[|0; 0; 0; 0; 0; 0; 0; 0; 0|];
[|1; 0; 0; 0; 0; 0; 0; 0; 1|];
[|1; 0; 1; 1; 1; 0; 1; 0; 0|];
[|0; 0; 1; 0; 0; 0; 0; 0; 0|];
[|0; 0; 0; 0; 0; 0; 1; 0; 0|];
[|0; 0; 0; 0; 0; 0; 0; 0; 0|] |]

let nb_sommets_arcs mat = 
  let taille = Array.length mat and
  somme = ref 0 in
  for i = 0 to taille -1 do 
    for j = 0 to taille -1 do 
      somme := !somme + mat.(i).(j)
    done
  done;
  (taille, !somme)

let possede_boucle mat =
  try
    for i = 0 to Array.length mat -1 do 
      if mat.(i).(i) = 1 then
        raise Exit
    done;
    false
  with Exit -> true

let est_successeur mat j i = 
  if mat.(i).(j) = 1 then
    true
  else
    false

let est_predecesseur mat i j = est_successeur mat j i

let degres mat i =
  let d_plus = ref 0 and d_moins = ref 0 in
  for j = 0 to Array.length mat -1 do 
    d_plus := !d_plus + mat.(i).(j);
    d_moins := !d_moins + mat.(j).(i)
  done;
  d_moins, d_plus

(*Partie 2*)

type liste_adjacence = int list array

let rec taille_liste l =
  match l with
  | [] -> 0
  | t::q -> 1 + taille_liste q

let nb_arretes lst = 
  let degre = ref 0 in
  for i = 0 to Array.length lst -1 do 
    degre := !degre + taille_liste lst.(i)
  done;
  (!degre/2)

let sont_voisins lst i j = List.mem j lst.(i)

let degre lst i = taille_liste lst.(i)

let nb_arretes lst = 
  let degre_max = ref 0  and degre = ref 0 in
  for i = 0 to Array.length lst -1 do 
    degre := !degre + taille_liste lst.(i);
    if !degre_max < !degre then
      degre_max := !degre
  done;
  !degre_max

  
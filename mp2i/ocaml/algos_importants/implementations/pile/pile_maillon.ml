type 'a pile = {mutable chaine_maillons : 'a list}

let creer () =
  {chaine_maillons = []}
      
let est_vide p =
  p.chaine_maillons = []
      
let empiler elt p =
  p.chaine_maillons <- elt::p.chaine_maillons
      
let depiler p =
  match p.chaine_maillons with
    | [] -> assert(false)
    | t::q -> p.chaine_maillons <- q; t



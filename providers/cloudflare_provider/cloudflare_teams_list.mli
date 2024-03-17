(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_teams_list

type t = private {
  account_id : string prop;
  description : string prop;
  id : string prop;
  items : string list prop;
  name : string prop;
  type_ : string prop;
}

val cloudflare_teams_list :
  ?description:string prop ->
  ?id:string prop ->
  ?items:string prop list ->
  account_id:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t

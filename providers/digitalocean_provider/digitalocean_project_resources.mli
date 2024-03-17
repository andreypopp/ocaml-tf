(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_project_resources

type t = private {
  id : string prop;
  project : string prop;
  resources : string list prop;
}

val digitalocean_project_resources :
  ?id:string prop ->
  project:string prop ->
  resources:string prop list ->
  string ->
  t

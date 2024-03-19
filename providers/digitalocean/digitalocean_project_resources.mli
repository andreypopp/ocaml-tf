(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type digitalocean_project_resources

val digitalocean_project_resources :
  ?id:string prop ->
  project:string prop ->
  resources:string prop list ->
  unit ->
  digitalocean_project_resources

val yojson_of_digitalocean_project_resources :
  digitalocean_project_resources -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  project : string prop;
  resources : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  project:string prop ->
  resources:string prop list ->
  string ->
  t

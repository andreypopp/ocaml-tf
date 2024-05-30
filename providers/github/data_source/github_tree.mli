(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type entries = {
  mode : string prop;  (** mode *)
  path : string prop;  (** path *)
  sha : string prop;  (** sha *)
  size : float prop;  (** size *)
  type_ : string prop; [@key "type"]  (** type *)
}

type github_tree

val github_tree :
  ?id:string prop ->
  ?recursive:bool prop ->
  repository:string prop ->
  tree_sha:string prop ->
  unit ->
  github_tree

val yojson_of_github_tree : github_tree -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  entries : entries list prop;
  id : string prop;
  recursive : bool prop;
  repository : string prop;
  tree_sha : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?recursive:bool prop ->
  repository:string prop ->
  tree_sha:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?recursive:bool prop ->
  repository:string prop ->
  tree_sha:string prop ->
  string ->
  t Tf_core.resource

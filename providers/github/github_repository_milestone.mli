(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_repository_milestone

val github_repository_milestone :
  ?description:string prop ->
  ?due_date:string prop ->
  ?id:string prop ->
  ?state:string prop ->
  owner:string prop ->
  repository:string prop ->
  title:string prop ->
  unit ->
  github_repository_milestone

val yojson_of_github_repository_milestone :
  github_repository_milestone -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  due_date : string prop;
  id : string prop;
  number : float prop;
  owner : string prop;
  repository : string prop;
  state : string prop;
  title : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?due_date:string prop ->
  ?id:string prop ->
  ?state:string prop ->
  owner:string prop ->
  repository:string prop ->
  title:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?due_date:string prop ->
  ?id:string prop ->
  ?state:string prop ->
  owner:string prop ->
  repository:string prop ->
  title:string prop ->
  string ->
  t Tf_core.resource

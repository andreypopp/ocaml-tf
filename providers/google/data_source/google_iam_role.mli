(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_iam_role

val google_iam_role :
  ?id:string prop -> name:string prop -> unit -> google_iam_role

val yojson_of_google_iam_role : google_iam_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  included_permissions : string list prop;
  name : string prop;
  stage : string prop;
  title : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop -> name:string prop -> string -> t Tf_core.resource

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type access_keys = {
  access_key_id : string prop;  (** access_key_id *)
  create_date : string prop;  (** create_date *)
  status : string prop;  (** status *)
}

type aws_iam_access_keys

val aws_iam_access_keys :
  ?id:string prop -> user:string prop -> unit -> aws_iam_access_keys

val yojson_of_aws_iam_access_keys : aws_iam_access_keys -> json

(** RESOURCE REGISTRATION *)

type t = private {
  access_keys : access_keys list prop;
  id : string prop;
  user : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  user:string prop ->
  string ->
  t

val make :
  ?id:string prop -> user:string prop -> string -> t Tf_core.resource

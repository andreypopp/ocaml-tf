(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_caller_identity

val aws_caller_identity :
  ?id:string prop -> unit -> aws_caller_identity

val yojson_of_aws_caller_identity : aws_caller_identity -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  arn : string prop;
  id : string prop;
  user_id : string prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> string -> t
val make : ?id:string prop -> string -> t Tf_core.resource

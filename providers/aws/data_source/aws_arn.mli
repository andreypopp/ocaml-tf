(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_arn

val aws_arn : ?id:string prop -> arn:string prop -> unit -> aws_arn
val yojson_of_aws_arn : aws_arn -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account : string prop;
  arn : string prop;
  id : string prop;
  partition : string prop;
  region : string prop;
  resource : string prop;
  service : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  arn:string prop ->
  string ->
  t

val make :
  ?id:string prop -> arn:string prop -> string -> t Tf_core.resource

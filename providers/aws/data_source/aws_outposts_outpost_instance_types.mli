(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_outposts_outpost_instance_types

val aws_outposts_outpost_instance_types :
  ?id:string prop ->
  arn:string prop ->
  unit ->
  aws_outposts_outpost_instance_types

val yojson_of_aws_outposts_outpost_instance_types :
  aws_outposts_outpost_instance_types -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  instance_types : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  arn:string prop ->
  string ->
  t

val make :
  ?id:string prop -> arn:string prop -> string -> t Tf_core.resource

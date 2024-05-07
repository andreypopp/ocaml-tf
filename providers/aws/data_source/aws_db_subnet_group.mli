(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_db_subnet_group

val aws_db_subnet_group :
  ?id:string prop -> name:string prop -> unit -> aws_db_subnet_group

val yojson_of_aws_db_subnet_group : aws_db_subnet_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
  subnet_ids : string list prop;
  supported_network_types : string list prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop -> name:string prop -> string -> t Tf_core.resource

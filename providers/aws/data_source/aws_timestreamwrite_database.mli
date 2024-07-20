(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_timestreamwrite_database

val aws_timestreamwrite_database :
  name:string prop -> unit -> aws_timestreamwrite_database

val yojson_of_aws_timestreamwrite_database :
  aws_timestreamwrite_database -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  created_time : string prop;
  kms_key_id : string prop;
  last_updated_time : string prop;
  name : string prop;
  table_count : float prop;
}

val register :
  ?tf_module:tf_module -> name:string prop -> string -> t

val make : name:string prop -> string -> t Tf_core.resource

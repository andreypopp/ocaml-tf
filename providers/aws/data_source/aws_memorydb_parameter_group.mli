(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type parameter = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type aws_memorydb_parameter_group

val aws_memorydb_parameter_group :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  unit ->
  aws_memorydb_parameter_group

val yojson_of_aws_memorydb_parameter_group :
  aws_memorydb_parameter_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  family : string prop;
  id : string prop;
  name : string prop;
  parameter : parameter list prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  string ->
  t Tf_core.resource

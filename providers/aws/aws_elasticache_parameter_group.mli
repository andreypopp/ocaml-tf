(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type parameter

val parameter :
  name:string prop -> value:string prop -> unit -> parameter

type aws_elasticache_parameter_group

val aws_elasticache_parameter_group :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  family:string prop ->
  name:string prop ->
  parameter:parameter list ->
  unit ->
  aws_elasticache_parameter_group

val yojson_of_aws_elasticache_parameter_group :
  aws_elasticache_parameter_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  family : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  family:string prop ->
  name:string prop ->
  parameter:parameter list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  family:string prop ->
  name:string prop ->
  parameter:parameter list ->
  string ->
  t Tf_core.resource

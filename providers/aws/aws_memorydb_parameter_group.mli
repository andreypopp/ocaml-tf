(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type parameter

val parameter :
  name:string prop -> value:string prop -> unit -> parameter

type aws_memorydb_parameter_group

val aws_memorydb_parameter_group :
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  family:string prop ->
  parameter:parameter list ->
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
  name_prefix : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  family:string prop ->
  parameter:parameter list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  family:string prop ->
  parameter:parameter list ->
  string ->
  t Tf_core.resource

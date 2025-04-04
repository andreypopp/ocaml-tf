(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_memorydb_subnet_group

val aws_memorydb_subnet_group :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  aws_memorydb_subnet_group

val yojson_of_aws_memorydb_subnet_group :
  aws_memorydb_subnet_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  subnet_ids : string list prop;
  tags : string Tf_core.assoc prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  string ->
  t Tf_core.resource

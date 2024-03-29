(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type parameter

val parameter :
  ?apply_method:string prop ->
  name:string prop ->
  value:string prop ->
  unit ->
  parameter

type aws_docdb_cluster_parameter_group

val aws_docdb_cluster_parameter_group :
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  family:string prop ->
  parameter:parameter list ->
  unit ->
  aws_docdb_cluster_parameter_group

val yojson_of_aws_docdb_cluster_parameter_group :
  aws_docdb_cluster_parameter_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  description : string prop;
  family : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  family:string prop ->
  parameter:parameter list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  family:string prop ->
  parameter:parameter list ->
  string ->
  t Tf_core.resource

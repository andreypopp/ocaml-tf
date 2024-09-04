(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_glue_schema

val aws_glue_schema :
  ?description:string prop ->
  ?id:string prop ->
  ?registry_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  compatibility:string prop ->
  data_format:string prop ->
  schema_definition:string prop ->
  schema_name:string prop ->
  unit ->
  aws_glue_schema

val yojson_of_aws_glue_schema : aws_glue_schema -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  compatibility : string prop;
  data_format : string prop;
  description : string prop;
  id : string prop;
  latest_schema_version : float prop;
  next_schema_version : float prop;
  registry_arn : string prop;
  registry_name : string prop;
  schema_checkpoint : float prop;
  schema_definition : string prop;
  schema_name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?registry_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  compatibility:string prop ->
  data_format:string prop ->
  schema_definition:string prop ->
  schema_name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?registry_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  compatibility:string prop ->
  data_format:string prop ->
  schema_definition:string prop ->
  schema_name:string prop ->
  string ->
  t Tf_core.resource

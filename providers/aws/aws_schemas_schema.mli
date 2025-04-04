(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_schemas_schema

val aws_schemas_schema :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  content:string prop ->
  name:string prop ->
  registry_name:string prop ->
  type_:string prop ->
  unit ->
  aws_schemas_schema

val yojson_of_aws_schemas_schema : aws_schemas_schema -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  content : string prop;
  description : string prop;
  id : string prop;
  last_modified : string prop;
  name : string prop;
  registry_name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  type_ : string prop;
  version : string prop;
  version_created_date : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  content:string prop ->
  name:string prop ->
  registry_name:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  content:string prop ->
  name:string prop ->
  registry_name:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource

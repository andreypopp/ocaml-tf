(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type resource_uris

val resource_uris :
  resource_type:string prop ->
  uri:string prop ->
  unit ->
  resource_uris

type aws_glue_user_defined_function

val aws_glue_user_defined_function :
  ?catalog_id:string prop ->
  ?id:string prop ->
  class_name:string prop ->
  database_name:string prop ->
  name:string prop ->
  owner_name:string prop ->
  owner_type:string prop ->
  resource_uris:resource_uris list ->
  unit ->
  aws_glue_user_defined_function

val yojson_of_aws_glue_user_defined_function :
  aws_glue_user_defined_function -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  catalog_id : string prop;
  class_name : string prop;
  create_time : string prop;
  database_name : string prop;
  id : string prop;
  name : string prop;
  owner_name : string prop;
  owner_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?catalog_id:string prop ->
  ?id:string prop ->
  class_name:string prop ->
  database_name:string prop ->
  name:string prop ->
  owner_name:string prop ->
  owner_type:string prop ->
  resource_uris:resource_uris list ->
  string ->
  t

val make :
  ?catalog_id:string prop ->
  ?id:string prop ->
  class_name:string prop ->
  database_name:string prop ->
  name:string prop ->
  owner_name:string prop ->
  owner_type:string prop ->
  resource_uris:resource_uris list ->
  string ->
  t Tf_core.resource

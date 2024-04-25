(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type physical_connection_requirements

val physical_connection_requirements :
  ?availability_zone:string prop ->
  ?security_group_id_list:string prop list ->
  ?subnet_id:string prop ->
  unit ->
  physical_connection_requirements

type aws_glue_connection

val aws_glue_connection :
  ?catalog_id:string prop ->
  ?connection_properties:(string * string prop) list ->
  ?connection_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?match_criteria:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?physical_connection_requirements:
    physical_connection_requirements list ->
  name:string prop ->
  unit ->
  aws_glue_connection

val yojson_of_aws_glue_connection : aws_glue_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  catalog_id : string prop;
  connection_properties : (string * string) list prop;
  connection_type : string prop;
  description : string prop;
  id : string prop;
  match_criteria : string list prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?catalog_id:string prop ->
  ?connection_properties:(string * string prop) list ->
  ?connection_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?match_criteria:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?physical_connection_requirements:
    physical_connection_requirements list ->
  name:string prop ->
  string ->
  t

val make :
  ?catalog_id:string prop ->
  ?connection_properties:(string * string prop) list ->
  ?connection_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?match_criteria:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?physical_connection_requirements:
    physical_connection_requirements list ->
  name:string prop ->
  string ->
  t Tf_core.resource

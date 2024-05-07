(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_athena_data_catalog

val aws_athena_data_catalog :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  description:string prop ->
  name:string prop ->
  parameters:(string * string prop) list ->
  type_:string prop ->
  unit ->
  aws_athena_data_catalog

val yojson_of_aws_athena_data_catalog :
  aws_athena_data_catalog -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  description:string prop ->
  name:string prop ->
  parameters:(string * string prop) list ->
  type_:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  description:string prop ->
  name:string prop ->
  parameters:(string * string prop) list ->
  type_:string prop ->
  string ->
  t Tf_core.resource

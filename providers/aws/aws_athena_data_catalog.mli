(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_athena_data_catalog

val aws_athena_data_catalog :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  description:string prop ->
  name:string prop ->
  parameters:string prop Tf_core.assoc ->
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
  parameters : string Tf_core.assoc prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  description:string prop ->
  name:string prop ->
  parameters:string prop Tf_core.assoc ->
  type_:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  description:string prop ->
  name:string prop ->
  parameters:string prop Tf_core.assoc ->
  type_:string prop ->
  string ->
  t Tf_core.resource

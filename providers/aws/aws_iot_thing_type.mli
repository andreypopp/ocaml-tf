(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type properties

val properties :
  ?description:string prop ->
  ?searchable_attributes:string prop list ->
  unit ->
  properties

type aws_iot_thing_type

val aws_iot_thing_type :
  ?deprecated:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?properties:properties list ->
  name:string prop ->
  unit ->
  aws_iot_thing_type

val yojson_of_aws_iot_thing_type : aws_iot_thing_type -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  deprecated : bool prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?deprecated:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?properties:properties list ->
  name:string prop ->
  string ->
  t

val make :
  ?deprecated:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?properties:properties list ->
  name:string prop ->
  string ->
  t Tf_core.resource

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  properties:properties list ->
  unit ->
  aws_iot_thing_type

val yojson_of_aws_iot_thing_type : aws_iot_thing_type -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  deprecated : bool prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?deprecated:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  properties:properties list ->
  string ->
  t

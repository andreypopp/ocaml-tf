(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_kms_alias

val aws_kms_alias :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  target_key_id:string prop ->
  unit ->
  aws_kms_alias

val yojson_of_aws_kms_alias : aws_kms_alias -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  target_key_arn : string prop;
  target_key_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  target_key_id:string prop ->
  string ->
  t

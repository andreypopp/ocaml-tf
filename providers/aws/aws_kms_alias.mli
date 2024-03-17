(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kms_alias

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  target_key_arn : string prop;
  target_key_id : string prop;
}

val aws_kms_alias :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  target_key_id:string prop ->
  string ->
  t

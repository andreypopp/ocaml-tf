(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_synthetics_group_association

type t = private {
  canary_arn : string prop;
  group_arn : string prop;
  group_id : string prop;
  group_name : string prop;
  id : string prop;
}

val aws_synthetics_group_association :
  ?id:string prop ->
  canary_arn:string prop ->
  group_name:string prop ->
  string ->
  t

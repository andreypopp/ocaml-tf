(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_policy__timeouts
type aws_iot_policy

type t = private {
  arn : string prop;
  default_version_id : string prop;
  id : string prop;
  name : string prop;
  policy : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_iot_policy :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_iot_policy__timeouts ->
  name:string prop ->
  policy:string prop ->
  string ->
  t

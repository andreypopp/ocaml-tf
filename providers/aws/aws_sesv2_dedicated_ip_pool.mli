(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sesv2_dedicated_ip_pool__timeouts
type aws_sesv2_dedicated_ip_pool

type t = private {
  arn : string prop;
  id : string prop;
  pool_name : string prop;
  scaling_mode : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_sesv2_dedicated_ip_pool :
  ?id:string prop ->
  ?scaling_mode:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_sesv2_dedicated_ip_pool__timeouts ->
  pool_name:string prop ->
  string ->
  t

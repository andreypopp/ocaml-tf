(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53_traffic_policy

type t = private {
  comment : string prop;
  document : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
  version : float prop;
}

val aws_route53_traffic_policy :
  ?comment:string prop ->
  ?id:string prop ->
  document:string prop ->
  name:string prop ->
  string ->
  t

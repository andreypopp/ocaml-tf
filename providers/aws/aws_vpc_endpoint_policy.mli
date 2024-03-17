(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_endpoint_policy__timeouts
type aws_vpc_endpoint_policy

type t = private {
  id : string prop;
  policy : string prop;
  vpc_endpoint_id : string prop;
}

val aws_vpc_endpoint_policy :
  ?id:string prop ->
  ?policy:string prop ->
  ?timeouts:aws_vpc_endpoint_policy__timeouts ->
  vpc_endpoint_id:string prop ->
  string ->
  t

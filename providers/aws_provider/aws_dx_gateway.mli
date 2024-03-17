(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dx_gateway__timeouts
type aws_dx_gateway

type t = private {
  amazon_side_asn : string prop;
  id : string prop;
  name : string prop;
  owner_account_id : string prop;
}

val aws_dx_gateway :
  ?id:string prop ->
  ?timeouts:aws_dx_gateway__timeouts ->
  amazon_side_asn:string prop ->
  name:string prop ->
  string ->
  t

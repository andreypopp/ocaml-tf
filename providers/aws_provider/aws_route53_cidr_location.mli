(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53_cidr_location

type t = private {
  cidr_blocks : string list prop;
  cidr_collection_id : string prop;
  id : string prop;
  name : string prop;
}

val aws_route53_cidr_location :
  cidr_blocks:string prop list ->
  cidr_collection_id:string prop ->
  name:string prop ->
  string ->
  t

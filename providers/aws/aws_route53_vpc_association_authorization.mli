(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53_vpc_association_authorization

type t = private {
  id : string prop;
  vpc_id : string prop;
  vpc_region : string prop;
  zone_id : string prop;
}

val aws_route53_vpc_association_authorization :
  ?id:string prop ->
  ?vpc_region:string prop ->
  vpc_id:string prop ->
  zone_id:string prop ->
  string ->
  t

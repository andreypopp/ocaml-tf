(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53_zone_association

type t = private {
  id : string prop;
  owning_account : string prop;
  vpc_id : string prop;
  vpc_region : string prop;
  zone_id : string prop;
}

val aws_route53_zone_association :
  ?id:string prop ->
  ?vpc_region:string prop ->
  vpc_id:string prop ->
  zone_id:string prop ->
  string ->
  t

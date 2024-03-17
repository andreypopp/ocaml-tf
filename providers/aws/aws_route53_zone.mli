(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53_zone__vpc
type aws_route53_zone

type t = private {
  arn : string prop;
  comment : string prop;
  delegation_set_id : string prop;
  force_destroy : bool prop;
  id : string prop;
  name : string prop;
  name_servers : string list prop;
  primary_name_server : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  zone_id : string prop;
}

val aws_route53_zone :
  ?comment:string prop ->
  ?delegation_set_id:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  vpc:aws_route53_zone__vpc list ->
  string ->
  t

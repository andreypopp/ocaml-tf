(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vpc

val vpc :
  ?vpc_region:string prop -> vpc_id:string prop -> unit -> vpc

type aws_route53_zone

val aws_route53_zone :
  ?comment:string prop ->
  ?delegation_set_id:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  vpc:vpc list ->
  unit ->
  aws_route53_zone

val yojson_of_aws_route53_zone : aws_route53_zone -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  comment : string prop;
  delegation_set_id : string prop;
  force_destroy : bool prop;
  id : string prop;
  name : string prop;
  name_servers : string list prop;
  primary_name_server : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?comment:string prop ->
  ?delegation_set_id:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  vpc:vpc list ->
  string ->
  t

val make :
  ?comment:string prop ->
  ?delegation_set_id:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  vpc:vpc list ->
  string ->
  t Tf_core.resource

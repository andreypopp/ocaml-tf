(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_lightsail_bucket

val aws_lightsail_bucket :
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  bundle_id:string prop ->
  name:string prop ->
  unit ->
  aws_lightsail_bucket

val yojson_of_aws_lightsail_bucket : aws_lightsail_bucket -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  availability_zone : string prop;
  bundle_id : string prop;
  created_at : string prop;
  force_delete : bool prop;
  id : string prop;
  name : string prop;
  region : string prop;
  support_code : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  bundle_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  bundle_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource

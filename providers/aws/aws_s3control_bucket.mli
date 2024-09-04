(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_s3control_bucket

val aws_s3control_bucket :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  bucket:string prop ->
  outpost_id:string prop ->
  unit ->
  aws_s3control_bucket

val yojson_of_aws_s3control_bucket : aws_s3control_bucket -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  bucket : string prop;
  creation_date : string prop;
  id : string prop;
  outpost_id : string prop;
  public_access_block_enabled : bool prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  bucket:string prop ->
  outpost_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  bucket:string prop ->
  outpost_id:string prop ->
  string ->
  t Tf_core.resource

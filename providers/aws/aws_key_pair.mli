(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_key_pair

val aws_key_pair :
  ?id:string prop ->
  ?key_name:string prop ->
  ?key_name_prefix:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  public_key:string prop ->
  unit ->
  aws_key_pair

val yojson_of_aws_key_pair : aws_key_pair -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  fingerprint : string prop;
  id : string prop;
  key_name : string prop;
  key_name_prefix : string prop;
  key_pair_id : string prop;
  key_type : string prop;
  public_key : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?key_name:string prop ->
  ?key_name_prefix:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  public_key:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?key_name:string prop ->
  ?key_name_prefix:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  public_key:string prop ->
  string ->
  t Tf_core.resource

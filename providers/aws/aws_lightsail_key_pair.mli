(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_lightsail_key_pair

val aws_lightsail_key_pair :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?pgp_key:string prop ->
  ?public_key:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  unit ->
  aws_lightsail_key_pair

val yojson_of_aws_lightsail_key_pair : aws_lightsail_key_pair -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  encrypted_fingerprint : string prop;
  encrypted_private_key : string prop;
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  pgp_key : string prop;
  private_key : string prop;
  public_key : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?pgp_key:string prop ->
  ?public_key:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?pgp_key:string prop ->
  ?public_key:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  string ->
  t Tf_core.resource

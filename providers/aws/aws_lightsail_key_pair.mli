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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?pgp_key:string prop ->
  ?public_key:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?pgp_key:string prop ->
  ?public_key:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  string ->
  t Tf_core.resource

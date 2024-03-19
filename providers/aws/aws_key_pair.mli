(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_key_pair

val aws_key_pair :
  ?id:string prop ->
  ?key_name:string prop ->
  ?key_name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  public_key:string prop ->
  unit ->
  aws_key_pair

val yojson_of_aws_key_pair : aws_key_pair -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  fingerprint : string prop;
  id : string prop;
  key_name : string prop;
  key_name_prefix : string prop;
  key_pair_id : string prop;
  key_type : string prop;
  public_key : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?key_name:string prop ->
  ?key_name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  public_key:string prop ->
  string ->
  t

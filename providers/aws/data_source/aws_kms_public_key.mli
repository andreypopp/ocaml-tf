(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_kms_public_key

val aws_kms_public_key :
  ?grant_tokens:string prop list ->
  ?id:string prop ->
  key_id:string prop ->
  unit ->
  aws_kms_public_key

val yojson_of_aws_kms_public_key : aws_kms_public_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  customer_master_key_spec : string prop;
  encryption_algorithms : string list prop;
  grant_tokens : string list prop;
  id : string prop;
  key_id : string prop;
  key_usage : string prop;
  public_key : string prop;
  public_key_pem : string prop;
  signing_algorithms : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?grant_tokens:string prop list ->
  ?id:string prop ->
  key_id:string prop ->
  string ->
  t

val make :
  ?grant_tokens:string prop list ->
  ?id:string prop ->
  key_id:string prop ->
  string ->
  t Tf_core.resource

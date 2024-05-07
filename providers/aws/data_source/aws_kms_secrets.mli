(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type secret

val secret :
  ?context:(string * string prop) list ->
  ?encryption_algorithm:string prop ->
  ?grant_tokens:string prop list ->
  ?key_id:string prop ->
  name:string prop ->
  payload:string prop ->
  unit ->
  secret

type aws_kms_secrets

val aws_kms_secrets :
  ?id:string prop -> secret:secret list -> unit -> aws_kms_secrets

val yojson_of_aws_kms_secrets : aws_kms_secrets -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  plaintext : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  secret:secret list ->
  string ->
  t

val make :
  ?id:string prop ->
  secret:secret list ->
  string ->
  t Tf_core.resource

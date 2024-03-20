(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type secret

val secret :
  ?context:(string * string prop) list ->
  ?grant_tokens:string prop list ->
  name:string prop ->
  payload:string prop ->
  unit ->
  secret

type aws_kms_secret

val aws_kms_secret :
  ?id:string prop -> secret:secret list -> unit -> aws_kms_secret

val yojson_of_aws_kms_secret : aws_kms_secret -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop }

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

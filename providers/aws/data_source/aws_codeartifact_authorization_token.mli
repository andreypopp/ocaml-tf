(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_codeartifact_authorization_token

val aws_codeartifact_authorization_token :
  ?domain_owner:string prop ->
  ?duration_seconds:float prop ->
  ?id:string prop ->
  domain:string prop ->
  unit ->
  aws_codeartifact_authorization_token

val yojson_of_aws_codeartifact_authorization_token :
  aws_codeartifact_authorization_token -> json

(** RESOURCE REGISTRATION *)

type t = private {
  authorization_token : string prop;
  domain : string prop;
  domain_owner : string prop;
  duration_seconds : float prop;
  expiration : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?domain_owner:string prop ->
  ?duration_seconds:float prop ->
  ?id:string prop ->
  domain:string prop ->
  string ->
  t

val make :
  ?domain_owner:string prop ->
  ?duration_seconds:float prop ->
  ?id:string prop ->
  domain:string prop ->
  string ->
  t Tf_core.resource

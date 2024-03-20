(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_codeartifact_repository_endpoint

val aws_codeartifact_repository_endpoint :
  ?domain_owner:string prop ->
  ?id:string prop ->
  domain:string prop ->
  format:string prop ->
  repository:string prop ->
  unit ->
  aws_codeartifact_repository_endpoint

val yojson_of_aws_codeartifact_repository_endpoint :
  aws_codeartifact_repository_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  domain : string prop;
  domain_owner : string prop;
  format : string prop;
  id : string prop;
  repository : string prop;
  repository_endpoint : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?domain_owner:string prop ->
  ?id:string prop ->
  domain:string prop ->
  format:string prop ->
  repository:string prop ->
  string ->
  t

val make :
  ?domain_owner:string prop ->
  ?id:string prop ->
  domain:string prop ->
  format:string prop ->
  repository:string prop ->
  string ->
  t Tf_core.resource

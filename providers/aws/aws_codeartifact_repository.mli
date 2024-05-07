(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type external_connections

val external_connections :
  external_connection_name:string prop ->
  unit ->
  external_connections

type upstream

val upstream : repository_name:string prop -> unit -> upstream

type aws_codeartifact_repository

val aws_codeartifact_repository :
  ?description:string prop ->
  ?domain_owner:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?external_connections:external_connections list ->
  ?upstream:upstream list ->
  domain:string prop ->
  repository:string prop ->
  unit ->
  aws_codeartifact_repository

val yojson_of_aws_codeartifact_repository :
  aws_codeartifact_repository -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  administrator_account : string prop;
  arn : string prop;
  description : string prop;
  domain : string prop;
  domain_owner : string prop;
  id : string prop;
  repository : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?domain_owner:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?external_connections:external_connections list ->
  ?upstream:upstream list ->
  domain:string prop ->
  repository:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?domain_owner:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?external_connections:external_connections list ->
  ?upstream:upstream list ->
  domain:string prop ->
  repository:string prop ->
  string ->
  t Tf_core.resource

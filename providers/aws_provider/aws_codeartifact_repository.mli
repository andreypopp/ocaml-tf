(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codeartifact_repository__external_connections
type aws_codeartifact_repository__upstream
type aws_codeartifact_repository

val aws_codeartifact_repository :
  ?description:string ->
  ?domain_owner:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  domain:string ->
  repository:string ->
  external_connections:
    aws_codeartifact_repository__external_connections list ->
  upstream:aws_codeartifact_repository__upstream list ->
  string ->
  unit

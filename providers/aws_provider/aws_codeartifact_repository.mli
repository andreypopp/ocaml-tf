(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codeartifact_repository__external_connections
type aws_codeartifact_repository__upstream
type aws_codeartifact_repository

val aws_codeartifact_repository :
  ?description:string prop ->
  ?domain_owner:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  domain:string prop ->
  repository:string prop ->
  external_connections:
    aws_codeartifact_repository__external_connections list ->
  upstream:aws_codeartifact_repository__upstream list ->
  string ->
  unit

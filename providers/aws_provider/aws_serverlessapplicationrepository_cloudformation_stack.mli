(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_serverlessapplicationrepository_cloudformation_stack__timeouts

type aws_serverlessapplicationrepository_cloudformation_stack

val aws_serverlessapplicationrepository_cloudformation_stack :
  ?id:string ->
  ?parameters:(string * string) list ->
  ?semantic_version:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:
    aws_serverlessapplicationrepository_cloudformation_stack__timeouts ->
  application_id:string ->
  capabilities:string list ->
  name:string ->
  string ->
  unit

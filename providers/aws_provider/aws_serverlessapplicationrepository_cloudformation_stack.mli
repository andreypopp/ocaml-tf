(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_serverlessapplicationrepository_cloudformation_stack__timeouts

type aws_serverlessapplicationrepository_cloudformation_stack

val aws_serverlessapplicationrepository_cloudformation_stack :
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  ?semantic_version:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:
    aws_serverlessapplicationrepository_cloudformation_stack__timeouts ->
  application_id:string prop ->
  capabilities:string prop list ->
  name:string prop ->
  string ->
  unit

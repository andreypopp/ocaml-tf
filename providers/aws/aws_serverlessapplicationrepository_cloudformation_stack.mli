(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_serverlessapplicationrepository_cloudformation_stack__timeouts

type aws_serverlessapplicationrepository_cloudformation_stack

type t = private {
  application_id : string prop;
  capabilities : string list prop;
  id : string prop;
  name : string prop;
  outputs : (string * string) list prop;
  parameters : (string * string) list prop;
  semantic_version : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

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
  t

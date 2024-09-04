(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_serverlessapplicationrepository_cloudformation_stack

val aws_serverlessapplicationrepository_cloudformation_stack :
  ?id:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?semantic_version:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  application_id:string prop ->
  capabilities:string prop list ->
  name:string prop ->
  unit ->
  aws_serverlessapplicationrepository_cloudformation_stack

val yojson_of_aws_serverlessapplicationrepository_cloudformation_stack :
  aws_serverlessapplicationrepository_cloudformation_stack -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  application_id : string prop;
  capabilities : string list prop;
  id : string prop;
  name : string prop;
  outputs : string Tf_core.assoc prop;
  parameters : string Tf_core.assoc prop;
  semantic_version : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?semantic_version:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  application_id:string prop ->
  capabilities:string prop list ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?semantic_version:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  application_id:string prop ->
  capabilities:string prop list ->
  name:string prop ->
  string ->
  t Tf_core.resource

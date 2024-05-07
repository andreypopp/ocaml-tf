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
  ?parameters:(string * string prop) list ->
  ?semantic_version:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
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
  outputs : (string * string) list prop;
  parameters : (string * string) list prop;
  semantic_version : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  ?semantic_version:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  application_id:string prop ->
  capabilities:string prop list ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  ?semantic_version:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  application_id:string prop ->
  capabilities:string prop list ->
  name:string prop ->
  string ->
  t Tf_core.resource

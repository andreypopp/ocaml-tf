(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type single_sign_on

val single_sign_on :
  ?type_:string prop ->
  ?user_assignment:string prop ->
  unit ->
  single_sign_on

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_datazone_domain

val aws_datazone_domain :
  ?description:string prop ->
  ?kms_key_identifier:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?single_sign_on:single_sign_on list ->
  ?timeouts:timeouts ->
  domain_execution_role:string prop ->
  name:string prop ->
  unit ->
  aws_datazone_domain

val yojson_of_aws_datazone_domain : aws_datazone_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  domain_execution_role : string prop;
  id : string prop;
  kms_key_identifier : string prop;
  name : string prop;
  portal_url : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?kms_key_identifier:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?single_sign_on:single_sign_on list ->
  ?timeouts:timeouts ->
  domain_execution_role:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?kms_key_identifier:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?single_sign_on:single_sign_on list ->
  ?timeouts:timeouts ->
  domain_execution_role:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource

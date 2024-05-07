(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type auto_enable

val auto_enable :
  ?lambda:bool prop ->
  ?lambda_code:bool prop ->
  ec2:bool prop ->
  ecr:bool prop ->
  unit ->
  auto_enable

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_inspector2_organization_configuration

val aws_inspector2_organization_configuration :
  ?id:string prop ->
  ?timeouts:timeouts ->
  auto_enable:auto_enable list ->
  unit ->
  aws_inspector2_organization_configuration

val yojson_of_aws_inspector2_organization_configuration :
  aws_inspector2_organization_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  max_account_limit_reached : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  auto_enable:auto_enable list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  auto_enable:auto_enable list ->
  string ->
  t Tf_core.resource

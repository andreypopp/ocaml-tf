(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type organization_configuration

val organization_configuration :
  configuration_type:string prop ->
  unit ->
  organization_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_securityhub_organization_configuration

val aws_securityhub_organization_configuration :
  ?auto_enable_standards:string prop ->
  ?id:string prop ->
  ?organization_configuration:organization_configuration list ->
  ?timeouts:timeouts ->
  auto_enable:bool prop ->
  unit ->
  aws_securityhub_organization_configuration

val yojson_of_aws_securityhub_organization_configuration :
  aws_securityhub_organization_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  auto_enable : bool prop;
  auto_enable_standards : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_enable_standards:string prop ->
  ?id:string prop ->
  ?organization_configuration:organization_configuration list ->
  ?timeouts:timeouts ->
  auto_enable:bool prop ->
  string ->
  t

val make :
  ?auto_enable_standards:string prop ->
  ?id:string prop ->
  ?organization_configuration:organization_configuration list ->
  ?timeouts:timeouts ->
  auto_enable:bool prop ->
  string ->
  t Tf_core.resource

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type network_access_control

val network_access_control :
  prefix_list_ids:string prop list ->
  vpce_ids:string prop list ->
  unit ->
  network_access_control

type timeouts

val timeouts :
  ?create:string prop -> ?update:string prop -> unit -> timeouts

type vpc_configuration

val vpc_configuration :
  security_group_ids:string prop list ->
  subnet_ids:string prop list ->
  unit ->
  vpc_configuration

type aws_grafana_workspace

val aws_grafana_workspace :
  ?configuration:string prop ->
  ?data_sources:string prop list ->
  ?description:string prop ->
  ?grafana_version:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?notification_destinations:string prop list ->
  ?organization_role_name:string prop ->
  ?organizational_units:string prop list ->
  ?role_arn:string prop ->
  ?stack_set_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?network_access_control:network_access_control list ->
  ?timeouts:timeouts ->
  ?vpc_configuration:vpc_configuration list ->
  account_access_type:string prop ->
  authentication_providers:string prop list ->
  permission_type:string prop ->
  unit ->
  aws_grafana_workspace

val yojson_of_aws_grafana_workspace : aws_grafana_workspace -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_access_type : string prop;
  arn : string prop;
  authentication_providers : string list prop;
  configuration : string prop;
  data_sources : string list prop;
  description : string prop;
  endpoint : string prop;
  grafana_version : string prop;
  id : string prop;
  name : string prop;
  notification_destinations : string list prop;
  organization_role_name : string prop;
  organizational_units : string list prop;
  permission_type : string prop;
  role_arn : string prop;
  saml_configuration_status : string prop;
  stack_set_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?configuration:string prop ->
  ?data_sources:string prop list ->
  ?description:string prop ->
  ?grafana_version:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?notification_destinations:string prop list ->
  ?organization_role_name:string prop ->
  ?organizational_units:string prop list ->
  ?role_arn:string prop ->
  ?stack_set_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?network_access_control:network_access_control list ->
  ?timeouts:timeouts ->
  ?vpc_configuration:vpc_configuration list ->
  account_access_type:string prop ->
  authentication_providers:string prop list ->
  permission_type:string prop ->
  string ->
  t

val make :
  ?configuration:string prop ->
  ?data_sources:string prop list ->
  ?description:string prop ->
  ?grafana_version:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?notification_destinations:string prop list ->
  ?organization_role_name:string prop ->
  ?organizational_units:string prop list ->
  ?role_arn:string prop ->
  ?stack_set_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?network_access_control:network_access_control list ->
  ?timeouts:timeouts ->
  ?vpc_configuration:vpc_configuration list ->
  account_access_type:string prop ->
  authentication_providers:string prop list ->
  permission_type:string prop ->
  string ->
  t Tf_core.resource

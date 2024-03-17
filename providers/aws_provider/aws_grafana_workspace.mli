(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_grafana_workspace__network_access_control
type aws_grafana_workspace__timeouts
type aws_grafana_workspace__vpc_configuration
type aws_grafana_workspace

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
  ?timeouts:aws_grafana_workspace__timeouts ->
  account_access_type:string prop ->
  authentication_providers:string prop list ->
  permission_type:string prop ->
  network_access_control:
    aws_grafana_workspace__network_access_control list ->
  vpc_configuration:aws_grafana_workspace__vpc_configuration list ->
  string ->
  t

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_grafana_workspace__network_access_control
type aws_grafana_workspace__timeouts
type aws_grafana_workspace__vpc_configuration
type aws_grafana_workspace

val aws_grafana_workspace :
  ?data_sources:string list ->
  ?description:string ->
  ?notification_destinations:string list ->
  ?organization_role_name:string ->
  ?organizational_units:string list ->
  ?role_arn:string ->
  ?stack_set_name:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_grafana_workspace__timeouts ->
  account_access_type:string ->
  authentication_providers:string list ->
  permission_type:string ->
  network_access_control:
    aws_grafana_workspace__network_access_control list ->
  vpc_configuration:aws_grafana_workspace__vpc_configuration list ->
  string ->
  unit

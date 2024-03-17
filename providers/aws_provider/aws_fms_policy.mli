(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_fms_policy__exclude_map
type aws_fms_policy__include_map

type aws_fms_policy__security_service_policy_data__policy_option__network_firewall_policy

type aws_fms_policy__security_service_policy_data__policy_option__third_party_firewall_policy

type aws_fms_policy__security_service_policy_data__policy_option
type aws_fms_policy__security_service_policy_data
type aws_fms_policy

val aws_fms_policy :
  ?delete_all_policy_resources:bool ->
  ?delete_unused_fm_managed_resources:bool ->
  ?description:string ->
  ?remediation_enabled:bool ->
  ?resource_tags:(string * string) list ->
  ?tags:(string * string) list ->
  exclude_resource_tags:bool ->
  name:string ->
  exclude_map:aws_fms_policy__exclude_map list ->
  include_map:aws_fms_policy__include_map list ->
  security_service_policy_data:
    aws_fms_policy__security_service_policy_data list ->
  string ->
  unit

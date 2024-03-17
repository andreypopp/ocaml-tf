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
  ?delete_all_policy_resources:bool prop ->
  ?delete_unused_fm_managed_resources:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?remediation_enabled:bool prop ->
  ?resource_tags:(string * string prop) list ->
  ?resource_type:string prop ->
  ?resource_type_list:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  exclude_resource_tags:bool prop ->
  name:string prop ->
  exclude_map:aws_fms_policy__exclude_map list ->
  include_map:aws_fms_policy__include_map list ->
  security_service_policy_data:
    aws_fms_policy__security_service_policy_data list ->
  string ->
  unit

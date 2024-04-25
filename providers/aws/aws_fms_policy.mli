(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type exclude_map

val exclude_map :
  ?account:string prop list ->
  ?orgunit:string prop list ->
  unit ->
  exclude_map

type include_map

val include_map :
  ?account:string prop list ->
  ?orgunit:string prop list ->
  unit ->
  include_map

type security_service_policy_data__policy_option__network_firewall_policy

val security_service_policy_data__policy_option__network_firewall_policy :
  ?firewall_deployment_model:string prop ->
  unit ->
  security_service_policy_data__policy_option__network_firewall_policy

type security_service_policy_data__policy_option__third_party_firewall_policy

val security_service_policy_data__policy_option__third_party_firewall_policy :
  ?firewall_deployment_model:string prop ->
  unit ->
  security_service_policy_data__policy_option__third_party_firewall_policy

type security_service_policy_data__policy_option

val security_service_policy_data__policy_option :
  ?network_firewall_policy:
    security_service_policy_data__policy_option__network_firewall_policy
    list ->
  ?third_party_firewall_policy:
    security_service_policy_data__policy_option__third_party_firewall_policy
    list ->
  unit ->
  security_service_policy_data__policy_option

type security_service_policy_data

val security_service_policy_data :
  ?managed_service_data:string prop ->
  ?policy_option:security_service_policy_data__policy_option list ->
  type_:string prop ->
  unit ->
  security_service_policy_data

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
  ?exclude_map:exclude_map list ->
  ?include_map:include_map list ->
  exclude_resource_tags:bool prop ->
  name:string prop ->
  security_service_policy_data:security_service_policy_data list ->
  unit ->
  aws_fms_policy

val yojson_of_aws_fms_policy : aws_fms_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  delete_all_policy_resources : bool prop;
  delete_unused_fm_managed_resources : bool prop;
  description : string prop;
  exclude_resource_tags : bool prop;
  id : string prop;
  name : string prop;
  policy_update_token : string prop;
  remediation_enabled : bool prop;
  resource_tags : (string * string) list prop;
  resource_type : string prop;
  resource_type_list : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?exclude_map:exclude_map list ->
  ?include_map:include_map list ->
  exclude_resource_tags:bool prop ->
  name:string prop ->
  security_service_policy_data:security_service_policy_data list ->
  string ->
  t

val make :
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
  ?exclude_map:exclude_map list ->
  ?include_map:include_map list ->
  exclude_resource_tags:bool prop ->
  name:string prop ->
  security_service_policy_data:security_service_policy_data list ->
  string ->
  t Tf_core.resource

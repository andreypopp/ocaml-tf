(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type resource_tag_mapping_list__compliance_details = {
  compliance_status : bool prop;  (** compliance_status *)
  keys_with_noncompliant_values : string prop list;
      (** keys_with_noncompliant_values *)
  non_compliant_keys : string prop list;  (** non_compliant_keys *)
}

type resource_tag_mapping_list = {
  compliance_details :
    resource_tag_mapping_list__compliance_details list;
      (** compliance_details *)
  resource_arn : string prop;  (** resource_arn *)
  tags : (string * string prop) list;  (** tags *)
}

type tag_filter

val tag_filter :
  ?values:string prop list -> key:string prop -> unit -> tag_filter

type aws_resourcegroupstaggingapi_resources

val aws_resourcegroupstaggingapi_resources :
  ?exclude_compliant_resources:bool prop ->
  ?id:string prop ->
  ?include_compliance_details:bool prop ->
  ?resource_arn_list:string prop list ->
  ?resource_type_filters:string prop list ->
  tag_filter:tag_filter list ->
  unit ->
  aws_resourcegroupstaggingapi_resources

val yojson_of_aws_resourcegroupstaggingapi_resources :
  aws_resourcegroupstaggingapi_resources -> json

(** RESOURCE REGISTRATION *)

type t = private {
  exclude_compliant_resources : bool prop;
  id : string prop;
  include_compliance_details : bool prop;
  resource_arn_list : string list prop;
  resource_tag_mapping_list : resource_tag_mapping_list list prop;
  resource_type_filters : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?exclude_compliant_resources:bool prop ->
  ?id:string prop ->
  ?include_compliance_details:bool prop ->
  ?resource_arn_list:string prop list ->
  ?resource_type_filters:string prop list ->
  tag_filter:tag_filter list ->
  string ->
  t

val make :
  ?exclude_compliant_resources:bool prop ->
  ?id:string prop ->
  ?include_compliance_details:bool prop ->
  ?resource_arn_list:string prop list ->
  ?resource_type_filters:string prop list ->
  tag_filter:tag_filter list ->
  string ->
  t Tf_core.resource

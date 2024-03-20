(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type compliance_status = {
  acknowledged_violation_count : float prop list;
      (** acknowledged_violation_count *)
  active_violation_count : float prop list;
      (** active_violation_count *)
}

[@@@deriving.end]

type ekm_provisioning_response = {
  ekm_provisioning_error_domain : string prop;
      (** ekm_provisioning_error_domain *)
  ekm_provisioning_error_mapping : string prop;
      (** ekm_provisioning_error_mapping *)
  ekm_provisioning_state : string prop;  (** ekm_provisioning_state *)
}

[@@@deriving.end]

type resources = {
  resource_id : float prop;  (** resource_id *)
  resource_type : string prop;  (** resource_type *)
}

[@@@deriving.end]

type saa_enrollment_response = {
  setup_errors : string prop list;  (** setup_errors *)
  setup_status : string prop;  (** setup_status *)
}

[@@@deriving.end]

type kms_settings

val kms_settings :
  next_rotation_time:string prop ->
  rotation_period:string prop ->
  unit ->
  kms_settings

type partner_permissions

val partner_permissions :
  ?assured_workloads_monitoring:bool prop ->
  ?data_logs_viewer:bool prop ->
  ?service_access_approver:bool prop ->
  unit ->
  partner_permissions

type resource_settings

val resource_settings :
  ?display_name:string prop ->
  ?resource_id:string prop ->
  ?resource_type:string prop ->
  unit ->
  resource_settings

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_assured_workloads_workload

val google_assured_workloads_workload :
  ?billing_account:string prop ->
  ?enable_sovereign_controls:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?partner:string prop ->
  ?provisioned_resources_parent:string prop ->
  ?violation_notifications_enabled:bool prop ->
  ?timeouts:timeouts ->
  compliance_regime:string prop ->
  display_name:string prop ->
  location:string prop ->
  organization:string prop ->
  kms_settings:kms_settings list ->
  partner_permissions:partner_permissions list ->
  resource_settings:resource_settings list ->
  unit ->
  google_assured_workloads_workload

val yojson_of_google_assured_workloads_workload :
  google_assured_workloads_workload -> json

(** RESOURCE REGISTRATION *)

type t = private {
  billing_account : string prop;
  compliance_regime : string prop;
  compliance_status : compliance_status list prop;
  compliant_but_disallowed_services : string list prop;
  create_time : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  ekm_provisioning_response : ekm_provisioning_response list prop;
  enable_sovereign_controls : bool prop;
  id : string prop;
  kaj_enrollment_state : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  organization : string prop;
  partner : string prop;
  provisioned_resources_parent : string prop;
  resources : resources list prop;
  saa_enrollment_response : saa_enrollment_response list prop;
  terraform_labels : (string * string) list prop;
  violation_notifications_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?billing_account:string prop ->
  ?enable_sovereign_controls:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?partner:string prop ->
  ?provisioned_resources_parent:string prop ->
  ?violation_notifications_enabled:bool prop ->
  ?timeouts:timeouts ->
  compliance_regime:string prop ->
  display_name:string prop ->
  location:string prop ->
  organization:string prop ->
  kms_settings:kms_settings list ->
  partner_permissions:partner_permissions list ->
  resource_settings:resource_settings list ->
  string ->
  t

val make :
  ?billing_account:string prop ->
  ?enable_sovereign_controls:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?partner:string prop ->
  ?provisioned_resources_parent:string prop ->
  ?violation_notifications_enabled:bool prop ->
  ?timeouts:timeouts ->
  compliance_regime:string prop ->
  display_name:string prop ->
  location:string prop ->
  organization:string prop ->
  kms_settings:kms_settings list ->
  partner_permissions:partner_permissions list ->
  resource_settings:resource_settings list ->
  string ->
  t Tf_core.resource

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_assured_workloads_workload__kms_settings
type google_assured_workloads_workload__partner_permissions
type google_assured_workloads_workload__resource_settings
type google_assured_workloads_workload__timeouts

type google_assured_workloads_workload__compliance_status = {
  acknowledged_violation_count : float prop list;
      (** acknowledged_violation_count *)
  active_violation_count : float prop list;
      (** active_violation_count *)
}

type google_assured_workloads_workload__ekm_provisioning_response = {
  ekm_provisioning_error_domain : string prop;
      (** ekm_provisioning_error_domain *)
  ekm_provisioning_error_mapping : string prop;
      (** ekm_provisioning_error_mapping *)
  ekm_provisioning_state : string prop;  (** ekm_provisioning_state *)
}

type google_assured_workloads_workload__resources = {
  resource_id : float prop;  (** resource_id *)
  resource_type : string prop;  (** resource_type *)
}

type google_assured_workloads_workload__saa_enrollment_response = {
  setup_errors : string prop list;  (** setup_errors *)
  setup_status : string prop;  (** setup_status *)
}

type google_assured_workloads_workload

type t = private {
  billing_account : string prop;
  compliance_regime : string prop;
  compliance_status :
    google_assured_workloads_workload__compliance_status list prop;
  compliant_but_disallowed_services : string list prop;
  create_time : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  ekm_provisioning_response :
    google_assured_workloads_workload__ekm_provisioning_response list
    prop;
  enable_sovereign_controls : bool prop;
  id : string prop;
  kaj_enrollment_state : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  organization : string prop;
  partner : string prop;
  provisioned_resources_parent : string prop;
  resources : google_assured_workloads_workload__resources list prop;
  saa_enrollment_response :
    google_assured_workloads_workload__saa_enrollment_response list
    prop;
  terraform_labels : (string * string) list prop;
  violation_notifications_enabled : bool prop;
}

val google_assured_workloads_workload :
  ?billing_account:string prop ->
  ?enable_sovereign_controls:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?partner:string prop ->
  ?provisioned_resources_parent:string prop ->
  ?violation_notifications_enabled:bool prop ->
  ?timeouts:google_assured_workloads_workload__timeouts ->
  compliance_regime:string prop ->
  display_name:string prop ->
  location:string prop ->
  organization:string prop ->
  kms_settings:google_assured_workloads_workload__kms_settings list ->
  partner_permissions:
    google_assured_workloads_workload__partner_permissions list ->
  resource_settings:
    google_assured_workloads_workload__resource_settings list ->
  string ->
  t

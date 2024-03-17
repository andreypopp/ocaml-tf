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
  unit

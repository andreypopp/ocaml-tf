(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_assured_workloads_workload__kms_settings
type google_assured_workloads_workload__partner_permissions
type google_assured_workloads_workload__resource_settings
type google_assured_workloads_workload__timeouts

type google_assured_workloads_workload__compliance_status = {
  acknowledged_violation_count : float list;
      (** acknowledged_violation_count *)
  active_violation_count : float list;  (** active_violation_count *)
}

type google_assured_workloads_workload__ekm_provisioning_response = {
  ekm_provisioning_error_domain : string;
      (** ekm_provisioning_error_domain *)
  ekm_provisioning_error_mapping : string;
      (** ekm_provisioning_error_mapping *)
  ekm_provisioning_state : string;  (** ekm_provisioning_state *)
}

type google_assured_workloads_workload__resources = {
  resource_id : float;  (** resource_id *)
  resource_type : string;  (** resource_type *)
}

type google_assured_workloads_workload__saa_enrollment_response = {
  setup_errors : string list;  (** setup_errors *)
  setup_status : string;  (** setup_status *)
}

type google_assured_workloads_workload

val google_assured_workloads_workload :
  ?billing_account:string ->
  ?enable_sovereign_controls:bool ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?partner:string ->
  ?provisioned_resources_parent:string ->
  ?violation_notifications_enabled:bool ->
  ?timeouts:google_assured_workloads_workload__timeouts ->
  compliance_regime:string ->
  display_name:string ->
  location:string ->
  organization:string ->
  kms_settings:google_assured_workloads_workload__kms_settings list ->
  partner_permissions:
    google_assured_workloads_workload__partner_permissions list ->
  resource_settings:
    google_assured_workloads_workload__resource_settings list ->
  string ->
  unit

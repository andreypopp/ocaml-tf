(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_assured_workloads_workload__kms_settings = {
  next_rotation_time : string;
      (** Required. Input only. Immutable. The time at which the Key Management Service will automatically create a new version of the crypto key and mark it as the primary. *)
  rotation_period : string;
      (** Required. Input only. Immutable. will be advanced by this period when the Key Management Service automatically rotates a key. Must be at least 24 hours and at most 876,000 hours. *)
}
[@@deriving yojson_of]
(** **DEPRECATED** Input only. Settings used to create a CMEK crypto key. When set, a project with a KMS CMEK key is provisioned. This field is deprecated as of Feb 28, 2022. In order to create a Keyring, callers should specify, ENCRYPTION_KEYS_PROJECT or KEYRING in ResourceSettings.resource_type field. *)

type google_assured_workloads_workload__partner_permissions = {
  assured_workloads_monitoring : bool option; [@option]
      (** Optional. Allow partner to view violation alerts. *)
  data_logs_viewer : bool option; [@option]
      (** Allow the partner to view inspectability logs and monitoring violations. *)
  service_access_approver : bool option; [@option]
      (** Optional. Allow partner to view access approval logs. *)
}
[@@deriving yojson_of]
(** Optional. Permissions granted to the AW Partner SA account for the customer workload *)

type google_assured_workloads_workload__resource_settings = {
  display_name : string option; [@option]
      (** User-assigned resource display name. If not empty it will be used to create a resource with the specified name. *)
  resource_id : string option; [@option]
      (** Resource identifier. For a project this represents projectId. If the project is already taken, the workload creation will fail. For KeyRing, this represents the keyring_id. For a folder, don't set this value as folder_id is assigned by Google. *)
  resource_type : string option; [@option]
      (** Indicates the type of resource. This field should be specified to correspond the id to the right project type (CONSUMER_PROJECT or ENCRYPTION_KEYS_PROJECT) Possible values: RESOURCE_TYPE_UNSPECIFIED, CONSUMER_PROJECT, ENCRYPTION_KEYS_PROJECT, KEYRING, CONSUMER_FOLDER *)
}
[@@deriving yojson_of]
(** Input only. Resource properties that are used to customize workload resources. These properties (such as custom project id) will be used to create workload resources if possible. This field is optional. *)

type google_assured_workloads_workload__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_assured_workloads_workload__timeouts *)

type google_assured_workloads_workload__compliance_status = {
  acknowledged_violation_count : float list;
      (** acknowledged_violation_count *)
  active_violation_count : float list;  (** active_violation_count *)
}
[@@deriving yojson_of]

type google_assured_workloads_workload__ekm_provisioning_response = {
  ekm_provisioning_error_domain : string;
      (** ekm_provisioning_error_domain *)
  ekm_provisioning_error_mapping : string;
      (** ekm_provisioning_error_mapping *)
  ekm_provisioning_state : string;  (** ekm_provisioning_state *)
}
[@@deriving yojson_of]

type google_assured_workloads_workload__resources = {
  resource_id : float;  (** resource_id *)
  resource_type : string;  (** resource_type *)
}
[@@deriving yojson_of]

type google_assured_workloads_workload__saa_enrollment_response = {
  setup_errors : string list;  (** setup_errors *)
  setup_status : string;  (** setup_status *)
}
[@@deriving yojson_of]

type google_assured_workloads_workload = {
  billing_account : string option; [@option]
      (** Optional. Input only. The billing account used for the resources which are direct children of workload. This billing account is initially associated with the resources created as part of Workload creation. After the initial creation of these resources, the customer can change the assigned billing account. The resource name has the form `billingAccounts/{billing_account_id}`. For example, `billingAccounts/012345-567890-ABCDEF`. *)
  compliance_regime : string;
      (** Required. Immutable. Compliance Regime associated with this workload. Possible values: COMPLIANCE_REGIME_UNSPECIFIED, IL4, CJIS, FEDRAMP_HIGH, FEDRAMP_MODERATE, US_REGIONAL_ACCESS, HIPAA, HITRUST, EU_REGIONS_AND_SUPPORT, CA_REGIONS_AND_SUPPORT, ITAR, AU_REGIONS_AND_US_SUPPORT, ASSURED_WORKLOADS_FOR_PARTNERS, ISR_REGIONS, ISR_REGIONS_AND_SUPPORT, CA_PROTECTED_B, IL5, IL2, JP_REGIONS_AND_SUPPORT *)
  display_name : string;
      (** Required. The user-assigned display name of the Workload. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, and spaces. Example: My Workload *)
  enable_sovereign_controls : bool option; [@option]
      (** Optional. Indicates the sovereignty status of the given workload. Currently meant to be used by Europe/Canada customers. *)
  id : string option; [@option]  (** id *)
  labels : (string * string) list option; [@option]
      (** Optional. Labels applied to the workload.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field `effective_labels` for all of the labels present on the resource. *)
  location : string;  (** The location for the resource *)
  organization : string;  (** The organization for the resource *)
  partner : string option; [@option]
      (** Optional. Partner regime associated with this workload. Possible values: PARTNER_UNSPECIFIED, LOCAL_CONTROLS_BY_S3NS, SOVEREIGN_CONTROLS_BY_T_SYSTEMS, SOVEREIGN_CONTROLS_BY_SIA_MINSAIT, SOVEREIGN_CONTROLS_BY_PSN *)
  provisioned_resources_parent : string option; [@option]
      (** Input only. The parent resource for the resources managed by this Assured Workload. May be either empty or a folder resource which is a child of the Workload parent. If not specified all resources are created under the parent organization. Format: folders/{folder_id} *)
  violation_notifications_enabled : bool option; [@option]
      (** Optional. Indicates whether the e-mail notification for a violation is enabled for a workload. This value will be by default True, and if not present will be considered as true. This should only be updated via updateWorkload call. Any Changes to this field during the createWorkload call will not be honored. This will always be true while creating the workload. *)
  kms_settings :
    google_assured_workloads_workload__kms_settings list;
  partner_permissions :
    google_assured_workloads_workload__partner_permissions list;
  resource_settings :
    google_assured_workloads_workload__resource_settings list;
  timeouts : google_assured_workloads_workload__timeouts option;
}
[@@deriving yojson_of]
(** google_assured_workloads_workload *)

let google_assured_workloads_workload ?billing_account
    ?enable_sovereign_controls ?id ?labels ?partner
    ?provisioned_resources_parent ?violation_notifications_enabled
    ?timeouts ~compliance_regime ~display_name ~location
    ~organization ~kms_settings ~partner_permissions
    ~resource_settings __resource_id =
  let __resource_type = "google_assured_workloads_workload" in
  let __resource =
    {
      billing_account;
      compliance_regime;
      display_name;
      enable_sovereign_controls;
      id;
      labels;
      location;
      organization;
      partner;
      provisioned_resources_parent;
      violation_notifications_enabled;
      kms_settings;
      partner_permissions;
      resource_settings;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_assured_workloads_workload __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_compute_region_instance_group_manager__all_instances_config = {
  labels : (string * string) list option; [@option]
      (** The label key-value pairs that you want to patch onto the instance, *)
  metadata : (string * string) list option; [@option]
      (** The metadata key-value pairs that you want to patch onto the instance. For more information, see Project and instance metadata, *)
}
[@@deriving yojson_of]
(** Specifies configuration that overrides the instance template configuration for the group. *)

type google_compute_region_instance_group_manager__auto_healing_policies = {
  health_check : string;
      (** The health check resource that signals autohealing. *)
  initial_delay_sec : float;
      (** The number of seconds that the managed instance group waits before it applies autohealing policies to new instances or recently recreated instances. Between 0 and 3600. *)
}
[@@deriving yojson_of]
(** The autohealing policies for this managed instance group. You can specify only one value. *)

type google_compute_region_instance_group_manager__instance_lifecycle_policy = {
  default_action_on_failure : string option; [@option]
      (** Default behavior for all instance or health check failures. *)
  force_update_on_repair : string option; [@option]
      (** Specifies whether to apply the group's latest configuration when repairing a VM. Valid options are: YES, NO. If YES and you updated the group's instance template or per-instance configurations after the VM was created, then these changes are applied when VM is repaired. If NO (default), then updates are applied in accordance with the group's update policy type. *)
}
[@@deriving yojson_of]
(** The instance lifecycle policy for this managed instance group. *)

type google_compute_region_instance_group_manager__named_port = {
  name : string;  (** The name of the port. *)
  port : float;  (** The port number. *)
}
[@@deriving yojson_of]
(** The named port configuration. *)

type google_compute_region_instance_group_manager__stateful_disk = {
  delete_rule : string option; [@option]
      (** A value that prescribes what should happen to the stateful disk when the VM instance is deleted. The available options are NEVER and ON_PERMANENT_INSTANCE_DELETION. NEVER - detach the disk when the VM is deleted, but do not delete the disk. ON_PERMANENT_INSTANCE_DELETION will delete the stateful disk when the VM is permanently deleted from the instance group. The default is NEVER. *)
  device_name : string;
      (** The device name of the disk to be attached. *)
}
[@@deriving yojson_of]
(** Disks created on the instances that will be preserved on instance delete, update, etc. Structure is documented below. For more information see the official documentation. Proactive cross zone instance redistribution must be disabled before you can update stateful disks on existing instance group managers. This can be controlled via the update_policy. *)

type google_compute_region_instance_group_manager__stateful_external_ip = {
  delete_rule : string option; [@option]
      (** A value that prescribes what should happen to an associated static Address resource when a VM instance is permanently deleted. The available options are NEVER and ON_PERMANENT_INSTANCE_DELETION. NEVER - detach the IP when the VM is deleted, but do not delete the address resource. ON_PERMANENT_INSTANCE_DELETION will delete the stateful address when the VM is permanently deleted from the instance group. The default is NEVER. *)
  interface_name : string option; [@option]
      (** The network interface name *)
}
[@@deriving yojson_of]
(** External IPs considered stateful by the instance group.  *)

type google_compute_region_instance_group_manager__stateful_internal_ip = {
  delete_rule : string option; [@option]
      (** A value that prescribes what should happen to an associated static Address resource when a VM instance is permanently deleted. The available options are NEVER and ON_PERMANENT_INSTANCE_DELETION. NEVER - detach the IP when the VM is deleted, but do not delete the address resource. ON_PERMANENT_INSTANCE_DELETION will delete the stateful address when the VM is permanently deleted from the instance group. The default is NEVER. *)
  interface_name : string option; [@option]
      (** The network interface name *)
}
[@@deriving yojson_of]
(** External IPs considered stateful by the instance group.  *)

type google_compute_region_instance_group_manager__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_region_instance_group_manager__timeouts *)

type google_compute_region_instance_group_manager__update_policy = {
  instance_redistribution_type : string option; [@option]
      (** The instance redistribution policy for regional managed instance groups. Valid values are: PROACTIVE, NONE. If PROACTIVE (default), the group attempts to maintain an even distribution of VM instances across zones in the region. If NONE, proactive redistribution is disabled. *)
  max_surge_fixed : float option; [@option]
      (** The maximum number of instances that can be created above the specified targetSize during the update process. Conflicts with max_surge_percent. It has to be either 0 or at least equal to the number of zones. If fixed values are used, at least one of max_unavailable_fixed or max_surge_fixed must be greater than 0. *)
  max_surge_percent : float option; [@option]
      (** The maximum number of instances(calculated as percentage) that can be created above the specified targetSize during the update process. Conflicts with max_surge_fixed. Percent value is only allowed for regional managed instance groups with size at least 10. *)
  max_unavailable_fixed : float option; [@option]
      (** The maximum number of instances that can be unavailable during the update process. Conflicts with max_unavailable_percent. It has to be either 0 or at least equal to the number of zones. If fixed values are used, at least one of max_unavailable_fixed or max_surge_fixed must be greater than 0. *)
  max_unavailable_percent : float option; [@option]
      (** The maximum number of instances(calculated as percentage) that can be unavailable during the update process. Conflicts with max_unavailable_fixed. Percent value is only allowed for regional managed instance groups with size at least 10. *)
  minimal_action : string;
      (** Minimal action to be taken on an instance. You can specify either REFRESH to update without stopping instances, RESTART to restart existing instances or REPLACE to delete and create new instances from the target template. If you specify a REFRESH, the Updater will attempt to perform that action only. However, if the Updater determines that the minimal action you specify is not enough to perform the update, it might perform a more disruptive action. *)
  most_disruptive_allowed_action : string option; [@option]
      (** Most disruptive action that is allowed to be taken on an instance. You can specify either NONE to forbid any actions, REFRESH to allow actions that do not need instance restart, RESTART to allow actions that can be applied without instance replacing or REPLACE to allow all possible actions. If the Updater determines that the minimal update action needed is more disruptive than most disruptive allowed action you specify it will not perform the update at all. *)
  replacement_method : string option; [@option]
      (** The instance replacement method for regional managed instance groups. Valid values are: RECREATE, SUBSTITUTE. If SUBSTITUTE (default), the group replaces VM instances with new instances that have randomly generated names. If RECREATE, instance names are preserved.  You must also set max_unavailable_fixed or max_unavailable_percent to be greater than 0. *)
  type_ : string; [@key "type"]
      (** The type of update process. You can specify either PROACTIVE so that the instance group manager proactively executes actions in order to bring instances to their target versions or OPPORTUNISTIC so that no action is proactively executed but the update will be performed as part of other actions (for example, resizes or recreateInstances calls). *)
}
[@@deriving yojson_of]
(** The update policy for this managed instance group. *)

type google_compute_region_instance_group_manager__version__target_size = {
  fixed : float option; [@option]
      (** The number of instances which are managed for this version. Conflicts with percent. *)
  percent : float option; [@option]
      (** The number of instances (calculated as percentage) which are managed for this version. Conflicts with fixed. Note that when using percent, rounding will be in favor of explicitly set target_size values; a managed instance group with 2 instances and 2 versions, one of which has a target_size.percent of 60 will create 2 instances of that version. *)
}
[@@deriving yojson_of]
(** The number of instances calculated as a fixed number or a percentage depending on the settings. *)

type google_compute_region_instance_group_manager__version = {
  instance_template : string;
      (** The full URL to an instance template from which all new instances of this version will be created. *)
  name : string option; [@option]  (** Version name. *)
  target_size :
    google_compute_region_instance_group_manager__version__target_size
    list;
}
[@@deriving yojson_of]
(** Application versions managed by this instance group. Each version deals with a specific instance template, allowing canary release scenarios. *)

type google_compute_region_instance_group_manager__status__version_target = {
  is_reached : bool;  (** is_reached *)
}
[@@deriving yojson_of]

type google_compute_region_instance_group_manager__status__stateful__per_instance_configs = {
  all_effective : bool;  (** all_effective *)
}
[@@deriving yojson_of]

type google_compute_region_instance_group_manager__status__stateful = {
  has_stateful_config : bool;  (** has_stateful_config *)
  per_instance_configs :
    google_compute_region_instance_group_manager__status__stateful__per_instance_configs
    list;
      (** per_instance_configs *)
}
[@@deriving yojson_of]

type google_compute_region_instance_group_manager__status__all_instances_config = {
  effective : bool;  (** effective *)
}
[@@deriving yojson_of]

type google_compute_region_instance_group_manager__status = {
  all_instances_config :
    google_compute_region_instance_group_manager__status__all_instances_config
    list;
      (** all_instances_config *)
  is_stable : bool;  (** is_stable *)
  stateful :
    google_compute_region_instance_group_manager__status__stateful
    list;
      (** stateful *)
  version_target :
    google_compute_region_instance_group_manager__status__version_target
    list;
      (** version_target *)
}
[@@deriving yojson_of]

type google_compute_region_instance_group_manager = {
  base_instance_name : string;
      (** The base instance name to use for instances in this group. The value must be a valid RFC1035 name. Supported characters are lowercase letters, numbers, and hyphens (-). Instances are named by appending a hyphen and a random four-character string to the base instance name. *)
  description : string option; [@option]
      (** An optional textual description of the instance group manager. *)
  list_managed_instances_results : string option; [@option]
      (** Pagination behavior of the listManagedInstances API method for this managed instance group. Valid values are: PAGELESS, PAGINATED. If PAGELESS (default), Pagination is disabled for the group's listManagedInstances API method. maxResults and pageToken query parameters are ignored and all instances are returned in a single response. If PAGINATED, pagination is enabled, maxResults and pageToken query parameters are respected. *)
  name : string;
      (** The name of the instance group manager. Must be 1-63 characters long and comply with RFC1035. Supported characters include lowercase letters, numbers, and hyphens. *)
  target_pools : string list option; [@option]
      (** The full URL of all target pools to which new instances in the group are added. Updating the target pools attribute does not affect existing instances. *)
  wait_for_instances : bool option; [@option]
      (** Whether to wait for all instances to be created/updated before returning. Note that if this is set to true and the operation does not succeed, Terraform will continue trying until it times out. *)
  wait_for_instances_status : string option; [@option]
      (** When used with wait_for_instances specifies the status to wait for. When STABLE is specified this resource will wait until the instances are stable before returning. When UPDATED is set, it will wait for the version target to be reached and any per instance configs to be effective and all instances configs to be effective as well as all instances to be stable before returning. *)
  all_instances_config :
    google_compute_region_instance_group_manager__all_instances_config
    list;
  auto_healing_policies :
    google_compute_region_instance_group_manager__auto_healing_policies
    list;
  instance_lifecycle_policy :
    google_compute_region_instance_group_manager__instance_lifecycle_policy
    list;
  named_port :
    google_compute_region_instance_group_manager__named_port list;
  stateful_disk :
    google_compute_region_instance_group_manager__stateful_disk list;
  stateful_external_ip :
    google_compute_region_instance_group_manager__stateful_external_ip
    list;
  stateful_internal_ip :
    google_compute_region_instance_group_manager__stateful_internal_ip
    list;
  timeouts :
    google_compute_region_instance_group_manager__timeouts option;
  update_policy :
    google_compute_region_instance_group_manager__update_policy list;
  version :
    google_compute_region_instance_group_manager__version list;
}
[@@deriving yojson_of]
(** google_compute_region_instance_group_manager *)

let google_compute_region_instance_group_manager ?description
    ?list_managed_instances_results ?target_pools ?wait_for_instances
    ?wait_for_instances_status ?timeouts ~base_instance_name ~name
    ~all_instances_config ~auto_healing_policies
    ~instance_lifecycle_policy ~named_port ~stateful_disk
    ~stateful_external_ip ~stateful_internal_ip ~update_policy
    ~version __resource_id =
  let __resource_type =
    "google_compute_region_instance_group_manager"
  in
  let __resource =
    {
      base_instance_name;
      description;
      list_managed_instances_results;
      name;
      target_pools;
      wait_for_instances;
      wait_for_instances_status;
      all_instances_config;
      auto_healing_policies;
      instance_lifecycle_policy;
      named_port;
      stateful_disk;
      stateful_external_ip;
      stateful_internal_ip;
      timeouts;
      update_policy;
      version;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_region_instance_group_manager
       __resource);
  ()

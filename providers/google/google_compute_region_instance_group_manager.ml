(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type all_instances_config = {
  labels : (string * string prop) list option; [@option]
      (** The label key-value pairs that you want to patch onto the instance, *)
  metadata : (string * string prop) list option; [@option]
      (** The metadata key-value pairs that you want to patch onto the instance. For more information, see Project and instance metadata, *)
}
[@@deriving yojson_of]
(** Specifies configuration that overrides the instance template configuration for the group. *)

type auto_healing_policies = {
  health_check : string prop;
      (** The health check resource that signals autohealing. *)
  initial_delay_sec : float prop;
      (** The number of seconds that the managed instance group waits before it applies autohealing policies to new instances or recently recreated instances. Between 0 and 3600. *)
}
[@@deriving yojson_of]
(** The autohealing policies for this managed instance group. You can specify only one value. *)

type instance_lifecycle_policy = {
  default_action_on_failure : string prop option; [@option]
      (** Default behavior for all instance or health check failures. *)
  force_update_on_repair : string prop option; [@option]
      (** Specifies whether to apply the group's latest configuration when repairing a VM. Valid options are: YES, NO. If YES and you updated the group's instance template or per-instance configurations after the VM was created, then these changes are applied when VM is repaired. If NO (default), then updates are applied in accordance with the group's update policy type. *)
}
[@@deriving yojson_of]
(** The instance lifecycle policy for this managed instance group. *)

type named_port = {
  name : string prop;  (** The name of the port. *)
  port : float prop;  (** The port number. *)
}
[@@deriving yojson_of]
(** The named port configuration. *)

type stateful_disk = {
  delete_rule : string prop option; [@option]
      (** A value that prescribes what should happen to the stateful disk when the VM instance is deleted. The available options are NEVER and ON_PERMANENT_INSTANCE_DELETION. NEVER - detach the disk when the VM is deleted, but do not delete the disk. ON_PERMANENT_INSTANCE_DELETION will delete the stateful disk when the VM is permanently deleted from the instance group. The default is NEVER. *)
  device_name : string prop;
      (** The device name of the disk to be attached. *)
}
[@@deriving yojson_of]
(** Disks created on the instances that will be preserved on instance delete, update, etc. Structure is documented below. For more information see the official documentation. Proactive cross zone instance redistribution must be disabled before you can update stateful disks on existing instance group managers. This can be controlled via the update_policy. *)

type stateful_external_ip = {
  delete_rule : string prop option; [@option]
      (** A value that prescribes what should happen to an associated static Address resource when a VM instance is permanently deleted. The available options are NEVER and ON_PERMANENT_INSTANCE_DELETION. NEVER - detach the IP when the VM is deleted, but do not delete the address resource. ON_PERMANENT_INSTANCE_DELETION will delete the stateful address when the VM is permanently deleted from the instance group. The default is NEVER. *)
  interface_name : string prop option; [@option]
      (** The network interface name *)
}
[@@deriving yojson_of]
(** External IPs considered stateful by the instance group.  *)

type stateful_internal_ip = {
  delete_rule : string prop option; [@option]
      (** A value that prescribes what should happen to an associated static Address resource when a VM instance is permanently deleted. The available options are NEVER and ON_PERMANENT_INSTANCE_DELETION. NEVER - detach the IP when the VM is deleted, but do not delete the address resource. ON_PERMANENT_INSTANCE_DELETION will delete the stateful address when the VM is permanently deleted from the instance group. The default is NEVER. *)
  interface_name : string prop option; [@option]
      (** The network interface name *)
}
[@@deriving yojson_of]
(** External IPs considered stateful by the instance group.  *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type update_policy = {
  instance_redistribution_type : string prop option; [@option]
      (** The instance redistribution policy for regional managed instance groups. Valid values are: PROACTIVE, NONE. If PROACTIVE (default), the group attempts to maintain an even distribution of VM instances across zones in the region. If NONE, proactive redistribution is disabled. *)
  max_surge_fixed : float prop option; [@option]
      (** The maximum number of instances that can be created above the specified targetSize during the update process. Conflicts with max_surge_percent. It has to be either 0 or at least equal to the number of zones. If fixed values are used, at least one of max_unavailable_fixed or max_surge_fixed must be greater than 0. *)
  max_surge_percent : float prop option; [@option]
      (** The maximum number of instances(calculated as percentage) that can be created above the specified targetSize during the update process. Conflicts with max_surge_fixed. Percent value is only allowed for regional managed instance groups with size at least 10. *)
  max_unavailable_fixed : float prop option; [@option]
      (** The maximum number of instances that can be unavailable during the update process. Conflicts with max_unavailable_percent. It has to be either 0 or at least equal to the number of zones. If fixed values are used, at least one of max_unavailable_fixed or max_surge_fixed must be greater than 0. *)
  max_unavailable_percent : float prop option; [@option]
      (** The maximum number of instances(calculated as percentage) that can be unavailable during the update process. Conflicts with max_unavailable_fixed. Percent value is only allowed for regional managed instance groups with size at least 10. *)
  minimal_action : string prop;
      (** Minimal action to be taken on an instance. You can specify either REFRESH to update without stopping instances, RESTART to restart existing instances or REPLACE to delete and create new instances from the target template. If you specify a REFRESH, the Updater will attempt to perform that action only. However, if the Updater determines that the minimal action you specify is not enough to perform the update, it might perform a more disruptive action. *)
  most_disruptive_allowed_action : string prop option; [@option]
      (** Most disruptive action that is allowed to be taken on an instance. You can specify either NONE to forbid any actions, REFRESH to allow actions that do not need instance restart, RESTART to allow actions that can be applied without instance replacing or REPLACE to allow all possible actions. If the Updater determines that the minimal update action needed is more disruptive than most disruptive allowed action you specify it will not perform the update at all. *)
  replacement_method : string prop option; [@option]
      (** The instance replacement method for regional managed instance groups. Valid values are: RECREATE, SUBSTITUTE. If SUBSTITUTE (default), the group replaces VM instances with new instances that have randomly generated names. If RECREATE, instance names are preserved.  You must also set max_unavailable_fixed or max_unavailable_percent to be greater than 0. *)
  type_ : string prop; [@key "type"]
      (** The type of update process. You can specify either PROACTIVE so that the instance group manager proactively executes actions in order to bring instances to their target versions or OPPORTUNISTIC so that no action is proactively executed but the update will be performed as part of other actions (for example, resizes or recreateInstances calls). *)
}
[@@deriving yojson_of]
(** The update policy for this managed instance group. *)

type version__target_size = {
  fixed : float prop option; [@option]
      (** The number of instances which are managed for this version. Conflicts with percent. *)
  percent : float prop option; [@option]
      (** The number of instances (calculated as percentage) which are managed for this version. Conflicts with fixed. Note that when using percent, rounding will be in favor of explicitly set target_size values; a managed instance group with 2 instances and 2 versions, one of which has a target_size.percent of 60 will create 2 instances of that version. *)
}
[@@deriving yojson_of]
(** The number of instances calculated as a fixed number or a percentage depending on the settings. *)

type version = {
  instance_template : string prop;
      (** The full URL to an instance template from which all new instances of this version will be created. *)
  name : string prop option; [@option]  (** Version name. *)
  target_size : version__target_size list;
}
[@@deriving yojson_of]
(** Application versions managed by this instance group. Each version deals with a specific instance template, allowing canary release scenarios. *)

type status__version_target = {
  is_reached : bool prop;  (** is_reached *)
}
[@@deriving yojson_of]

type status__stateful__per_instance_configs = {
  all_effective : bool prop;  (** all_effective *)
}
[@@deriving yojson_of]

type status__stateful = {
  has_stateful_config : bool prop;  (** has_stateful_config *)
  per_instance_configs : status__stateful__per_instance_configs list;
      (** per_instance_configs *)
}
[@@deriving yojson_of]

type status__all_instances_config = {
  effective : bool prop;  (** effective *)
}
[@@deriving yojson_of]

type status = {
  all_instances_config : status__all_instances_config list;
      (** all_instances_config *)
  is_stable : bool prop;  (** is_stable *)
  stateful : status__stateful list;  (** stateful *)
  version_target : status__version_target list;  (** version_target *)
}
[@@deriving yojson_of]

type google_compute_region_instance_group_manager = {
  base_instance_name : string prop;
      (** The base instance name to use for instances in this group. The value must be a valid RFC1035 name. Supported characters are lowercase letters, numbers, and hyphens (-). Instances are named by appending a hyphen and a random four-character string to the base instance name. *)
  description : string prop option; [@option]
      (** An optional textual description of the instance group manager. *)
  distribution_policy_target_shape : string prop option; [@option]
      (** The shape to which the group converges either proactively or on resize events (depending on the value set in updatePolicy.instanceRedistributionType). *)
  distribution_policy_zones : string prop list option; [@option]
      (** The distribution policy for this managed instance group. You can specify one or more values. *)
  id : string prop option; [@option]  (** id *)
  list_managed_instances_results : string prop option; [@option]
      (** Pagination behavior of the listManagedInstances API method for this managed instance group. Valid values are: PAGELESS, PAGINATED. If PAGELESS (default), Pagination is disabled for the group's listManagedInstances API method. maxResults and pageToken query parameters are ignored and all instances are returned in a single response. If PAGINATED, pagination is enabled, maxResults and pageToken query parameters are respected. *)
  name : string prop;
      (** The name of the instance group manager. Must be 1-63 characters long and comply with RFC1035. Supported characters include lowercase letters, numbers, and hyphens. *)
  project : string prop option; [@option]
      (** The ID of the project in which the resource belongs. If it is not provided, the provider project is used. *)
  region : string prop option; [@option]
      (** The region where the managed instance group resides. *)
  target_pools : string prop list option; [@option]
      (** The full URL of all target pools to which new instances in the group are added. Updating the target pools attribute does not affect existing instances. *)
  target_size : float prop option; [@option]
      (** The target number of running instances for this managed instance group. This value should always be explicitly set unless this resource is attached to an autoscaler, in which case it should never be set. Defaults to 0. *)
  wait_for_instances : bool prop option; [@option]
      (** Whether to wait for all instances to be created/updated before returning. Note that if this is set to true and the operation does not succeed, Terraform will continue trying until it times out. *)
  wait_for_instances_status : string prop option; [@option]
      (** When used with wait_for_instances specifies the status to wait for. When STABLE is specified this resource will wait until the instances are stable before returning. When UPDATED is set, it will wait for the version target to be reached and any per instance configs to be effective and all instances configs to be effective as well as all instances to be stable before returning. *)
  all_instances_config : all_instances_config list;
  auto_healing_policies : auto_healing_policies list;
  instance_lifecycle_policy : instance_lifecycle_policy list;
  named_port : named_port list;
  stateful_disk : stateful_disk list;
  stateful_external_ip : stateful_external_ip list;
  stateful_internal_ip : stateful_internal_ip list;
  timeouts : timeouts option;
  update_policy : update_policy list;
  version : version list;
}
[@@deriving yojson_of]
(** google_compute_region_instance_group_manager *)

let all_instances_config ?labels ?metadata () : all_instances_config
    =
  { labels; metadata }

let auto_healing_policies ~health_check ~initial_delay_sec () :
    auto_healing_policies =
  { health_check; initial_delay_sec }

let instance_lifecycle_policy ?default_action_on_failure
    ?force_update_on_repair () : instance_lifecycle_policy =
  { default_action_on_failure; force_update_on_repair }

let named_port ~name ~port () : named_port = { name; port }

let stateful_disk ?delete_rule ~device_name () : stateful_disk =
  { delete_rule; device_name }

let stateful_external_ip ?delete_rule ?interface_name () :
    stateful_external_ip =
  { delete_rule; interface_name }

let stateful_internal_ip ?delete_rule ?interface_name () :
    stateful_internal_ip =
  { delete_rule; interface_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let update_policy ?instance_redistribution_type ?max_surge_fixed
    ?max_surge_percent ?max_unavailable_fixed
    ?max_unavailable_percent ?most_disruptive_allowed_action
    ?replacement_method ~minimal_action ~type_ () : update_policy =
  {
    instance_redistribution_type;
    max_surge_fixed;
    max_surge_percent;
    max_unavailable_fixed;
    max_unavailable_percent;
    minimal_action;
    most_disruptive_allowed_action;
    replacement_method;
    type_;
  }

let version__target_size ?fixed ?percent () : version__target_size =
  { fixed; percent }

let version ?name ~instance_template ~target_size () : version =
  { instance_template; name; target_size }

let google_compute_region_instance_group_manager ?description
    ?distribution_policy_target_shape ?distribution_policy_zones ?id
    ?list_managed_instances_results ?project ?region ?target_pools
    ?target_size ?wait_for_instances ?wait_for_instances_status
    ?timeouts ~base_instance_name ~name ~all_instances_config
    ~auto_healing_policies ~instance_lifecycle_policy ~named_port
    ~stateful_disk ~stateful_external_ip ~stateful_internal_ip
    ~update_policy ~version () :
    google_compute_region_instance_group_manager =
  {
    base_instance_name;
    description;
    distribution_policy_target_shape;
    distribution_policy_zones;
    id;
    list_managed_instances_results;
    name;
    project;
    region;
    target_pools;
    target_size;
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

type t = {
  base_instance_name : string prop;
  creation_timestamp : string prop;
  description : string prop;
  distribution_policy_target_shape : string prop;
  distribution_policy_zones : string list prop;
  fingerprint : string prop;
  id : string prop;
  instance_group : string prop;
  list_managed_instances_results : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
  status : status list prop;
  target_pools : string list prop;
  target_size : float prop;
  wait_for_instances : bool prop;
  wait_for_instances_status : string prop;
}

let register ?tf_module ?description
    ?distribution_policy_target_shape ?distribution_policy_zones ?id
    ?list_managed_instances_results ?project ?region ?target_pools
    ?target_size ?wait_for_instances ?wait_for_instances_status
    ?timeouts ~base_instance_name ~name ~all_instances_config
    ~auto_healing_policies ~instance_lifecycle_policy ~named_port
    ~stateful_disk ~stateful_external_ip ~stateful_internal_ip
    ~update_policy ~version __resource_id =
  let __resource_type =
    "google_compute_region_instance_group_manager"
  in
  let __resource =
    google_compute_region_instance_group_manager ?description
      ?distribution_policy_target_shape ?distribution_policy_zones
      ?id ?list_managed_instances_results ?project ?region
      ?target_pools ?target_size ?wait_for_instances
      ?wait_for_instances_status ?timeouts ~base_instance_name ~name
      ~all_instances_config ~auto_healing_policies
      ~instance_lifecycle_policy ~named_port ~stateful_disk
      ~stateful_external_ip ~stateful_internal_ip ~update_policy
      ~version ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_region_instance_group_manager
       __resource);
  let __resource_attributes =
    ({
       base_instance_name =
         Prop.computed __resource_type __resource_id
           "base_instance_name";
       creation_timestamp =
         Prop.computed __resource_type __resource_id
           "creation_timestamp";
       description =
         Prop.computed __resource_type __resource_id "description";
       distribution_policy_target_shape =
         Prop.computed __resource_type __resource_id
           "distribution_policy_target_shape";
       distribution_policy_zones =
         Prop.computed __resource_type __resource_id
           "distribution_policy_zones";
       fingerprint =
         Prop.computed __resource_type __resource_id "fingerprint";
       id = Prop.computed __resource_type __resource_id "id";
       instance_group =
         Prop.computed __resource_type __resource_id "instance_group";
       list_managed_instances_results =
         Prop.computed __resource_type __resource_id
           "list_managed_instances_results";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       region = Prop.computed __resource_type __resource_id "region";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
       status = Prop.computed __resource_type __resource_id "status";
       target_pools =
         Prop.computed __resource_type __resource_id "target_pools";
       target_size =
         Prop.computed __resource_type __resource_id "target_size";
       wait_for_instances =
         Prop.computed __resource_type __resource_id
           "wait_for_instances";
       wait_for_instances_status =
         Prop.computed __resource_type __resource_id
           "wait_for_instances_status";
     }
      : t)
  in
  __resource_attributes

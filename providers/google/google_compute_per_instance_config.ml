(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type preserved_state__disk = {
  delete_rule : string prop option; [@option]
      (** A value that prescribes what should happen to the stateful disk when the VM instance is deleted.
The available options are 'NEVER' and 'ON_PERMANENT_INSTANCE_DELETION'.
'NEVER' - detach the disk when the VM is deleted, but do not delete the disk.
'ON_PERMANENT_INSTANCE_DELETION' will delete the stateful disk when the VM is permanently
deleted from the instance group. Default value: NEVER Possible values: [NEVER, ON_PERMANENT_INSTANCE_DELETION] *)
  device_name : string prop;
      (** A unique device name that is reflected into the /dev/ tree of a Linux operating system running within the instance. *)
  mode : string prop option; [@option]
      (** The mode of the disk. Default value: READ_WRITE Possible values: [READ_ONLY, READ_WRITE] *)
  source : string prop;
      (** The URI of an existing persistent disk to attach under the specified device-name in the format
'projects/project-id/zones/zone/disks/disk-name'. *)
}
[@@deriving yojson_of]
(** Stateful disks for the instance. *)

type preserved_state__external_ip__ip_address = {
  address : string prop option; [@option]
      (** The URL of the reservation for this IP address. *)
}
[@@deriving yojson_of]
(** Ip address representation *)

type preserved_state__external_ip = {
  auto_delete : string prop option; [@option]
      (** These stateful IPs will never be released during autohealing, update or VM instance recreate operations. This flag is used to configure if the IP reservation should be deleted after it is no longer used by the group, e.g. when the given instance or the whole group is deleted. Default value: NEVER Possible values: [NEVER, ON_PERMANENT_INSTANCE_DELETION] *)
  interface_name : string prop;  (** interface_name *)
  ip_address : preserved_state__external_ip__ip_address list;
}
[@@deriving yojson_of]
(** Preserved external IPs defined for this instance. This map is keyed with the name of the network interface. *)

type preserved_state__internal_ip__ip_address = {
  address : string prop option; [@option]
      (** The URL of the reservation for this IP address. *)
}
[@@deriving yojson_of]
(** Ip address representation *)

type preserved_state__internal_ip = {
  auto_delete : string prop option; [@option]
      (** These stateful IPs will never be released during autohealing, update or VM instance recreate operations. This flag is used to configure if the IP reservation should be deleted after it is no longer used by the group, e.g. when the given instance or the whole group is deleted. Default value: NEVER Possible values: [NEVER, ON_PERMANENT_INSTANCE_DELETION] *)
  interface_name : string prop;  (** interface_name *)
  ip_address : preserved_state__internal_ip__ip_address list;
}
[@@deriving yojson_of]
(** Preserved internal IPs defined for this instance. This map is keyed with the name of the network interface. *)

type preserved_state = {
  metadata : (string * string prop) list option; [@option]
      (** Preserved metadata defined for this instance. This is a list of key->value pairs. *)
  disk : preserved_state__disk list;
  external_ip : preserved_state__external_ip list;
  internal_ip : preserved_state__internal_ip list;
}
[@@deriving yojson_of]
(** The preserved state for this instance. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_per_instance_config = {
  id : string prop option; [@option]  (** id *)
  instance_group_manager : string prop;
      (** The instance group manager this instance config is part of. *)
  minimal_action : string prop option; [@option]
      (** The minimal action to perform on the instance during an update.
Default is 'NONE'. Possible values are:
* REPLACE
* RESTART
* REFRESH
* NONE *)
  most_disruptive_allowed_action : string prop option; [@option]
      (** The most disruptive action to perform on the instance during an update.
Default is 'REPLACE'. Possible values are:
* REPLACE
* RESTART
* REFRESH
* NONE *)
  name : string prop;
      (** The name for this per-instance config and its corresponding instance. *)
  project : string prop option; [@option]  (** project *)
  remove_instance_on_destroy : bool prop option; [@option]
      (** When true, deleting this config will immediately remove the underlying instance.
When false, deleting this config will use the behavior as determined by remove_instance_on_destroy. *)
  remove_instance_state_on_destroy : bool prop option; [@option]
      (** When true, deleting this config will immediately remove any specified state from the underlying instance.
When false, deleting this config will *not* immediately remove any state from the underlying instance.
State will be removed on the next instance recreation or update. *)
  zone : string prop option; [@option]
      (** Zone where the containing instance group manager is located *)
  preserved_state : preserved_state list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_per_instance_config *)

let preserved_state__disk ?delete_rule ?mode ~device_name ~source ()
    : preserved_state__disk =
  { delete_rule; device_name; mode; source }

let preserved_state__external_ip__ip_address ?address () :
    preserved_state__external_ip__ip_address =
  { address }

let preserved_state__external_ip ?auto_delete ~interface_name
    ~ip_address () : preserved_state__external_ip =
  { auto_delete; interface_name; ip_address }

let preserved_state__internal_ip__ip_address ?address () :
    preserved_state__internal_ip__ip_address =
  { address }

let preserved_state__internal_ip ?auto_delete ~interface_name
    ~ip_address () : preserved_state__internal_ip =
  { auto_delete; interface_name; ip_address }

let preserved_state ?metadata ~disk ~external_ip ~internal_ip () :
    preserved_state =
  { metadata; disk; external_ip; internal_ip }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_per_instance_config ?id ?minimal_action
    ?most_disruptive_allowed_action ?project
    ?remove_instance_on_destroy ?remove_instance_state_on_destroy
    ?zone ?timeouts ~instance_group_manager ~name ~preserved_state ()
    : google_compute_per_instance_config =
  {
    id;
    instance_group_manager;
    minimal_action;
    most_disruptive_allowed_action;
    name;
    project;
    remove_instance_on_destroy;
    remove_instance_state_on_destroy;
    zone;
    preserved_state;
    timeouts;
  }

type t = {
  id : string prop;
  instance_group_manager : string prop;
  minimal_action : string prop;
  most_disruptive_allowed_action : string prop;
  name : string prop;
  project : string prop;
  remove_instance_on_destroy : bool prop;
  remove_instance_state_on_destroy : bool prop;
  zone : string prop;
}

let register ?tf_module ?id ?minimal_action
    ?most_disruptive_allowed_action ?project
    ?remove_instance_on_destroy ?remove_instance_state_on_destroy
    ?zone ?timeouts ~instance_group_manager ~name ~preserved_state
    __resource_id =
  let __resource_type = "google_compute_per_instance_config" in
  let __resource =
    google_compute_per_instance_config ?id ?minimal_action
      ?most_disruptive_allowed_action ?project
      ?remove_instance_on_destroy ?remove_instance_state_on_destroy
      ?zone ?timeouts ~instance_group_manager ~name ~preserved_state
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_per_instance_config __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       instance_group_manager =
         Prop.computed __resource_type __resource_id
           "instance_group_manager";
       minimal_action =
         Prop.computed __resource_type __resource_id "minimal_action";
       most_disruptive_allowed_action =
         Prop.computed __resource_type __resource_id
           "most_disruptive_allowed_action";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       remove_instance_on_destroy =
         Prop.computed __resource_type __resource_id
           "remove_instance_on_destroy";
       remove_instance_state_on_destroy =
         Prop.computed __resource_type __resource_id
           "remove_instance_state_on_destroy";
       zone = Prop.computed __resource_type __resource_id "zone";
     }
      : t)
  in
  __resource_attributes

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_compute_per_instance_config__preserved_state__disk = {
  delete_rule : string option; [@option]
      (** A value that prescribes what should happen to the stateful disk when the VM instance is deleted.
The available options are 'NEVER' and 'ON_PERMANENT_INSTANCE_DELETION'.
'NEVER' - detach the disk when the VM is deleted, but do not delete the disk.
'ON_PERMANENT_INSTANCE_DELETION' will delete the stateful disk when the VM is permanently
deleted from the instance group. Default value: NEVER Possible values: [NEVER, ON_PERMANENT_INSTANCE_DELETION] *)
  device_name : string;
      (** A unique device name that is reflected into the /dev/ tree of a Linux operating system running within the instance. *)
  mode : string option; [@option]
      (** The mode of the disk. Default value: READ_WRITE Possible values: [READ_ONLY, READ_WRITE] *)
  source : string;
      (** The URI of an existing persistent disk to attach under the specified device-name in the format
'projects/project-id/zones/zone/disks/disk-name'. *)
}
[@@deriving yojson_of]
(** Stateful disks for the instance. *)

type google_compute_per_instance_config__preserved_state__external_ip__ip_address = {
  address : string option; [@option]
      (** The URL of the reservation for this IP address. *)
}
[@@deriving yojson_of]
(** Ip address representation *)

type google_compute_per_instance_config__preserved_state__external_ip = {
  auto_delete : string option; [@option]
      (** These stateful IPs will never be released during autohealing, update or VM instance recreate operations. This flag is used to configure if the IP reservation should be deleted after it is no longer used by the group, e.g. when the given instance or the whole group is deleted. Default value: NEVER Possible values: [NEVER, ON_PERMANENT_INSTANCE_DELETION] *)
  interface_name : string;  (** interface_name *)
  ip_address :
    google_compute_per_instance_config__preserved_state__external_ip__ip_address
    list;
}
[@@deriving yojson_of]
(** Preserved external IPs defined for this instance. This map is keyed with the name of the network interface. *)

type google_compute_per_instance_config__preserved_state__internal_ip__ip_address = {
  address : string option; [@option]
      (** The URL of the reservation for this IP address. *)
}
[@@deriving yojson_of]
(** Ip address representation *)

type google_compute_per_instance_config__preserved_state__internal_ip = {
  auto_delete : string option; [@option]
      (** These stateful IPs will never be released during autohealing, update or VM instance recreate operations. This flag is used to configure if the IP reservation should be deleted after it is no longer used by the group, e.g. when the given instance or the whole group is deleted. Default value: NEVER Possible values: [NEVER, ON_PERMANENT_INSTANCE_DELETION] *)
  interface_name : string;  (** interface_name *)
  ip_address :
    google_compute_per_instance_config__preserved_state__internal_ip__ip_address
    list;
}
[@@deriving yojson_of]
(** Preserved internal IPs defined for this instance. This map is keyed with the name of the network interface. *)

type google_compute_per_instance_config__preserved_state = {
  metadata : (string * string) list option; [@option]
      (** Preserved metadata defined for this instance. This is a list of key->value pairs. *)
  disk :
    google_compute_per_instance_config__preserved_state__disk list;
  external_ip :
    google_compute_per_instance_config__preserved_state__external_ip
    list;
  internal_ip :
    google_compute_per_instance_config__preserved_state__internal_ip
    list;
}
[@@deriving yojson_of]
(** The preserved state for this instance. *)

type google_compute_per_instance_config__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_per_instance_config__timeouts *)

type google_compute_per_instance_config = {
  instance_group_manager : string;
      (** The instance group manager this instance config is part of. *)
  minimal_action : string option; [@option]
      (** The minimal action to perform on the instance during an update.
Default is 'NONE'. Possible values are:
* REPLACE
* RESTART
* REFRESH
* NONE *)
  most_disruptive_allowed_action : string option; [@option]
      (** The most disruptive action to perform on the instance during an update.
Default is 'REPLACE'. Possible values are:
* REPLACE
* RESTART
* REFRESH
* NONE *)
  name : string;
      (** The name for this per-instance config and its corresponding instance. *)
  remove_instance_on_destroy : bool option; [@option]
      (** When true, deleting this config will immediately remove the underlying instance.
When false, deleting this config will use the behavior as determined by remove_instance_on_destroy. *)
  remove_instance_state_on_destroy : bool option; [@option]
      (** When true, deleting this config will immediately remove any specified state from the underlying instance.
When false, deleting this config will *not* immediately remove any state from the underlying instance.
State will be removed on the next instance recreation or update. *)
  preserved_state :
    google_compute_per_instance_config__preserved_state list;
  timeouts : google_compute_per_instance_config__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_per_instance_config *)

let google_compute_per_instance_config ?minimal_action
    ?most_disruptive_allowed_action ?remove_instance_on_destroy
    ?remove_instance_state_on_destroy ?timeouts
    ~instance_group_manager ~name ~preserved_state __resource_id =
  let __resource_type = "google_compute_per_instance_config" in
  let __resource =
    {
      instance_group_manager;
      minimal_action;
      most_disruptive_allowed_action;
      name;
      remove_instance_on_destroy;
      remove_instance_state_on_destroy;
      preserved_state;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_per_instance_config __resource);
  ()

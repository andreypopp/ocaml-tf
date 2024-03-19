(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type share_settings__project_map = {
  id : string prop;  (** id *)
  project_id : string prop option; [@option]
      (** The project id/number, should be same as the key of this project config in the project map. *)
}
[@@deriving yojson_of]
(** A map of project number and project config. This is only valid when shareType's value is SPECIFIC_PROJECTS. *)

type share_settings = {
  share_type : string prop option; [@option]
      (** Type of sharing for this shared-reservation Possible values: [LOCAL, SPECIFIC_PROJECTS] *)
  project_map : share_settings__project_map list;
}
[@@deriving yojson_of]
(** The share setting for reservations. *)

type specific_reservation__instance_properties__guest_accelerators = {
  accelerator_count : float prop;
      (** The number of the guest accelerator cards exposed to
this instance. *)
  accelerator_type : string prop;
      (** The full or partial URL of the accelerator type to
attach to this instance. For example:
'projects/my-project/zones/us-central1-c/acceleratorTypes/nvidia-tesla-p100'

If you are creating an instance template, specify only the accelerator name. *)
}
[@@deriving yojson_of]
(** Guest accelerator type and count. *)

type specific_reservation__instance_properties__local_ssds = {
  disk_size_gb : float prop;
      (** The size of the disk in base-2 GB. *)
  interface : string prop option; [@option]
      (** The disk interface to use for attaching this disk. Default value: SCSI Possible values: [SCSI, NVME] *)
}
[@@deriving yojson_of]
(** The amount of local ssd to reserve with each instance. This
reserves disks of type 'local-ssd'. *)

type specific_reservation__instance_properties = {
  machine_type : string prop;
      (** The name of the machine type to reserve. *)
  min_cpu_platform : string prop option; [@option]
      (** The minimum CPU platform for the reservation. For example,
'Intel Skylake'. See
the CPU platform availability reference](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform#availablezones)
for information on available CPU platforms. *)
  guest_accelerators :
    specific_reservation__instance_properties__guest_accelerators
    list;
  local_ssds :
    specific_reservation__instance_properties__local_ssds list;
}
[@@deriving yojson_of]
(** The instance properties for the reservation. *)

type specific_reservation = {
  count : float prop;
      (** The number of resources that are allocated. *)
  instance_properties :
    specific_reservation__instance_properties list;
}
[@@deriving yojson_of]
(** Reservation for instances with specific machine shapes. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_reservation = {
  description : string prop option; [@option]
      (** An optional description of this resource. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  project : string prop option; [@option]  (** project *)
  specific_reservation_required : bool prop option; [@option]
      (** When set to true, only VMs that target this reservation by name can
consume this reservation. Otherwise, it can be consumed by VMs with
affinity for any reservation. Defaults to false. *)
  zone : string prop;  (** The zone where the reservation is made. *)
  share_settings : share_settings list;
  specific_reservation : specific_reservation list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_reservation *)

let share_settings__project_map ?project_id ~id () :
    share_settings__project_map =
  { id; project_id }

let share_settings ?share_type ~project_map () : share_settings =
  { share_type; project_map }

let specific_reservation__instance_properties__guest_accelerators
    ~accelerator_count ~accelerator_type () :
    specific_reservation__instance_properties__guest_accelerators =
  { accelerator_count; accelerator_type }

let specific_reservation__instance_properties__local_ssds ?interface
    ~disk_size_gb () :
    specific_reservation__instance_properties__local_ssds =
  { disk_size_gb; interface }

let specific_reservation__instance_properties ?min_cpu_platform
    ~machine_type ~guest_accelerators ~local_ssds () :
    specific_reservation__instance_properties =
  { machine_type; min_cpu_platform; guest_accelerators; local_ssds }

let specific_reservation ~count ~instance_properties () :
    specific_reservation =
  { count; instance_properties }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_reservation ?description ?id ?project
    ?specific_reservation_required ?timeouts ~name ~zone
    ~share_settings ~specific_reservation () :
    google_compute_reservation =
  {
    description;
    id;
    name;
    project;
    specific_reservation_required;
    zone;
    share_settings;
    specific_reservation;
    timeouts;
  }

type t = {
  commitment : string prop;
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  specific_reservation_required : bool prop;
  status : string prop;
  zone : string prop;
}

let register ?tf_module ?description ?id ?project
    ?specific_reservation_required ?timeouts ~name ~zone
    ~share_settings ~specific_reservation __resource_id =
  let __resource_type = "google_compute_reservation" in
  let __resource =
    google_compute_reservation ?description ?id ?project
      ?specific_reservation_required ?timeouts ~name ~zone
      ~share_settings ~specific_reservation ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_reservation __resource);
  let __resource_attributes =
    ({
       commitment =
         Prop.computed __resource_type __resource_id "commitment";
       creation_timestamp =
         Prop.computed __resource_type __resource_id
           "creation_timestamp";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
       specific_reservation_required =
         Prop.computed __resource_type __resource_id
           "specific_reservation_required";
       status = Prop.computed __resource_type __resource_id "status";
       zone = Prop.computed __resource_type __resource_id "zone";
     }
      : t)
  in
  __resource_attributes

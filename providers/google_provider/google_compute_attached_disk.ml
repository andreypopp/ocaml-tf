(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_attached_disk__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_attached_disk__timeouts *)

type google_compute_attached_disk = {
  device_name : string option; [@option]
      (** Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. This name can be used to reference the device for mounting, resizing, and so on, from within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disks-x, where x is a number assigned by Google Compute Engine. *)
  disk : string;
      (** name or self_link of the disk that will be attached. *)
  id : string option; [@option]  (** id *)
  instance : string;
      (** name or self_link of the compute instance that the disk will be attached to. If the self_link is provided then zone and project are extracted from the self link. If only the name is used then zone and project must be defined as properties on the resource or provider. *)
  mode : string option; [@option]
      (** The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If not specified, the default is to attach the disk in READ_WRITE mode. *)
  project : string option; [@option]
      (** The project that the referenced compute instance is a part of. If instance is referenced by its self_link the project defined in the link will take precedence. *)
  zone : string option; [@option]
      (** The zone that the referenced compute instance is located within. If instance is referenced by its self_link the zone defined in the link will take precedence. *)
  timeouts : google_compute_attached_disk__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_attached_disk *)

let google_compute_attached_disk ?device_name ?id ?mode ?project
    ?zone ?timeouts ~disk ~instance __resource_id =
  let __resource_type = "google_compute_attached_disk" in
  let __resource =
    {
      device_name;
      disk;
      id;
      instance;
      mode;
      project;
      zone;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_attached_disk __resource);
  ()

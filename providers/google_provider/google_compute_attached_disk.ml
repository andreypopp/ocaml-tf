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
  disk : string;
      (** name or self_link of the disk that will be attached. *)
  instance : string;
      (** name or self_link of the compute instance that the disk will be attached to. If the self_link is provided then zone and project are extracted from the self link. If only the name is used then zone and project must be defined as properties on the resource or provider. *)
  mode : string option; [@option]
      (** The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If not specified, the default is to attach the disk in READ_WRITE mode. *)
  timeouts : google_compute_attached_disk__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_attached_disk *)

let google_compute_attached_disk ?mode ?timeouts ~disk ~instance
    __resource_id =
  let __resource_type = "google_compute_attached_disk" in
  let __resource = { disk; instance; mode; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_attached_disk __resource);
  ()

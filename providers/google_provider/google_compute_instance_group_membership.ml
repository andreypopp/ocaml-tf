(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_compute_instance_group_membership__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_instance_group_membership__timeouts *)

type google_compute_instance_group_membership = {
  instance : string;
      (** An instance being added to the InstanceGroup *)
  instance_group : string;
      (** Represents an Instance Group resource name that the instance belongs to. *)
  zone : string option; [@option]
      (** A reference to the zone where the instance group resides. *)
  timeouts :
    google_compute_instance_group_membership__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_instance_group_membership *)

let google_compute_instance_group_membership ?zone ?timeouts
    ~instance ~instance_group __resource_id =
  let __resource_type = "google_compute_instance_group_membership" in
  let __resource = { instance; instance_group; zone; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_instance_group_membership __resource);
  ()

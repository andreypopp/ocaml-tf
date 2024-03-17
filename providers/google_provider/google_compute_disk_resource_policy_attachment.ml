(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_compute_disk_resource_policy_attachment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_disk_resource_policy_attachment__timeouts *)

type google_compute_disk_resource_policy_attachment = {
  disk : string;
      (** The name of the disk in which the resource policies are attached to. *)
  name : string;
      (** The resource policy to be attached to the disk for scheduling snapshot
creation. Do not specify the self link. *)
  timeouts :
    google_compute_disk_resource_policy_attachment__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_disk_resource_policy_attachment *)

let google_compute_disk_resource_policy_attachment ?timeouts ~disk
    ~name __resource_id =
  let __resource_type =
    "google_compute_disk_resource_policy_attachment"
  in
  let __resource = { disk; name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_disk_resource_policy_attachment
       __resource);
  ()

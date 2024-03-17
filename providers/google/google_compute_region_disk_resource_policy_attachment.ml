(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_region_disk_resource_policy_attachment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_region_disk_resource_policy_attachment__timeouts *)

type google_compute_region_disk_resource_policy_attachment = {
  disk : string prop;
      (** The name of the regional disk in which the resource policies are attached to. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** The resource policy to be attached to the disk for scheduling snapshot
creation. Do not specify the self link. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** A reference to the region where the disk resides. *)
  timeouts :
    google_compute_region_disk_resource_policy_attachment__timeouts
    option;
}
[@@deriving yojson_of]
(** google_compute_region_disk_resource_policy_attachment *)

type t = {
  disk : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
}

let google_compute_region_disk_resource_policy_attachment ?id
    ?project ?region ?timeouts ~disk ~name __resource_id =
  let __resource_type =
    "google_compute_region_disk_resource_policy_attachment"
  in
  let __resource =
    ({ disk; id; name; project; region; timeouts }
      : google_compute_region_disk_resource_policy_attachment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_region_disk_resource_policy_attachment
       __resource);
  let __resource_attributes =
    ({
       disk = Prop.computed __resource_type __resource_id "disk";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       region = Prop.computed __resource_type __resource_id "region";
     }
      : t)
  in
  __resource_attributes

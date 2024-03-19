(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_disk_resource_policy_attachment = {
  disk : string prop;
      (** The name of the disk in which the resource policies are attached to. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** The resource policy to be attached to the disk for scheduling snapshot
creation. Do not specify the self link. *)
  project : string prop option; [@option]  (** project *)
  zone : string prop option; [@option]
      (** A reference to the zone where the disk resides. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_disk_resource_policy_attachment *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_disk_resource_policy_attachment ?id ?project ?zone
    ?timeouts ~disk ~name () :
    google_compute_disk_resource_policy_attachment =
  { disk; id; name; project; zone; timeouts }

type t = {
  disk : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  zone : string prop;
}

let register ?tf_module ?id ?project ?zone ?timeouts ~disk ~name
    __resource_id =
  let __resource_type =
    "google_compute_disk_resource_policy_attachment"
  in
  let __resource =
    google_compute_disk_resource_policy_attachment ?id ?project ?zone
      ?timeouts ~disk ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_disk_resource_policy_attachment
       __resource);
  let __resource_attributes =
    ({
       disk = Prop.computed __resource_type __resource_id "disk";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       zone = Prop.computed __resource_type __resource_id "zone";
     }
      : t)
  in
  __resource_attributes

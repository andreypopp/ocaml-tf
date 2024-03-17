(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_instance_group_membership__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_instance_group_membership__timeouts *)

type google_compute_instance_group_membership = {
  id : string prop option; [@option]  (** id *)
  instance : string prop;
      (** An instance being added to the InstanceGroup *)
  instance_group : string prop;
      (** Represents an Instance Group resource name that the instance belongs to. *)
  project : string prop option; [@option]  (** project *)
  zone : string prop option; [@option]
      (** A reference to the zone where the instance group resides. *)
  timeouts :
    google_compute_instance_group_membership__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_instance_group_membership *)

type t = {
  id : string prop;
  instance : string prop;
  instance_group : string prop;
  project : string prop;
  zone : string prop;
}

let google_compute_instance_group_membership ?id ?project ?zone
    ?timeouts ~instance ~instance_group __resource_id =
  let __resource_type = "google_compute_instance_group_membership" in
  let __resource =
    ({ id; instance; instance_group; project; zone; timeouts }
      : google_compute_instance_group_membership)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_instance_group_membership __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       instance =
         Prop.computed __resource_type __resource_id "instance";
       instance_group =
         Prop.computed __resource_type __resource_id "instance_group";
       project =
         Prop.computed __resource_type __resource_id "project";
       zone = Prop.computed __resource_type __resource_id "zone";
     }
      : t)
  in
  __resource_attributes

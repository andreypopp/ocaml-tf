(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type state = { code : string prop  (** code *) }
[@@deriving yojson_of]

type google_gke_hub_membership_binding = {
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Labels for this Membership binding.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;  (** Location of the membership *)
  membership_binding_id : string prop;
      (** The client-provided identifier of the membership binding. *)
  membership_id : string prop;  (** Id of the membership *)
  project : string prop option; [@option]  (** project *)
  scope : string prop;
      (** A Workspace resource name in the format
'projects/*/locations/*/scopes/*'. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_gke_hub_membership_binding *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_gke_hub_membership_binding ?id ?labels ?project ?timeouts
    ~location ~membership_binding_id ~membership_id ~scope () :
    google_gke_hub_membership_binding =
  {
    id;
    labels;
    location;
    membership_binding_id;
    membership_id;
    project;
    scope;
    timeouts;
  }

type t = {
  create_time : string prop;
  delete_time : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  membership_binding_id : string prop;
  membership_id : string prop;
  name : string prop;
  project : string prop;
  scope : string prop;
  state : state list prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

let register ?tf_module ?id ?labels ?project ?timeouts ~location
    ~membership_binding_id ~membership_id ~scope __resource_id =
  let __resource_type = "google_gke_hub_membership_binding" in
  let __resource =
    google_gke_hub_membership_binding ?id ?labels ?project ?timeouts
      ~location ~membership_binding_id ~membership_id ~scope ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_gke_hub_membership_binding __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       delete_time =
         Prop.computed __resource_type __resource_id "delete_time";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       location =
         Prop.computed __resource_type __resource_id "location";
       membership_binding_id =
         Prop.computed __resource_type __resource_id
           "membership_binding_id";
       membership_id =
         Prop.computed __resource_type __resource_id "membership_id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       scope = Prop.computed __resource_type __resource_id "scope";
       state = Prop.computed __resource_type __resource_id "state";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       uid = Prop.computed __resource_type __resource_id "uid";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_gke_hub_namespace__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_gke_hub_namespace__timeouts *)

type google_gke_hub_namespace__state = {
  code : string prop;  (** code *)
}
[@@deriving yojson_of]

type google_gke_hub_namespace = {
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Labels for this Namespace.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  namespace_labels : (string * string prop) list option; [@option]
      (** Namespace-level cluster namespace labels. These labels are applied
to the related namespace of the member clusters bound to the parent
Scope. Scope-level labels ('namespace_labels' in the Fleet Scope
resource) take precedence over Namespace-level labels if they share
a key. Keys and values must be Kubernetes-conformant. *)
  project : string prop option; [@option]  (** project *)
  scope : string prop;  (** The name of the Scope instance. *)
  scope_id : string prop;  (** Id of the scope *)
  scope_namespace_id : string prop;
      (** The client-provided identifier of the namespace. *)
  timeouts : google_gke_hub_namespace__timeouts option;
}
[@@deriving yojson_of]
(** google_gke_hub_namespace *)

type t = {
  create_time : string prop;
  delete_time : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  namespace_labels : (string * string) list prop;
  project : string prop;
  scope : string prop;
  scope_id : string prop;
  scope_namespace_id : string prop;
  state : google_gke_hub_namespace__state list prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

let google_gke_hub_namespace ?id ?labels ?namespace_labels ?project
    ?timeouts ~scope ~scope_id ~scope_namespace_id __resource_id =
  let __resource_type = "google_gke_hub_namespace" in
  let __resource =
    ({
       id;
       labels;
       namespace_labels;
       project;
       scope;
       scope_id;
       scope_namespace_id;
       timeouts;
     }
      : google_gke_hub_namespace)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_gke_hub_namespace __resource);
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
       name = Prop.computed __resource_type __resource_id "name";
       namespace_labels =
         Prop.computed __resource_type __resource_id
           "namespace_labels";
       project =
         Prop.computed __resource_type __resource_id "project";
       scope = Prop.computed __resource_type __resource_id "scope";
       scope_id =
         Prop.computed __resource_type __resource_id "scope_id";
       scope_namespace_id =
         Prop.computed __resource_type __resource_id
           "scope_namespace_id";
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

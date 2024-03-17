(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_gke_hub_scope__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_gke_hub_scope__timeouts *)

type google_gke_hub_scope__state = {
  code : string prop;  (** code *)
}
[@@deriving yojson_of]

type google_gke_hub_scope = {
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Labels for this Scope.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  namespace_labels : (string * string prop) list option; [@option]
      (** Scope-level cluster namespace labels. For the member clusters bound
to the Scope, these labels are applied to each namespace under the
Scope. Scope-level labels take precedence over Namespace-level
labels ('namespace_labels' in the Fleet Namespace resource) if they
share a key. Keys and values must be Kubernetes-conformant. *)
  project : string prop option; [@option]  (** project *)
  scope_id : string prop;
      (** The client-provided identifier of the scope. *)
  timeouts : google_gke_hub_scope__timeouts option;
}
[@@deriving yojson_of]
(** google_gke_hub_scope *)

type t = {
  create_time : string prop;
  delete_time : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  namespace_labels : (string * string) list prop;
  project : string prop;
  scope_id : string prop;
  state : google_gke_hub_scope__state list prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

let google_gke_hub_scope ?id ?labels ?namespace_labels ?project
    ?timeouts ~scope_id __resource_id =
  let __resource_type = "google_gke_hub_scope" in
  let __resource =
    ({ id; labels; namespace_labels; project; scope_id; timeouts }
      : google_gke_hub_scope)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_gke_hub_scope __resource);
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
       scope_id =
         Prop.computed __resource_type __resource_id "scope_id";
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

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type role = {
  predefined_role : string prop option; [@option]
      (** PredefinedRole is an ENUM representation of the default Kubernetes Roles Possible values: [UNKNOWN, ADMIN, EDIT, VIEW] *)
}
[@@deriving yojson_of]
(** Role to bind to the principal. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type state = { code : string prop  (** code *) }
[@@deriving yojson_of]

type google_gke_hub_scope_rbac_role_binding = {
  group : string prop option; [@option]
      (** Principal that is be authorized in the cluster (at least of one the oneof
is required). Updating one will unset the other automatically.
group is the group, as seen by the kubernetes cluster. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Labels for this ScopeRBACRoleBinding.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  project : string prop option; [@option]  (** project *)
  scope_id : string prop;  (** Id of the scope *)
  scope_rbac_role_binding_id : string prop;
      (** The client-provided identifier of the RBAC Role Binding. *)
  user : string prop option; [@option]
      (** Principal that is be authorized in the cluster (at least of one the oneof
is required). Updating one will unset the other automatically.
user is the name of the user as seen by the kubernetes cluster, example
alice or alice@domain.tld *)
  role : role list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_gke_hub_scope_rbac_role_binding *)

let role ?predefined_role () : role = { predefined_role }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_gke_hub_scope_rbac_role_binding ?group ?id ?labels
    ?project ?user ?timeouts ~scope_id ~scope_rbac_role_binding_id
    ~role () : google_gke_hub_scope_rbac_role_binding =
  {
    group;
    id;
    labels;
    project;
    scope_id;
    scope_rbac_role_binding_id;
    user;
    role;
    timeouts;
  }

type t = {
  create_time : string prop;
  delete_time : string prop;
  effective_labels : (string * string) list prop;
  group : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  scope_id : string prop;
  scope_rbac_role_binding_id : string prop;
  state : state list prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
  user : string prop;
}

let register ?tf_module ?group ?id ?labels ?project ?user ?timeouts
    ~scope_id ~scope_rbac_role_binding_id ~role __resource_id =
  let __resource_type = "google_gke_hub_scope_rbac_role_binding" in
  let __resource =
    google_gke_hub_scope_rbac_role_binding ?group ?id ?labels
      ?project ?user ?timeouts ~scope_id ~scope_rbac_role_binding_id
      ~role ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_gke_hub_scope_rbac_role_binding __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       delete_time =
         Prop.computed __resource_type __resource_id "delete_time";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       group = Prop.computed __resource_type __resource_id "group";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       scope_id =
         Prop.computed __resource_type __resource_id "scope_id";
       scope_rbac_role_binding_id =
         Prop.computed __resource_type __resource_id
           "scope_rbac_role_binding_id";
       state = Prop.computed __resource_type __resource_id "state";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       uid = Prop.computed __resource_type __resource_id "uid";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
       user = Prop.computed __resource_type __resource_id "user";
     }
      : t)
  in
  __resource_attributes

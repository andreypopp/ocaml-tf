(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_gke_hub_scope_rbac_role_binding__role = {
  predefined_role : string prop option; [@option]
      (** PredefinedRole is an ENUM representation of the default Kubernetes Roles Possible values: [UNKNOWN, ADMIN, EDIT, VIEW] *)
}
[@@deriving yojson_of]
(** Role to bind to the principal. *)

type google_gke_hub_scope_rbac_role_binding__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_gke_hub_scope_rbac_role_binding__timeouts *)

type google_gke_hub_scope_rbac_role_binding__state = {
  code : string prop;  (** code *)
}
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
  role : google_gke_hub_scope_rbac_role_binding__role list;
  timeouts : google_gke_hub_scope_rbac_role_binding__timeouts option;
}
[@@deriving yojson_of]
(** google_gke_hub_scope_rbac_role_binding *)

let google_gke_hub_scope_rbac_role_binding ?group ?id ?labels
    ?project ?user ?timeouts ~scope_id ~scope_rbac_role_binding_id
    ~role __resource_id =
  let __resource_type = "google_gke_hub_scope_rbac_role_binding" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_gke_hub_scope_rbac_role_binding __resource);
  ()

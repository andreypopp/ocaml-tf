(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_gke_hub_scope_rbac_role_binding__role = {
  predefined_role : string option; [@option]
      (** PredefinedRole is an ENUM representation of the default Kubernetes Roles Possible values: [UNKNOWN, ADMIN, EDIT, VIEW] *)
}
[@@deriving yojson_of]
(** Role to bind to the principal. *)

type google_gke_hub_scope_rbac_role_binding__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_gke_hub_scope_rbac_role_binding__timeouts *)

type google_gke_hub_scope_rbac_role_binding__state = {
  code : string;  (** code *)
}
[@@deriving yojson_of]

type google_gke_hub_scope_rbac_role_binding = {
  group : string option; [@option]
      (** Principal that is be authorized in the cluster (at least of one the oneof
is required). Updating one will unset the other automatically.
group is the group, as seen by the kubernetes cluster. *)
  labels : (string * string) list option; [@option]
      (** Labels for this ScopeRBACRoleBinding.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  scope_id : string;  (** Id of the scope *)
  scope_rbac_role_binding_id : string;
      (** The client-provided identifier of the RBAC Role Binding. *)
  user : string option; [@option]
      (** Principal that is be authorized in the cluster (at least of one the oneof
is required). Updating one will unset the other automatically.
user is the name of the user as seen by the kubernetes cluster, example
alice or alice@domain.tld *)
  role : google_gke_hub_scope_rbac_role_binding__role list;
  timeouts : google_gke_hub_scope_rbac_role_binding__timeouts option;
}
[@@deriving yojson_of]
(** google_gke_hub_scope_rbac_role_binding *)

let google_gke_hub_scope_rbac_role_binding ?group ?labels ?user
    ?timeouts ~scope_id ~scope_rbac_role_binding_id ~role
    __resource_id =
  let __resource_type = "google_gke_hub_scope_rbac_role_binding" in
  let __resource =
    {
      group;
      labels;
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
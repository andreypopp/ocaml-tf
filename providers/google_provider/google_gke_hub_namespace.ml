(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_gke_hub_namespace__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_gke_hub_namespace__timeouts *)

type google_gke_hub_namespace__state = { code : string  (** code *) }
[@@deriving yojson_of]

type google_gke_hub_namespace = {
  labels : (string * string) list option; [@option]
      (** Labels for this Namespace.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  namespace_labels : (string * string) list option; [@option]
      (** Namespace-level cluster namespace labels. These labels are applied
to the related namespace of the member clusters bound to the parent
Scope. Scope-level labels ('namespace_labels' in the Fleet Scope
resource) take precedence over Namespace-level labels if they share
a key. Keys and values must be Kubernetes-conformant. *)
  scope : string;  (** The name of the Scope instance. *)
  scope_id : string;  (** Id of the scope *)
  scope_namespace_id : string;
      (** The client-provided identifier of the namespace. *)
  timeouts : google_gke_hub_namespace__timeouts option;
}
[@@deriving yojson_of]
(** google_gke_hub_namespace *)

let google_gke_hub_namespace ?labels ?namespace_labels ?timeouts
    ~scope ~scope_id ~scope_namespace_id __resource_id =
  let __resource_type = "google_gke_hub_namespace" in
  let __resource =
    {
      labels;
      namespace_labels;
      scope;
      scope_id;
      scope_namespace_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_gke_hub_namespace __resource);
  ()

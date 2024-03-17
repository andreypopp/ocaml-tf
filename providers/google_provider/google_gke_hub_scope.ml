(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_gke_hub_scope__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_gke_hub_scope__timeouts *)

type google_gke_hub_scope__state = { code : string  (** code *) }
[@@deriving yojson_of]

type google_gke_hub_scope = {
  labels : (string * string) list option; [@option]
      (** Labels for this Scope.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  namespace_labels : (string * string) list option; [@option]
      (** Scope-level cluster namespace labels. For the member clusters bound
to the Scope, these labels are applied to each namespace under the
Scope. Scope-level labels take precedence over Namespace-level
labels ('namespace_labels' in the Fleet Namespace resource) if they
share a key. Keys and values must be Kubernetes-conformant. *)
  scope_id : string;
      (** The client-provided identifier of the scope. *)
  timeouts : google_gke_hub_scope__timeouts option;
}
[@@deriving yojson_of]
(** google_gke_hub_scope *)

let google_gke_hub_scope ?labels ?namespace_labels ?timeouts
    ~scope_id __resource_id =
  let __resource_type = "google_gke_hub_scope" in
  let __resource =
    { labels; namespace_labels; scope_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_gke_hub_scope __resource);
  ()

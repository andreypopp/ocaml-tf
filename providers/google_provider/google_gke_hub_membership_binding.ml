(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_gke_hub_membership_binding__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_gke_hub_membership_binding__timeouts *)

type google_gke_hub_membership_binding__state = {
  code : string;  (** code *)
}
[@@deriving yojson_of]

type google_gke_hub_membership_binding = {
  id : string option; [@option]  (** id *)
  labels : (string * string) list option; [@option]
      (** Labels for this Membership binding.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;  (** Location of the membership *)
  membership_binding_id : string;
      (** The client-provided identifier of the membership binding. *)
  membership_id : string;  (** Id of the membership *)
  project : string option; [@option]  (** project *)
  scope : string;
      (** A Workspace resource name in the format
'projects/*/locations/*/scopes/*'. *)
  timeouts : google_gke_hub_membership_binding__timeouts option;
}
[@@deriving yojson_of]
(** google_gke_hub_membership_binding *)

let google_gke_hub_membership_binding ?id ?labels ?project ?timeouts
    ~location ~membership_binding_id ~membership_id ~scope
    __resource_id =
  let __resource_type = "google_gke_hub_membership_binding" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_gke_hub_membership_binding __resource);
  ()

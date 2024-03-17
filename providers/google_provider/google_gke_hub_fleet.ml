(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_gke_hub_fleet__default_cluster_config__binary_authorization_config__policy_bindings = {
  name : string option; [@option]
      (** The relative resource name of the binauthz platform policy to audit. GKE
platform policies have the following format:
'projects/{project_number}/platforms/gke/policies/{policy_id}'. *)
}
[@@deriving yojson_of]
(** Binauthz policies that apply to this cluster. *)

type google_gke_hub_fleet__default_cluster_config__binary_authorization_config = {
  evaluation_mode : string option; [@option]
      (** Mode of operation for binauthz policy evaluation. Possible values: [DISABLED, POLICY_BINDINGS] *)
  policy_bindings :
    google_gke_hub_fleet__default_cluster_config__binary_authorization_config__policy_bindings
    list;
}
[@@deriving yojson_of]
(** Enable/Disable binary authorization features for the cluster. *)

type google_gke_hub_fleet__default_cluster_config__security_posture_config = {
  mode : string option; [@option]
      (** Sets which mode to use for Security Posture features. Possible values: [DISABLED, BASIC] *)
  vulnerability_mode : string option; [@option]
      (** Sets which mode to use for vulnerability scanning. Possible values: [VULNERABILITY_DISABLED, VULNERABILITY_BASIC, VULNERABILITY_ENTERPRISE] *)
}
[@@deriving yojson_of]
(** Enable/Disable Security Posture features for the cluster. *)

type google_gke_hub_fleet__default_cluster_config = {
  binary_authorization_config :
    google_gke_hub_fleet__default_cluster_config__binary_authorization_config
    list;
  security_posture_config :
    google_gke_hub_fleet__default_cluster_config__security_posture_config
    list;
}
[@@deriving yojson_of]
(** The default cluster configurations to apply across the fleet. *)

type google_gke_hub_fleet__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_gke_hub_fleet__timeouts *)

type google_gke_hub_fleet__state = { code : string  (** code *) }
[@@deriving yojson_of]

type google_gke_hub_fleet = {
  display_name : string option; [@option]
      (** A user-assigned display name of the Fleet. When present, it must be between 4 to 30 characters.
Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. *)
  default_cluster_config :
    google_gke_hub_fleet__default_cluster_config list;
  timeouts : google_gke_hub_fleet__timeouts option;
}
[@@deriving yojson_of]
(** google_gke_hub_fleet *)

let google_gke_hub_fleet ?display_name ?timeouts
    ~default_cluster_config __resource_id =
  let __resource_type = "google_gke_hub_fleet" in
  let __resource =
    { display_name; default_cluster_config; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_gke_hub_fleet __resource);
  ()

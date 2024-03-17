(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_gke_hub_fleet__default_cluster_config__binary_authorization_config__policy_bindings = {
  name : string prop option; [@option]
      (** The relative resource name of the binauthz platform policy to audit. GKE
platform policies have the following format:
'projects/{project_number}/platforms/gke/policies/{policy_id}'. *)
}
[@@deriving yojson_of]
(** Binauthz policies that apply to this cluster. *)

type google_gke_hub_fleet__default_cluster_config__binary_authorization_config = {
  evaluation_mode : string prop option; [@option]
      (** Mode of operation for binauthz policy evaluation. Possible values: [DISABLED, POLICY_BINDINGS] *)
  policy_bindings :
    google_gke_hub_fleet__default_cluster_config__binary_authorization_config__policy_bindings
    list;
}
[@@deriving yojson_of]
(** Enable/Disable binary authorization features for the cluster. *)

type google_gke_hub_fleet__default_cluster_config__security_posture_config = {
  mode : string prop option; [@option]
      (** Sets which mode to use for Security Posture features. Possible values: [DISABLED, BASIC] *)
  vulnerability_mode : string prop option; [@option]
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
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_gke_hub_fleet__timeouts *)

type google_gke_hub_fleet__state = {
  code : string prop;  (** code *)
}
[@@deriving yojson_of]

type google_gke_hub_fleet = {
  display_name : string prop option; [@option]
      (** A user-assigned display name of the Fleet. When present, it must be between 4 to 30 characters.
Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  default_cluster_config :
    google_gke_hub_fleet__default_cluster_config list;
  timeouts : google_gke_hub_fleet__timeouts option;
}
[@@deriving yojson_of]
(** google_gke_hub_fleet *)

type t = {
  create_time : string prop;
  delete_time : string prop;
  display_name : string prop;
  id : string prop;
  project : string prop;
  state : google_gke_hub_fleet__state list prop;
  uid : string prop;
  update_time : string prop;
}

let google_gke_hub_fleet ?display_name ?id ?project ?timeouts
    ~default_cluster_config __resource_id =
  let __resource_type = "google_gke_hub_fleet" in
  let __resource =
    ({ display_name; id; project; default_cluster_config; timeouts }
      : google_gke_hub_fleet)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_gke_hub_fleet __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       delete_time =
         Prop.computed __resource_type __resource_id "delete_time";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       project =
         Prop.computed __resource_type __resource_id "project";
       state = Prop.computed __resource_type __resource_id "state";
       uid = Prop.computed __resource_type __resource_id "uid";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes

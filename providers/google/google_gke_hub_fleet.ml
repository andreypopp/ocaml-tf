(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type default_cluster_config__binary_authorization_config__policy_bindings = {
  name : string prop option; [@option]
      (** The relative resource name of the binauthz platform policy to audit. GKE
platform policies have the following format:
'projects/{project_number}/platforms/gke/policies/{policy_id}'. *)
}
[@@deriving yojson_of]
(** Binauthz policies that apply to this cluster. *)

type default_cluster_config__binary_authorization_config = {
  evaluation_mode : string prop option; [@option]
      (** Mode of operation for binauthz policy evaluation. Possible values: [DISABLED, POLICY_BINDINGS] *)
  policy_bindings :
    default_cluster_config__binary_authorization_config__policy_bindings
    list;
}
[@@deriving yojson_of]
(** Enable/Disable binary authorization features for the cluster. *)

type default_cluster_config__security_posture_config = {
  mode : string prop option; [@option]
      (** Sets which mode to use for Security Posture features. Possible values: [DISABLED, BASIC] *)
  vulnerability_mode : string prop option; [@option]
      (** Sets which mode to use for vulnerability scanning. Possible values: [VULNERABILITY_DISABLED, VULNERABILITY_BASIC, VULNERABILITY_ENTERPRISE] *)
}
[@@deriving yojson_of]
(** Enable/Disable Security Posture features for the cluster. *)

type default_cluster_config = {
  binary_authorization_config :
    default_cluster_config__binary_authorization_config list;
  security_posture_config :
    default_cluster_config__security_posture_config list;
}
[@@deriving yojson_of]
(** The default cluster configurations to apply across the fleet. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type state = { code : string prop  (** code *) }
[@@deriving yojson_of]

type google_gke_hub_fleet = {
  display_name : string prop option; [@option]
      (** A user-assigned display name of the Fleet. When present, it must be between 4 to 30 characters.
Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  default_cluster_config : default_cluster_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_gke_hub_fleet *)

let default_cluster_config__binary_authorization_config__policy_bindings
    ?name () :
    default_cluster_config__binary_authorization_config__policy_bindings
    =
  { name }

let default_cluster_config__binary_authorization_config
    ?evaluation_mode ~policy_bindings () :
    default_cluster_config__binary_authorization_config =
  { evaluation_mode; policy_bindings }

let default_cluster_config__security_posture_config ?mode
    ?vulnerability_mode () :
    default_cluster_config__security_posture_config =
  { mode; vulnerability_mode }

let default_cluster_config ~binary_authorization_config
    ~security_posture_config () : default_cluster_config =
  { binary_authorization_config; security_posture_config }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_gke_hub_fleet ?display_name ?id ?project ?timeouts
    ~default_cluster_config () : google_gke_hub_fleet =
  { display_name; id; project; default_cluster_config; timeouts }

type t = {
  create_time : string prop;
  delete_time : string prop;
  display_name : string prop;
  id : string prop;
  project : string prop;
  state : state list prop;
  uid : string prop;
  update_time : string prop;
}

let make ?display_name ?id ?project ?timeouts ~default_cluster_config
    __id =
  let __type = "google_gke_hub_fleet" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       delete_time = Prop.computed __type __id "delete_time";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_gke_hub_fleet
        (google_gke_hub_fleet ?display_name ?id ?project ?timeouts
           ~default_cluster_config ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?project ?timeouts
    ~default_cluster_config __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?project ?timeouts ~default_cluster_config
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

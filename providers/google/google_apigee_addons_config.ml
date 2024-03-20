(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type addons_config__advanced_api_ops_config = {
  enabled : bool prop option; [@option]
      (** Flag that specifies whether the Advanced API Ops add-on is enabled. *)
}
[@@deriving yojson_of]
(** Configuration for the Monetization add-on. *)

type addons_config__api_security_config = {
  enabled : bool prop option; [@option]
      (** Flag that specifies whether the Advanced API Ops add-on is enabled. *)
}
[@@deriving yojson_of]
(** Configuration for the Monetization add-on. *)

type addons_config__connectors_platform_config = {
  enabled : bool prop option; [@option]
      (** Flag that specifies whether the Advanced API Ops add-on is enabled. *)
}
[@@deriving yojson_of]
(** Configuration for the Monetization add-on. *)

type addons_config__integration_config = {
  enabled : bool prop option; [@option]
      (** Flag that specifies whether the Advanced API Ops add-on is enabled. *)
}
[@@deriving yojson_of]
(** Configuration for the Monetization add-on. *)

type addons_config__monetization_config = {
  enabled : bool prop option; [@option]
      (** Flag that specifies whether the Advanced API Ops add-on is enabled. *)
}
[@@deriving yojson_of]
(** Configuration for the Monetization add-on. *)

type addons_config = {
  advanced_api_ops_config :
    addons_config__advanced_api_ops_config list;
  api_security_config : addons_config__api_security_config list;
  connectors_platform_config :
    addons_config__connectors_platform_config list;
  integration_config : addons_config__integration_config list;
  monetization_config : addons_config__monetization_config list;
}
[@@deriving yojson_of]
(** Addon configurations of the Apigee organization. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_apigee_addons_config = {
  id : string prop option; [@option]  (** id *)
  org : string prop;  (** Name of the Apigee organization. *)
  addons_config : addons_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_addons_config *)

let addons_config__advanced_api_ops_config ?enabled () :
    addons_config__advanced_api_ops_config =
  { enabled }

let addons_config__api_security_config ?enabled () :
    addons_config__api_security_config =
  { enabled }

let addons_config__connectors_platform_config ?enabled () :
    addons_config__connectors_platform_config =
  { enabled }

let addons_config__integration_config ?enabled () :
    addons_config__integration_config =
  { enabled }

let addons_config__monetization_config ?enabled () :
    addons_config__monetization_config =
  { enabled }

let addons_config ~advanced_api_ops_config ~api_security_config
    ~connectors_platform_config ~integration_config
    ~monetization_config () : addons_config =
  {
    advanced_api_ops_config;
    api_security_config;
    connectors_platform_config;
    integration_config;
    monetization_config;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_apigee_addons_config ?id ?timeouts ~org ~addons_config ()
    : google_apigee_addons_config =
  { id; org; addons_config; timeouts }

type t = { id : string prop; org : string prop }

let make ?id ?timeouts ~org ~addons_config __id =
  let __type = "google_apigee_addons_config" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       org = Prop.computed __type __id "org";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apigee_addons_config
        (google_apigee_addons_config ?id ?timeouts ~org
           ~addons_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~org ~addons_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~org ~addons_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

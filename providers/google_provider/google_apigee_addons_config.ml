(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_apigee_addons_config__addons_config__advanced_api_ops_config = {
  enabled : bool option; [@option]
      (** Flag that specifies whether the Advanced API Ops add-on is enabled. *)
}
[@@deriving yojson_of]
(** Configuration for the Monetization add-on. *)

type google_apigee_addons_config__addons_config__api_security_config = {
  enabled : bool option; [@option]
      (** Flag that specifies whether the Advanced API Ops add-on is enabled. *)
  expires_at : string;
      (** Flag that specifies whether the Advanced API Ops add-on is enabled. *)
}
[@@deriving yojson_of]
(** Configuration for the Monetization add-on. *)

type google_apigee_addons_config__addons_config__connectors_platform_config = {
  enabled : bool option; [@option]
      (** Flag that specifies whether the Advanced API Ops add-on is enabled. *)
  expires_at : string;
      (** Flag that specifies whether the Advanced API Ops add-on is enabled. *)
}
[@@deriving yojson_of]
(** Configuration for the Monetization add-on. *)

type google_apigee_addons_config__addons_config__integration_config = {
  enabled : bool option; [@option]
      (** Flag that specifies whether the Advanced API Ops add-on is enabled. *)
}
[@@deriving yojson_of]
(** Configuration for the Monetization add-on. *)

type google_apigee_addons_config__addons_config__monetization_config = {
  enabled : bool option; [@option]
      (** Flag that specifies whether the Advanced API Ops add-on is enabled. *)
}
[@@deriving yojson_of]
(** Configuration for the Monetization add-on. *)

type google_apigee_addons_config__addons_config = {
  advanced_api_ops_config :
    google_apigee_addons_config__addons_config__advanced_api_ops_config
    list;
  api_security_config :
    google_apigee_addons_config__addons_config__api_security_config
    list;
  connectors_platform_config :
    google_apigee_addons_config__addons_config__connectors_platform_config
    list;
  integration_config :
    google_apigee_addons_config__addons_config__integration_config
    list;
  monetization_config :
    google_apigee_addons_config__addons_config__monetization_config
    list;
}
[@@deriving yojson_of]
(** Addon configurations of the Apigee organization. *)

type google_apigee_addons_config__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_apigee_addons_config__timeouts *)

type google_apigee_addons_config = {
  org : string;  (** Name of the Apigee organization. *)
  addons_config : google_apigee_addons_config__addons_config list;
  timeouts : google_apigee_addons_config__timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_addons_config *)

let google_apigee_addons_config ?timeouts ~org ~addons_config
    __resource_id =
  let __resource_type = "google_apigee_addons_config" in
  let __resource = { org; addons_config; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_addons_config __resource);
  ()

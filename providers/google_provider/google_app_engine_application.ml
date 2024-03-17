(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_app_engine_application__feature_settings = {
  split_health_checks : bool;  (** split_health_checks *)
}
[@@deriving yojson_of]
(** A block of optional settings to configure specific App Engine features: *)

type google_app_engine_application__iap = {
  enabled : bool option; [@option]
      (** Adapted for use with the app *)
  oauth2_client_id : string;
      (** OAuth2 client ID to use for the authentication flow. *)
  oauth2_client_secret : string;
      (** OAuth2 client secret to use for the authentication flow. The SHA-256 hash of the value is returned in the oauth2ClientSecretSha256 field. *)
  oauth2_client_secret_sha256 : string;
      (** Hex-encoded SHA-256 hash of the client secret. *)
}
[@@deriving yojson_of]
(** Settings for enabling Cloud Identity Aware Proxy *)

type google_app_engine_application__timeouts = {
  create : string option; [@option]  (** create *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_app_engine_application__timeouts *)

type google_app_engine_application__url_dispatch_rule = {
  domain : string;  (** domain *)
  path : string;  (** path *)
  service : string;  (** service *)
}
[@@deriving yojson_of]

type google_app_engine_application = {
  location_id : string;  (** The location to serve the app from. *)
  feature_settings :
    google_app_engine_application__feature_settings list;
  iap : google_app_engine_application__iap list;
  timeouts : google_app_engine_application__timeouts option;
}
[@@deriving yojson_of]
(** google_app_engine_application *)

let google_app_engine_application ?timeouts ~location_id
    ~feature_settings ~iap __resource_id =
  let __resource_type = "google_app_engine_application" in
  let __resource =
    { location_id; feature_settings; iap; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_app_engine_application __resource);
  ()

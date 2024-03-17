(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_app_engine_application__feature_settings = {
  split_health_checks : bool prop;  (** split_health_checks *)
}
[@@deriving yojson_of]
(** A block of optional settings to configure specific App Engine features: *)

type google_app_engine_application__iap = {
  enabled : bool prop option; [@option]
      (** Adapted for use with the app *)
  oauth2_client_id : string prop;
      (** OAuth2 client ID to use for the authentication flow. *)
  oauth2_client_secret : string prop;
      (** OAuth2 client secret to use for the authentication flow. The SHA-256 hash of the value is returned in the oauth2ClientSecretSha256 field. *)
  oauth2_client_secret_sha256 : string prop;
      (** Hex-encoded SHA-256 hash of the client secret. *)
}
[@@deriving yojson_of]
(** Settings for enabling Cloud Identity Aware Proxy *)

type google_app_engine_application__timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_app_engine_application__timeouts *)

type google_app_engine_application__url_dispatch_rule = {
  domain : string prop;  (** domain *)
  path : string prop;  (** path *)
  service : string prop;  (** service *)
}
[@@deriving yojson_of]

type google_app_engine_application = {
  auth_domain : string prop option; [@option]
      (** The domain to authenticate users with when using App Engine's User API. *)
  database_type : string prop option; [@option]  (** database_type *)
  id : string prop option; [@option]  (** id *)
  location_id : string prop;
      (** The location to serve the app from. *)
  project : string prop option; [@option]
      (** The project ID to create the application under. *)
  serving_status : string prop option; [@option]
      (** The serving status of the app. *)
  feature_settings :
    google_app_engine_application__feature_settings list;
  iap : google_app_engine_application__iap list;
  timeouts : google_app_engine_application__timeouts option;
}
[@@deriving yojson_of]
(** google_app_engine_application *)

type t = {
  app_id : string prop;
  auth_domain : string prop;
  code_bucket : string prop;
  database_type : string prop;
  default_bucket : string prop;
  default_hostname : string prop;
  gcr_domain : string prop;
  id : string prop;
  location_id : string prop;
  name : string prop;
  project : string prop;
  serving_status : string prop;
  url_dispatch_rule :
    google_app_engine_application__url_dispatch_rule list prop;
}

let google_app_engine_application ?auth_domain ?database_type ?id
    ?project ?serving_status ?timeouts ~location_id ~feature_settings
    ~iap __resource_id =
  let __resource_type = "google_app_engine_application" in
  let __resource =
    ({
       auth_domain;
       database_type;
       id;
       location_id;
       project;
       serving_status;
       feature_settings;
       iap;
       timeouts;
     }
      : google_app_engine_application)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_app_engine_application __resource);
  let __resource_attributes =
    ({
       app_id = Prop.computed __resource_type __resource_id "app_id";
       auth_domain =
         Prop.computed __resource_type __resource_id "auth_domain";
       code_bucket =
         Prop.computed __resource_type __resource_id "code_bucket";
       database_type =
         Prop.computed __resource_type __resource_id "database_type";
       default_bucket =
         Prop.computed __resource_type __resource_id "default_bucket";
       default_hostname =
         Prop.computed __resource_type __resource_id
           "default_hostname";
       gcr_domain =
         Prop.computed __resource_type __resource_id "gcr_domain";
       id = Prop.computed __resource_type __resource_id "id";
       location_id =
         Prop.computed __resource_type __resource_id "location_id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       serving_status =
         Prop.computed __resource_type __resource_id "serving_status";
       url_dispatch_rule =
         Prop.computed __resource_type __resource_id
           "url_dispatch_rule";
     }
      : t)
  in
  __resource_attributes

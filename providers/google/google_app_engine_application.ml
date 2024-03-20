(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type feature_settings = {
  split_health_checks : bool prop;  (** split_health_checks *)
}
[@@deriving yojson_of]
(** A block of optional settings to configure specific App Engine features: *)

type iap = {
  enabled : bool prop option; [@option]
      (** Adapted for use with the app *)
  oauth2_client_id : string prop;
      (** OAuth2 client ID to use for the authentication flow. *)
  oauth2_client_secret : string prop;
      (** OAuth2 client secret to use for the authentication flow. The SHA-256 hash of the value is returned in the oauth2ClientSecretSha256 field. *)
}
[@@deriving yojson_of]
(** Settings for enabling Cloud Identity Aware Proxy *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type url_dispatch_rule = {
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
  feature_settings : feature_settings list;
  iap : iap list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_app_engine_application *)

let feature_settings ~split_health_checks () : feature_settings =
  { split_health_checks }

let iap ?enabled ~oauth2_client_id ~oauth2_client_secret () : iap =
  { enabled; oauth2_client_id; oauth2_client_secret }

let timeouts ?create ?update () : timeouts = { create; update }

let google_app_engine_application ?auth_domain ?database_type ?id
    ?project ?serving_status ?timeouts ~location_id ~feature_settings
    ~iap () : google_app_engine_application =
  {
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
  url_dispatch_rule : url_dispatch_rule list prop;
}

let make ?auth_domain ?database_type ?id ?project ?serving_status
    ?timeouts ~location_id ~feature_settings ~iap __id =
  let __type = "google_app_engine_application" in
  let __attrs =
    ({
       app_id = Prop.computed __type __id "app_id";
       auth_domain = Prop.computed __type __id "auth_domain";
       code_bucket = Prop.computed __type __id "code_bucket";
       database_type = Prop.computed __type __id "database_type";
       default_bucket = Prop.computed __type __id "default_bucket";
       default_hostname =
         Prop.computed __type __id "default_hostname";
       gcr_domain = Prop.computed __type __id "gcr_domain";
       id = Prop.computed __type __id "id";
       location_id = Prop.computed __type __id "location_id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       serving_status = Prop.computed __type __id "serving_status";
       url_dispatch_rule =
         Prop.computed __type __id "url_dispatch_rule";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_app_engine_application
        (google_app_engine_application ?auth_domain ?database_type
           ?id ?project ?serving_status ?timeouts ~location_id
           ~feature_settings ~iap ());
    attrs = __attrs;
  }

let register ?tf_module ?auth_domain ?database_type ?id ?project
    ?serving_status ?timeouts ~location_id ~feature_settings ~iap
    __id =
  let (r : _ Tf_core.resource) =
    make ?auth_domain ?database_type ?id ?project ?serving_status
      ?timeouts ~location_id ~feature_settings ~iap __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

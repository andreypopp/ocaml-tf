(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_firebase_app_check_recaptcha_v3_config__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_firebase_app_check_recaptcha_v3_config__timeouts *)

type google_firebase_app_check_recaptcha_v3_config = {
  app_id : string prop;
      (** The ID of an
[Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id). *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  site_secret : string prop;
      (** The site secret used to identify your service for reCAPTCHA v3 verification.
For security reasons, this field will never be populated in any response. *)
  token_ttl : string prop option; [@option]
      (** Specifies the duration for which App Check tokens exchanged from reCAPTCHA V3 artifacts will be valid.
If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.

A duration in seconds with up to nine fractional digits, ending with 's'. Example: 3.5s. *)
  timeouts :
    google_firebase_app_check_recaptcha_v3_config__timeouts option;
}
[@@deriving yojson_of]
(** google_firebase_app_check_recaptcha_v3_config *)

type t = {
  app_id : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  site_secret : string prop;
  site_secret_set : bool prop;
  token_ttl : string prop;
}

let google_firebase_app_check_recaptcha_v3_config ?id ?project
    ?token_ttl ?timeouts ~app_id ~site_secret __resource_id =
  let __resource_type =
    "google_firebase_app_check_recaptcha_v3_config"
  in
  let __resource =
    ({ app_id; id; project; site_secret; token_ttl; timeouts }
      : google_firebase_app_check_recaptcha_v3_config)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_firebase_app_check_recaptcha_v3_config
       __resource);
  let __resource_attributes =
    ({
       app_id = Prop.computed __resource_type __resource_id "app_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       site_secret =
         Prop.computed __resource_type __resource_id "site_secret";
       site_secret_set =
         Prop.computed __resource_type __resource_id
           "site_secret_set";
       token_ttl =
         Prop.computed __resource_type __resource_id "token_ttl";
     }
      : t)
  in
  __resource_attributes

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_firebase_app_check_recaptcha_v3_config__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_firebase_app_check_recaptcha_v3_config__timeouts *)

type google_firebase_app_check_recaptcha_v3_config = {
  app_id : string;
      (** The ID of an
[Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id). *)
  id : string option; [@option]  (** id *)
  project : string option; [@option]  (** project *)
  site_secret : string;
      (** The site secret used to identify your service for reCAPTCHA v3 verification.
For security reasons, this field will never be populated in any response. *)
  token_ttl : string option; [@option]
      (** Specifies the duration for which App Check tokens exchanged from reCAPTCHA V3 artifacts will be valid.
If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.

A duration in seconds with up to nine fractional digits, ending with 's'. Example: 3.5s. *)
  timeouts :
    google_firebase_app_check_recaptcha_v3_config__timeouts option;
}
[@@deriving yojson_of]
(** google_firebase_app_check_recaptcha_v3_config *)

let google_firebase_app_check_recaptcha_v3_config ?id ?project
    ?token_ttl ?timeouts ~app_id ~site_secret __resource_id =
  let __resource_type =
    "google_firebase_app_check_recaptcha_v3_config"
  in
  let __resource =
    { app_id; id; project; site_secret; token_ttl; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_firebase_app_check_recaptcha_v3_config
       __resource);
  ()

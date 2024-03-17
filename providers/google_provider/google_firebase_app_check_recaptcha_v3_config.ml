(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

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
  site_secret : string;
      (** The site secret used to identify your service for reCAPTCHA v3 verification.
For security reasons, this field will never be populated in any response. *)
  timeouts :
    google_firebase_app_check_recaptcha_v3_config__timeouts option;
}
[@@deriving yojson_of]
(** google_firebase_app_check_recaptcha_v3_config *)

let google_firebase_app_check_recaptcha_v3_config ?timeouts ~app_id
    ~site_secret __resource_id =
  let __resource_type =
    "google_firebase_app_check_recaptcha_v3_config"
  in
  let __resource = { app_id; site_secret; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_firebase_app_check_recaptcha_v3_config
       __resource);
  ()

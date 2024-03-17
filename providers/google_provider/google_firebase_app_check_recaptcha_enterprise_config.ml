(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_firebase_app_check_recaptcha_enterprise_config__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_firebase_app_check_recaptcha_enterprise_config__timeouts *)

type google_firebase_app_check_recaptcha_enterprise_config = {
  app_id : string;
      (** The ID of an
[Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id). *)
  site_key : string;
      (** The score-based site key created in reCAPTCHA Enterprise used to invoke reCAPTCHA and generate the reCAPTCHA tokens for your application.

**Important**: This is not the siteSecret (as it is in reCAPTCHA v3), but rather your score-based reCAPTCHA Enterprise site key. *)
  timeouts :
    google_firebase_app_check_recaptcha_enterprise_config__timeouts
    option;
}
[@@deriving yojson_of]
(** google_firebase_app_check_recaptcha_enterprise_config *)

let google_firebase_app_check_recaptcha_enterprise_config ?timeouts
    ~app_id ~site_key __resource_id =
  let __resource_type =
    "google_firebase_app_check_recaptcha_enterprise_config"
  in
  let __resource = { app_id; site_key; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_firebase_app_check_recaptcha_enterprise_config
       __resource);
  ()

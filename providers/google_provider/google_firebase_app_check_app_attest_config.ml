(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_firebase_app_check_app_attest_config__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_firebase_app_check_app_attest_config__timeouts *)

type google_firebase_app_check_app_attest_config = {
  app_id : string;
      (** The ID of an
[Apple App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.iosApps#IosApp.FIELDS.app_id). *)
  timeouts :
    google_firebase_app_check_app_attest_config__timeouts option;
}
[@@deriving yojson_of]
(** google_firebase_app_check_app_attest_config *)

let google_firebase_app_check_app_attest_config ?timeouts ~app_id
    __resource_id =
  let __resource_type =
    "google_firebase_app_check_app_attest_config"
  in
  let __resource = { app_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_firebase_app_check_app_attest_config __resource);
  ()

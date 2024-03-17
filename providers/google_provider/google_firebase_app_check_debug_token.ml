(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_firebase_app_check_debug_token__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_firebase_app_check_debug_token__timeouts *)

type google_firebase_app_check_debug_token = {
  app_id : string;
      (** The ID of a
[Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id),
[Apple App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.iosApps#IosApp.FIELDS.app_id),
or [Android App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.androidApps#AndroidApp.FIELDS.app_id) *)
  display_name : string;
      (** A human readable display name used to identify this debug token. *)
  token : string;
      (** The secret token itself. Must be provided during creation, and must be a UUID4,
case insensitive. You may use a method of your choice such as random/random_uuid
to generate the token.

This field is immutable once set, and cannot be updated. You can, however, delete
this debug token to revoke it.

For security reasons, this field will never be populated in any response. *)
  timeouts : google_firebase_app_check_debug_token__timeouts option;
}
[@@deriving yojson_of]
(** google_firebase_app_check_debug_token *)

let google_firebase_app_check_debug_token ?timeouts ~app_id
    ~display_name ~token __resource_id =
  let __resource_type = "google_firebase_app_check_debug_token" in
  let __resource = { app_id; display_name; token; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_firebase_app_check_debug_token __resource);
  ()

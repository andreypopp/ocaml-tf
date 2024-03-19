(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_firebase_app_check_play_integrity_config = {
  app_id : string prop;
      (** The ID of an
[Android App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.androidApps#AndroidApp.FIELDS.app_id). *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  token_ttl : string prop option; [@option]
      (** Specifies the duration for which App Check tokens exchanged from Play Integrity artifacts will be valid.
If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.

A duration in seconds with up to nine fractional digits, ending with 's'. Example: 3.5s. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_firebase_app_check_play_integrity_config *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_firebase_app_check_play_integrity_config ?id ?project
    ?token_ttl ?timeouts ~app_id () :
    google_firebase_app_check_play_integrity_config =
  { app_id; id; project; token_ttl; timeouts }

type t = {
  app_id : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  token_ttl : string prop;
}

let register ?tf_module ?id ?project ?token_ttl ?timeouts ~app_id
    __resource_id =
  let __resource_type =
    "google_firebase_app_check_play_integrity_config"
  in
  let __resource =
    google_firebase_app_check_play_integrity_config ?id ?project
      ?token_ttl ?timeouts ~app_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_firebase_app_check_play_integrity_config
       __resource);
  let __resource_attributes =
    ({
       app_id = Prop.computed __resource_type __resource_id "app_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       token_ttl =
         Prop.computed __resource_type __resource_id "token_ttl";
     }
      : t)
  in
  __resource_attributes

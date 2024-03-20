(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_firebase_app_check_debug_token = {
  app_id : string prop;
      (** The ID of a
[Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id),
[Apple App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.iosApps#IosApp.FIELDS.app_id),
or [Android App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.androidApps#AndroidApp.FIELDS.app_id) *)
  display_name : string prop;
      (** A human readable display name used to identify this debug token. *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  token : string prop;
      (** The secret token itself. Must be provided during creation, and must be a UUID4,
case insensitive. You may use a method of your choice such as random/random_uuid
to generate the token.

This field is immutable once set, and cannot be updated. You can, however, delete
this debug token to revoke it.

For security reasons, this field will never be populated in any response. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_firebase_app_check_debug_token *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_firebase_app_check_debug_token ?id ?project ?timeouts
    ~app_id ~display_name ~token () :
    google_firebase_app_check_debug_token =
  { app_id; display_name; id; project; token; timeouts }

type t = {
  app_id : string prop;
  debug_token_id : string prop;
  display_name : string prop;
  id : string prop;
  project : string prop;
  token : string prop;
}

let make ?id ?project ?timeouts ~app_id ~display_name ~token __id =
  let __type = "google_firebase_app_check_debug_token" in
  let __attrs =
    ({
       app_id = Prop.computed __type __id "app_id";
       debug_token_id = Prop.computed __type __id "debug_token_id";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
       token = Prop.computed __type __id "token";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_firebase_app_check_debug_token
        (google_firebase_app_check_debug_token ?id ?project ?timeouts
           ~app_id ~display_name ~token ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?timeouts ~app_id ~display_name
    ~token __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?timeouts ~app_id ~display_name ~token __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

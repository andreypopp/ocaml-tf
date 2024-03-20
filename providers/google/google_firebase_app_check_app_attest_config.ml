(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_firebase_app_check_app_attest_config = {
  app_id : string prop;
      (** The ID of an
[Apple App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.iosApps#IosApp.FIELDS.app_id). *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  token_ttl : string prop option; [@option]
      (** Specifies the duration for which App Check tokens exchanged from App Attest artifacts will be valid.
If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.

A duration in seconds with up to nine fractional digits, ending with 's'. Example: 3.5s. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_firebase_app_check_app_attest_config *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_firebase_app_check_app_attest_config ?id ?project
    ?token_ttl ?timeouts ~app_id () :
    google_firebase_app_check_app_attest_config =
  { app_id; id; project; token_ttl; timeouts }

type t = {
  app_id : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  token_ttl : string prop;
}

let make ?id ?project ?token_ttl ?timeouts ~app_id __id =
  let __type = "google_firebase_app_check_app_attest_config" in
  let __attrs =
    ({
       app_id = Prop.computed __type __id "app_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       token_ttl = Prop.computed __type __id "token_ttl";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_firebase_app_check_app_attest_config
        (google_firebase_app_check_app_attest_config ?id ?project
           ?token_ttl ?timeouts ~app_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?token_ttl ?timeouts ~app_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?token_ttl ?timeouts ~app_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

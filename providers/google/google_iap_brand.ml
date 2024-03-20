(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_iap_brand = {
  application_title : string prop;
      (** Application name displayed on OAuth consent screen. *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  support_email : string prop;
      (** Support email displayed on the OAuth consent screen. Can be either a
user or group email. When a user email is specified, the caller must
be the user with the associated email address. When a group email is
specified, the caller can be either a user or a service account which
is an owner of the specified group in Cloud Identity. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_iap_brand *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_iap_brand ?id ?project ?timeouts ~application_title
    ~support_email () : google_iap_brand =
  { application_title; id; project; support_email; timeouts }

type t = {
  application_title : string prop;
  id : string prop;
  name : string prop;
  org_internal_only : bool prop;
  project : string prop;
  support_email : string prop;
}

let make ?id ?project ?timeouts ~application_title ~support_email
    __id =
  let __type = "google_iap_brand" in
  let __attrs =
    ({
       application_title =
         Prop.computed __type __id "application_title";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       org_internal_only =
         Prop.computed __type __id "org_internal_only";
       project = Prop.computed __type __id "project";
       support_email = Prop.computed __type __id "support_email";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_iap_brand
        (google_iap_brand ?id ?project ?timeouts ~application_title
           ~support_email ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?timeouts ~application_title
    ~support_email __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?timeouts ~application_title ~support_email
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_storage_hmac_key = {
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  service_account_email : string prop;
      (** The email address of the key's associated service account. *)
  state : string prop option; [@option]
      (** The state of the key. Can be set to one of ACTIVE, INACTIVE. Default value: ACTIVE Possible values: [ACTIVE, INACTIVE] *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_storage_hmac_key *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_storage_hmac_key ?id ?project ?state ?timeouts
    ~service_account_email () : google_storage_hmac_key =
  { id; project; service_account_email; state; timeouts }

type t = {
  access_id : string prop;
  id : string prop;
  project : string prop;
  secret : string prop;
  service_account_email : string prop;
  state : string prop;
  time_created : string prop;
  updated : string prop;
}

let make ?id ?project ?state ?timeouts ~service_account_email __id =
  let __type = "google_storage_hmac_key" in
  let __attrs =
    ({
       access_id = Prop.computed __type __id "access_id";
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
       secret = Prop.computed __type __id "secret";
       service_account_email =
         Prop.computed __type __id "service_account_email";
       state = Prop.computed __type __id "state";
       time_created = Prop.computed __type __id "time_created";
       updated = Prop.computed __type __id "updated";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_storage_hmac_key
        (google_storage_hmac_key ?id ?project ?state ?timeouts
           ~service_account_email ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?state ?timeouts
    ~service_account_email __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?state ?timeouts ~service_account_email __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

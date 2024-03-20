(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_os_login_ssh_public_key = {
  expiration_time_usec : string prop option; [@option]
      (** An expiration time in microseconds since epoch. *)
  id : string prop option; [@option]  (** id *)
  key : string prop;
      (** Public key text in SSH format, defined by RFC4253 section 6.6. *)
  project : string prop option; [@option]
      (** The project ID of the Google Cloud Platform project. *)
  user : string prop;  (** The user email. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_os_login_ssh_public_key *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_os_login_ssh_public_key ?expiration_time_usec ?id ?project
    ?timeouts ~key ~user () : google_os_login_ssh_public_key =
  { expiration_time_usec; id; key; project; user; timeouts }

type t = {
  expiration_time_usec : string prop;
  fingerprint : string prop;
  id : string prop;
  key : string prop;
  project : string prop;
  user : string prop;
}

let make ?expiration_time_usec ?id ?project ?timeouts ~key ~user __id
    =
  let __type = "google_os_login_ssh_public_key" in
  let __attrs =
    ({
       expiration_time_usec =
         Prop.computed __type __id "expiration_time_usec";
       fingerprint = Prop.computed __type __id "fingerprint";
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       project = Prop.computed __type __id "project";
       user = Prop.computed __type __id "user";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_os_login_ssh_public_key
        (google_os_login_ssh_public_key ?expiration_time_usec ?id
           ?project ?timeouts ~key ~user ());
    attrs = __attrs;
  }

let register ?tf_module ?expiration_time_usec ?id ?project ?timeouts
    ~key ~user __id =
  let (r : _ Tf_core.resource) =
    make ?expiration_time_usec ?id ?project ?timeouts ~key ~user __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

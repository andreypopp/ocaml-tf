(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_os_login_ssh_public_key = {
  expiration_time_usec : string prop option; [@option]
  id : string prop option; [@option]
  key : string prop;
  project : string prop option; [@option]
  user : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_os_login_ssh_public_key) -> ()

let yojson_of_google_os_login_ssh_public_key =
  (function
   | {
       expiration_time_usec = v_expiration_time_usec;
       id = v_id;
       key = v_key;
       project = v_project;
       user = v_user;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user in
         ("user", arg) :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expiration_time_usec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expiration_time_usec", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_os_login_ssh_public_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_os_login_ssh_public_key

[@@@deriving.end]

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

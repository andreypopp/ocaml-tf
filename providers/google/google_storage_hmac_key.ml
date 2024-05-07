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

type google_storage_hmac_key = {
  id : string prop option; [@option]
  project : string prop option; [@option]
  service_account_email : string prop;
  state : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_storage_hmac_key) -> ()

let yojson_of_google_storage_hmac_key =
  (function
   | {
       id = v_id;
       project = v_project;
       service_account_email = v_service_account_email;
       state = v_state;
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
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_account_email
         in
         ("service_account_email", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_storage_hmac_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_storage_hmac_key

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_storage_hmac_key ?id ?project ?state ?timeouts
    ~service_account_email () : google_storage_hmac_key =
  { id; project; service_account_email; state; timeouts }

type t = {
  tf_name : string;
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
       tf_name = __id;
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

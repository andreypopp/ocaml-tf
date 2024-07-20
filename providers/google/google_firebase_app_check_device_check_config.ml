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

type google_firebase_app_check_device_check_config = {
  app_id : string prop;
  id : string prop option; [@option]
  key_id : string prop;
  private_key : string prop;
  project : string prop option; [@option]
  token_ttl : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_firebase_app_check_device_check_config) -> ()

let yojson_of_google_firebase_app_check_device_check_config =
  (function
   | {
       app_id = v_app_id;
       id = v_id;
       key_id = v_key_id;
       private_key = v_private_key;
       project = v_project;
       token_ttl = v_token_ttl;
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
         match v_token_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "token_ttl", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_private_key in
         ("private_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_id in
         ("key_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_app_id in
         ("app_id", arg) :: bnds
       in
       `Assoc bnds
    : google_firebase_app_check_device_check_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_firebase_app_check_device_check_config

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_firebase_app_check_device_check_config ?id ?project
    ?token_ttl ?timeouts ~app_id ~key_id ~private_key () :
    google_firebase_app_check_device_check_config =
  { app_id; id; key_id; private_key; project; token_ttl; timeouts }

type t = {
  tf_name : string;
  app_id : string prop;
  id : string prop;
  key_id : string prop;
  name : string prop;
  private_key : string prop;
  private_key_set : bool prop;
  project : string prop;
  token_ttl : string prop;
}

let make ?id ?project ?token_ttl ?timeouts ~app_id ~key_id
    ~private_key __id =
  let __type = "google_firebase_app_check_device_check_config" in
  let __attrs =
    ({
       tf_name = __id;
       app_id = Prop.computed __type __id "app_id";
       id = Prop.computed __type __id "id";
       key_id = Prop.computed __type __id "key_id";
       name = Prop.computed __type __id "name";
       private_key = Prop.computed __type __id "private_key";
       private_key_set = Prop.computed __type __id "private_key_set";
       project = Prop.computed __type __id "project";
       token_ttl = Prop.computed __type __id "token_ttl";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_firebase_app_check_device_check_config
        (google_firebase_app_check_device_check_config ?id ?project
           ?token_ttl ?timeouts ~app_id ~key_id ~private_key ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?token_ttl ?timeouts ~app_id
    ~key_id ~private_key __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?token_ttl ?timeouts ~app_id ~key_id
      ~private_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

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

type google_firebase_app_check_debug_token = {
  app_id : string prop;
  display_name : string prop;
  id : string prop option; [@option]
  project : string prop option; [@option]
  token : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_firebase_app_check_debug_token) -> ()

let yojson_of_google_firebase_app_check_debug_token =
  (function
   | {
       app_id = v_app_id;
       display_name = v_display_name;
       id = v_id;
       project = v_project;
       token = v_token;
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
         let arg = yojson_of_prop yojson_of_string v_token in
         ("token", arg) :: bnds
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_id in
         ("app_id", arg) :: bnds
       in
       `Assoc bnds
    : google_firebase_app_check_debug_token ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_firebase_app_check_debug_token

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_firebase_app_check_debug_token ?id ?project ?timeouts
    ~app_id ~display_name ~token () :
    google_firebase_app_check_debug_token =
  { app_id; display_name; id; project; token; timeouts }

type t = {
  tf_name : string;
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
       tf_name = __id;
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

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type google_project_default_service_accounts = {
  action : string prop;
  id : string prop option; [@option]
  project : string prop;
  restore_policy : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_project_default_service_accounts) -> ()

let yojson_of_google_project_default_service_accounts =
  (function
   | {
       action = v_action;
       id = v_id;
       project = v_project;
       restore_policy = v_restore_policy;
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
         match v_restore_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "restore_policy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project in
         ("project", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : google_project_default_service_accounts ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_project_default_service_accounts

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let google_project_default_service_accounts ?id ?restore_policy
    ?timeouts ~action ~project () :
    google_project_default_service_accounts =
  { action; id; project; restore_policy; timeouts }

type t = {
  tf_name : string;
  action : string prop;
  id : string prop;
  project : string prop;
  restore_policy : string prop;
  service_accounts : (string * string) list prop;
}

let make ?id ?restore_policy ?timeouts ~action ~project __id =
  let __type = "google_project_default_service_accounts" in
  let __attrs =
    ({
       tf_name = __id;
       action = Prop.computed __type __id "action";
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
       restore_policy = Prop.computed __type __id "restore_policy";
       service_accounts =
         Prop.computed __type __id "service_accounts";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_project_default_service_accounts
        (google_project_default_service_accounts ?id ?restore_policy
           ?timeouts ~action ~project ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?restore_policy ?timeouts ~action
    ~project __id =
  let (r : _ Tf_core.resource) =
    make ?id ?restore_policy ?timeouts ~action ~project __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

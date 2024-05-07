(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dispatch_rules = {
  domain : string prop option; [@option]
  path : string prop;
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dispatch_rules) -> ()

let yojson_of_dispatch_rules =
  (function
   | { domain = v_domain; path = v_path; service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         match v_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : dispatch_rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dispatch_rules

[@@@deriving.end]

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

type google_app_engine_application_url_dispatch_rules = {
  id : string prop option; [@option]
  project : string prop option; [@option]
  dispatch_rules : dispatch_rules list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_app_engine_application_url_dispatch_rules) -> ()

let yojson_of_google_app_engine_application_url_dispatch_rules =
  (function
   | {
       id = v_id;
       project = v_project;
       dispatch_rules = v_dispatch_rules;
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
         let arg =
           yojson_of_list yojson_of_dispatch_rules v_dispatch_rules
         in
         ("dispatch_rules", arg) :: bnds
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
    : google_app_engine_application_url_dispatch_rules ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_app_engine_application_url_dispatch_rules

[@@@deriving.end]

let dispatch_rules ?domain ~path ~service () : dispatch_rules =
  { domain; path; service }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_app_engine_application_url_dispatch_rules ?id ?project
    ?timeouts ~dispatch_rules () :
    google_app_engine_application_url_dispatch_rules =
  { id; project; dispatch_rules; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  project : string prop;
}

let make ?id ?project ?timeouts ~dispatch_rules __id =
  let __type = "google_app_engine_application_url_dispatch_rules" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_app_engine_application_url_dispatch_rules
        (google_app_engine_application_url_dispatch_rules ?id
           ?project ?timeouts ~dispatch_rules ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?timeouts ~dispatch_rules __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?timeouts ~dispatch_rules __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

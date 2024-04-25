(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ssl_settings = {
  certificate_id : string prop option; [@option]
  ssl_management_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ssl_settings) -> ()

let yojson_of_ssl_settings =
  (function
   | {
       certificate_id = v_certificate_id;
       ssl_management_type = v_ssl_management_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ssl_management_type
         in
         ("ssl_management_type", arg) :: bnds
       in
       let bnds =
         match v_certificate_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ssl_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ssl_settings

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

type resource_records = {
  name : string prop;
  rrdata : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : resource_records) -> ()

let yojson_of_resource_records =
  (function
   | { name = v_name; rrdata = v_rrdata; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rrdata in
         ("rrdata", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : resource_records -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resource_records

[@@@deriving.end]

type google_app_engine_domain_mapping = {
  domain_name : string prop;
  id : string prop option; [@option]
  override_strategy : string prop option; [@option]
  project : string prop option; [@option]
  ssl_settings : ssl_settings list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_app_engine_domain_mapping) -> ()

let yojson_of_google_app_engine_domain_mapping =
  (function
   | {
       domain_name = v_domain_name;
       id = v_id;
       override_strategy = v_override_strategy;
       project = v_project;
       ssl_settings = v_ssl_settings;
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
           yojson_of_list yojson_of_ssl_settings v_ssl_settings
         in
         ("ssl_settings", arg) :: bnds
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
         match v_override_strategy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "override_strategy", arg in
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
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       `Assoc bnds
    : google_app_engine_domain_mapping ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_app_engine_domain_mapping

[@@@deriving.end]

let ssl_settings ?certificate_id ~ssl_management_type () :
    ssl_settings =
  { certificate_id; ssl_management_type }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_app_engine_domain_mapping ?id ?override_strategy ?project
    ?(ssl_settings = []) ?timeouts ~domain_name () :
    google_app_engine_domain_mapping =
  {
    domain_name;
    id;
    override_strategy;
    project;
    ssl_settings;
    timeouts;
  }

type t = {
  domain_name : string prop;
  id : string prop;
  name : string prop;
  override_strategy : string prop;
  project : string prop;
  resource_records : resource_records list prop;
}

let make ?id ?override_strategy ?project ?(ssl_settings = [])
    ?timeouts ~domain_name __id =
  let __type = "google_app_engine_domain_mapping" in
  let __attrs =
    ({
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       override_strategy =
         Prop.computed __type __id "override_strategy";
       project = Prop.computed __type __id "project";
       resource_records =
         Prop.computed __type __id "resource_records";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_app_engine_domain_mapping
        (google_app_engine_domain_mapping ?id ?override_strategy
           ?project ~ssl_settings ?timeouts ~domain_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?override_strategy ?project
    ?(ssl_settings = []) ?timeouts ~domain_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?override_strategy ?project ~ssl_settings ?timeouts
      ~domain_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

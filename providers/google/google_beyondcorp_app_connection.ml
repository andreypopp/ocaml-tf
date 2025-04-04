(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type application_endpoint = { host : string prop; port : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : application_endpoint) -> ()

let yojson_of_application_endpoint =
  (function
   | { host = v_host; port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       `Assoc bnds
    : application_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_application_endpoint

[@@@deriving.end]

type gateway = {
  app_gateway : string prop;
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : gateway) -> ()

let yojson_of_gateway =
  (function
   | { app_gateway = v_app_gateway; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_gateway in
         ("app_gateway", arg) :: bnds
       in
       `Assoc bnds
    : gateway -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_gateway

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

type google_beyondcorp_app_connection = {
  connectors : string prop list option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  application_endpoint : application_endpoint list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gateway : gateway list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_beyondcorp_app_connection) -> ()

let yojson_of_google_beyondcorp_app_connection =
  (function
   | {
       connectors = v_connectors;
       display_name = v_display_name;
       id = v_id;
       labels = v_labels;
       name = v_name;
       project = v_project;
       region = v_region;
       type_ = v_type_;
       application_endpoint = v_application_endpoint;
       gateway = v_gateway;
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
         if Stdlib.( = ) [] v_gateway then bnds
         else
           let arg = (yojson_of_list yojson_of_gateway) v_gateway in
           let bnd = "gateway", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_application_endpoint then bnds
         else
           let arg =
             (yojson_of_list yojson_of_application_endpoint)
               v_application_endpoint
           in
           let bnd = "application_endpoint", arg in
           bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "labels", arg in
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connectors with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "connectors", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_beyondcorp_app_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_beyondcorp_app_connection

[@@@deriving.end]

let application_endpoint ~host ~port () : application_endpoint =
  { host; port }

let gateway ?type_ ~app_gateway () : gateway = { app_gateway; type_ }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_beyondcorp_app_connection ?connectors ?display_name ?id
    ?labels ?project ?region ?type_ ?(gateway = []) ?timeouts ~name
    ~application_endpoint () : google_beyondcorp_app_connection =
  {
    connectors;
    display_name;
    id;
    labels;
    name;
    project;
    region;
    type_;
    application_endpoint;
    gateway;
    timeouts;
  }

type t = {
  tf_name : string;
  connectors : string list prop;
  display_name : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  project : string prop;
  region : string prop;
  terraform_labels : string Tf_core.assoc prop;
  type_ : string prop;
}

let make ?connectors ?display_name ?id ?labels ?project ?region
    ?type_ ?(gateway = []) ?timeouts ~name ~application_endpoint __id
    =
  let __type = "google_beyondcorp_app_connection" in
  let __attrs =
    ({
       tf_name = __id;
       connectors = Prop.computed __type __id "connectors";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_beyondcorp_app_connection
        (google_beyondcorp_app_connection ?connectors ?display_name
           ?id ?labels ?project ?region ?type_ ~gateway ?timeouts
           ~name ~application_endpoint ());
    attrs = __attrs;
  }

let register ?tf_module ?connectors ?display_name ?id ?labels
    ?project ?region ?type_ ?(gateway = []) ?timeouts ~name
    ~application_endpoint __id =
  let (r : _ Tf_core.resource) =
    make ?connectors ?display_name ?id ?labels ?project ?region
      ?type_ ~gateway ?timeouts ~name ~application_endpoint __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metastore = { service : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : metastore) -> ()

let yojson_of_metastore =
  (function
   | { service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : metastore -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metastore

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

type asset_status = {
  active_assets : float prop;
  security_policy_applying_assets : float prop;
  update_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : asset_status) -> ()

let yojson_of_asset_status =
  (function
   | {
       active_assets = v_active_assets;
       security_policy_applying_assets =
         v_security_policy_applying_assets;
       update_time = v_update_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_update_time in
         ("update_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_security_policy_applying_assets
         in
         ("security_policy_applying_assets", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_active_assets in
         ("active_assets", arg) :: bnds
       in
       `Assoc bnds
    : asset_status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_asset_status

[@@@deriving.end]

type metastore_status = {
  endpoint : string prop;
  message : string prop;
  state : string prop;
  update_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metastore_status) -> ()

let yojson_of_metastore_status =
  (function
   | {
       endpoint = v_endpoint;
       message = v_message;
       state = v_state;
       update_time = v_update_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_update_time in
         ("update_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_message in
         ("message", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint in
         ("endpoint", arg) :: bnds
       in
       `Assoc bnds
    : metastore_status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metastore_status

[@@@deriving.end]

type google_dataplex_lake = {
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  metastore : metastore list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dataplex_lake) -> ()

let yojson_of_google_dataplex_lake =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       labels = v_labels;
       location = v_location;
       name = v_name;
       project = v_project;
       metastore = v_metastore;
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
         if Stdlib.( = ) [] v_metastore then bnds
         else
           let arg =
             (yojson_of_list yojson_of_metastore) v_metastore
           in
           let bnd = "metastore", arg in
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
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_dataplex_lake -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dataplex_lake

[@@@deriving.end]

let metastore ?service () : metastore = { service }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dataplex_lake ?description ?display_name ?id ?labels
    ?project ?(metastore = []) ?timeouts ~location ~name () :
    google_dataplex_lake =
  {
    description;
    display_name;
    id;
    labels;
    location;
    name;
    project;
    metastore;
    timeouts;
  }

type t = {
  tf_name : string;
  asset_status : asset_status list prop;
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  metastore_status : metastore_status list prop;
  name : string prop;
  project : string prop;
  service_account : string prop;
  state : string prop;
  terraform_labels : string Tf_core.assoc prop;
  uid : string prop;
  update_time : string prop;
}

let make ?description ?display_name ?id ?labels ?project
    ?(metastore = []) ?timeouts ~location ~name __id =
  let __type = "google_dataplex_lake" in
  let __attrs =
    ({
       tf_name = __id;
       asset_status = Prop.computed __type __id "asset_status";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       metastore_status =
         Prop.computed __type __id "metastore_status";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       service_account = Prop.computed __type __id "service_account";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dataplex_lake
        (google_dataplex_lake ?description ?display_name ?id ?labels
           ?project ~metastore ?timeouts ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?display_name ?id ?labels
    ?project ?(metastore = []) ?timeouts ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?display_name ?id ?labels ?project ~metastore
      ?timeouts ~location ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hive_options__storage_descriptor = {
  input_format : string prop option; [@option]
  location_uri : string prop option; [@option]
  output_format : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hive_options__storage_descriptor) -> ()

let yojson_of_hive_options__storage_descriptor =
  (function
   | {
       input_format = v_input_format;
       location_uri = v_location_uri;
       output_format = v_output_format;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_output_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "output_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_location_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_input_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "input_format", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hive_options__storage_descriptor ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hive_options__storage_descriptor

[@@@deriving.end]

type hive_options = {
  parameters : (string * string prop) list option; [@option]
  table_type : string prop option; [@option]
  storage_descriptor : hive_options__storage_descriptor list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hive_options) -> ()

let yojson_of_hive_options =
  (function
   | {
       parameters = v_parameters;
       table_type = v_table_type;
       storage_descriptor = v_storage_descriptor;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_hive_options__storage_descriptor
             v_storage_descriptor
         in
         ("storage_descriptor", arg) :: bnds
       in
       let bnds =
         match v_table_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "table_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hive_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hive_options

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

type google_biglake_table = {
  database : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  type_ : string prop option; [@option] [@key "type"]
  hive_options : hive_options list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_biglake_table) -> ()

let yojson_of_google_biglake_table =
  (function
   | {
       database = v_database;
       id = v_id;
       name = v_name;
       type_ = v_type_;
       hive_options = v_hive_options;
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
           yojson_of_list yojson_of_hive_options v_hive_options
         in
         ("hive_options", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_database with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "database", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_biglake_table -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_biglake_table

[@@@deriving.end]

let hive_options__storage_descriptor ?input_format ?location_uri
    ?output_format () : hive_options__storage_descriptor =
  { input_format; location_uri; output_format }

let hive_options ?parameters ?table_type ~storage_descriptor () :
    hive_options =
  { parameters; table_type; storage_descriptor }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_biglake_table ?database ?id ?type_ ?timeouts ~name
    ~hive_options () : google_biglake_table =
  { database; id; name; type_; hive_options; timeouts }

type t = {
  create_time : string prop;
  database : string prop;
  delete_time : string prop;
  etag : string prop;
  expire_time : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
  update_time : string prop;
}

let make ?database ?id ?type_ ?timeouts ~name ~hive_options __id =
  let __type = "google_biglake_table" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       database = Prop.computed __type __id "database";
       delete_time = Prop.computed __type __id "delete_time";
       etag = Prop.computed __type __id "etag";
       expire_time = Prop.computed __type __id "expire_time";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       type_ = Prop.computed __type __id "type";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_biglake_table
        (google_biglake_table ?database ?id ?type_ ?timeouts ~name
           ~hive_options ());
    attrs = __attrs;
  }

let register ?tf_module ?database ?id ?type_ ?timeouts ~name
    ~hive_options __id =
  let (r : _ Tf_core.resource) =
    make ?database ?id ?type_ ?timeouts ~name ~hive_options __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hive_options = {
  location_uri : string prop option; [@option]
  parameters : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hive_options) -> ()

let yojson_of_hive_options =
  (function
   | { location_uri = v_location_uri; parameters = v_parameters } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       let bnds =
         match v_location_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location_uri", arg in
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

type google_biglake_database = {
  catalog : string prop;
  id : string prop option; [@option]
  name : string prop;
  type_ : string prop; [@key "type"]
  hive_options : hive_options list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_biglake_database) -> ()

let yojson_of_google_biglake_database =
  (function
   | {
       catalog = v_catalog;
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
         if [] = v_hive_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_hive_options) v_hive_options
           in
           let bnd = "hive_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_catalog in
         ("catalog", arg) :: bnds
       in
       `Assoc bnds
    : google_biglake_database -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_biglake_database

[@@@deriving.end]

let hive_options ?location_uri ?parameters () : hive_options =
  { location_uri; parameters }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_biglake_database ?id ?timeouts ~catalog ~name ~type_
    ~hive_options () : google_biglake_database =
  { catalog; id; name; type_; hive_options; timeouts }

type t = {
  tf_name : string;
  catalog : string prop;
  create_time : string prop;
  delete_time : string prop;
  expire_time : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
  update_time : string prop;
}

let make ?id ?timeouts ~catalog ~name ~type_ ~hive_options __id =
  let __type = "google_biglake_database" in
  let __attrs =
    ({
       tf_name = __id;
       catalog = Prop.computed __type __id "catalog";
       create_time = Prop.computed __type __id "create_time";
       delete_time = Prop.computed __type __id "delete_time";
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
      yojson_of_google_biglake_database
        (google_biglake_database ?id ?timeouts ~catalog ~name ~type_
           ~hive_options ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~catalog ~name ~type_
    ~hive_options __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~catalog ~name ~type_ ~hive_options __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

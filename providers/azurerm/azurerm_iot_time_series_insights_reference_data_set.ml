(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type key_property = {
  name : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : key_property) -> ()

let yojson_of_key_property =
  (function
   | { name = v_name; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : key_property -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_key_property

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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

type azurerm_iot_time_series_insights_reference_data_set = {
  data_string_comparison_behavior : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  tags : (string * string prop) list option; [@option]
  time_series_insights_environment_id : string prop;
  key_property : key_property list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_iot_time_series_insights_reference_data_set) -> ()

let yojson_of_azurerm_iot_time_series_insights_reference_data_set =
  (function
   | {
       data_string_comparison_behavior =
         v_data_string_comparison_behavior;
       id = v_id;
       location = v_location;
       name = v_name;
       tags = v_tags;
       time_series_insights_environment_id =
         v_time_series_insights_environment_id;
       key_property = v_key_property;
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
           yojson_of_list yojson_of_key_property v_key_property
         in
         ("key_property", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_time_series_insights_environment_id
         in
         ("time_series_insights_environment_id", arg) :: bnds
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_string_comparison_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_string_comparison_behavior", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_iot_time_series_insights_reference_data_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_iot_time_series_insights_reference_data_set

[@@@deriving.end]

let key_property ~name ~type_ () : key_property = { name; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iot_time_series_insights_reference_data_set
    ?data_string_comparison_behavior ?id ?tags ?timeouts ~location
    ~name ~time_series_insights_environment_id ~key_property () :
    azurerm_iot_time_series_insights_reference_data_set =
  {
    data_string_comparison_behavior;
    id;
    location;
    name;
    tags;
    time_series_insights_environment_id;
    key_property;
    timeouts;
  }

type t = {
  tf_name : string;
  data_string_comparison_behavior : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  tags : (string * string) list prop;
  time_series_insights_environment_id : string prop;
}

let make ?data_string_comparison_behavior ?id ?tags ?timeouts
    ~location ~name ~time_series_insights_environment_id
    ~key_property __id =
  let __type =
    "azurerm_iot_time_series_insights_reference_data_set"
  in
  let __attrs =
    ({
       tf_name = __id;
       data_string_comparison_behavior =
         Prop.computed __type __id "data_string_comparison_behavior";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       time_series_insights_environment_id =
         Prop.computed __type __id
           "time_series_insights_environment_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iot_time_series_insights_reference_data_set
        (azurerm_iot_time_series_insights_reference_data_set
           ?data_string_comparison_behavior ?id ?tags ?timeouts
           ~location ~name ~time_series_insights_environment_id
           ~key_property ());
    attrs = __attrs;
  }

let register ?tf_module ?data_string_comparison_behavior ?id ?tags
    ?timeouts ~location ~name ~time_series_insights_environment_id
    ~key_property __id =
  let (r : _ Tf_core.resource) =
    make ?data_string_comparison_behavior ?id ?tags ?timeouts
      ~location ~name ~time_series_insights_environment_id
      ~key_property __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

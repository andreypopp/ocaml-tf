(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type export_data_options = {
  time_frame : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : export_data_options) -> ()

let yojson_of_export_data_options =
  (function
   | { time_frame = v_time_frame; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_time_frame in
         ("time_frame", arg) :: bnds
       in
       `Assoc bnds
    : export_data_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_export_data_options

[@@@deriving.end]

type export_data_storage_location = {
  container_id : string prop;
  root_folder_path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : export_data_storage_location) -> ()

let yojson_of_export_data_storage_location =
  (function
   | {
       container_id = v_container_id;
       root_folder_path = v_root_folder_path;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_root_folder_path
         in
         ("root_folder_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_container_id in
         ("container_id", arg) :: bnds
       in
       `Assoc bnds
    : export_data_storage_location ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_export_data_storage_location

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

type azurerm_resource_group_cost_management_export = {
  active : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  recurrence_period_end_date : string prop;
  recurrence_period_start_date : string prop;
  recurrence_type : string prop;
  resource_group_id : string prop;
  export_data_options : export_data_options list;
  export_data_storage_location : export_data_storage_location list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_resource_group_cost_management_export) -> ()

let yojson_of_azurerm_resource_group_cost_management_export =
  (function
   | {
       active = v_active;
       id = v_id;
       name = v_name;
       recurrence_period_end_date = v_recurrence_period_end_date;
       recurrence_period_start_date = v_recurrence_period_start_date;
       recurrence_type = v_recurrence_type;
       resource_group_id = v_resource_group_id;
       export_data_options = v_export_data_options;
       export_data_storage_location = v_export_data_storage_location;
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
           yojson_of_list yojson_of_export_data_storage_location
             v_export_data_storage_location
         in
         ("export_data_storage_location", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_export_data_options
             v_export_data_options
         in
         ("export_data_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_id
         in
         ("resource_group_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_recurrence_type
         in
         ("recurrence_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_recurrence_period_start_date
         in
         ("recurrence_period_start_date", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_recurrence_period_end_date
         in
         ("recurrence_period_end_date", arg) :: bnds
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
         match v_active with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "active", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_resource_group_cost_management_export ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_resource_group_cost_management_export

[@@@deriving.end]

let export_data_options ~time_frame ~type_ () : export_data_options =
  { time_frame; type_ }

let export_data_storage_location ~container_id ~root_folder_path () :
    export_data_storage_location =
  { container_id; root_folder_path }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_resource_group_cost_management_export ?active ?id
    ?timeouts ~name ~recurrence_period_end_date
    ~recurrence_period_start_date ~recurrence_type ~resource_group_id
    ~export_data_options ~export_data_storage_location () :
    azurerm_resource_group_cost_management_export =
  {
    active;
    id;
    name;
    recurrence_period_end_date;
    recurrence_period_start_date;
    recurrence_type;
    resource_group_id;
    export_data_options;
    export_data_storage_location;
    timeouts;
  }

type t = {
  active : bool prop;
  id : string prop;
  name : string prop;
  recurrence_period_end_date : string prop;
  recurrence_period_start_date : string prop;
  recurrence_type : string prop;
  resource_group_id : string prop;
}

let make ?active ?id ?timeouts ~name ~recurrence_period_end_date
    ~recurrence_period_start_date ~recurrence_type ~resource_group_id
    ~export_data_options ~export_data_storage_location __id =
  let __type = "azurerm_resource_group_cost_management_export" in
  let __attrs =
    ({
       active = Prop.computed __type __id "active";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       recurrence_period_end_date =
         Prop.computed __type __id "recurrence_period_end_date";
       recurrence_period_start_date =
         Prop.computed __type __id "recurrence_period_start_date";
       recurrence_type = Prop.computed __type __id "recurrence_type";
       resource_group_id =
         Prop.computed __type __id "resource_group_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_resource_group_cost_management_export
        (azurerm_resource_group_cost_management_export ?active ?id
           ?timeouts ~name ~recurrence_period_end_date
           ~recurrence_period_start_date ~recurrence_type
           ~resource_group_id ~export_data_options
           ~export_data_storage_location ());
    attrs = __attrs;
  }

let register ?tf_module ?active ?id ?timeouts ~name
    ~recurrence_period_end_date ~recurrence_period_start_date
    ~recurrence_type ~resource_group_id ~export_data_options
    ~export_data_storage_location __id =
  let (r : _ Tf_core.resource) =
    make ?active ?id ?timeouts ~name ~recurrence_period_end_date
      ~recurrence_period_start_date ~recurrence_type
      ~resource_group_id ~export_data_options
      ~export_data_storage_location __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

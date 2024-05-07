(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type azurerm_data_factory_integration_runtime_azure = {
  cleanup_enabled : bool prop option; [@option]
  compute_type : string prop option; [@option]
  core_count : float prop option; [@option]
  data_factory_id : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  time_to_live_min : float prop option; [@option]
  virtual_network_enabled : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_data_factory_integration_runtime_azure) -> ()

let yojson_of_azurerm_data_factory_integration_runtime_azure =
  (function
   | {
       cleanup_enabled = v_cleanup_enabled;
       compute_type = v_compute_type;
       core_count = v_core_count;
       data_factory_id = v_data_factory_id;
       description = v_description;
       id = v_id;
       location = v_location;
       name = v_name;
       time_to_live_min = v_time_to_live_min;
       virtual_network_enabled = v_virtual_network_enabled;
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
         match v_virtual_network_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "virtual_network_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_time_to_live_min with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "time_to_live_min", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_factory_id
         in
         ("data_factory_id", arg) :: bnds
       in
       let bnds =
         match v_core_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "core_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compute_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compute_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cleanup_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cleanup_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_data_factory_integration_runtime_azure ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_data_factory_integration_runtime_azure

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_integration_runtime_azure ?cleanup_enabled
    ?compute_type ?core_count ?description ?id ?time_to_live_min
    ?virtual_network_enabled ?timeouts ~data_factory_id ~location
    ~name () : azurerm_data_factory_integration_runtime_azure =
  {
    cleanup_enabled;
    compute_type;
    core_count;
    data_factory_id;
    description;
    id;
    location;
    name;
    time_to_live_min;
    virtual_network_enabled;
    timeouts;
  }

type t = {
  tf_name : string;
  cleanup_enabled : bool prop;
  compute_type : string prop;
  core_count : float prop;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  time_to_live_min : float prop;
  virtual_network_enabled : bool prop;
}

let make ?cleanup_enabled ?compute_type ?core_count ?description ?id
    ?time_to_live_min ?virtual_network_enabled ?timeouts
    ~data_factory_id ~location ~name __id =
  let __type = "azurerm_data_factory_integration_runtime_azure" in
  let __attrs =
    ({
       tf_name = __id;
       cleanup_enabled = Prop.computed __type __id "cleanup_enabled";
       compute_type = Prop.computed __type __id "compute_type";
       core_count = Prop.computed __type __id "core_count";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       time_to_live_min =
         Prop.computed __type __id "time_to_live_min";
       virtual_network_enabled =
         Prop.computed __type __id "virtual_network_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_integration_runtime_azure
        (azurerm_data_factory_integration_runtime_azure
           ?cleanup_enabled ?compute_type ?core_count ?description
           ?id ?time_to_live_min ?virtual_network_enabled ?timeouts
           ~data_factory_id ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?cleanup_enabled ?compute_type ?core_count
    ?description ?id ?time_to_live_min ?virtual_network_enabled
    ?timeouts ~data_factory_id ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?cleanup_enabled ?compute_type ?core_count ?description ?id
      ?time_to_live_min ?virtual_network_enabled ?timeouts
      ~data_factory_id ~location ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

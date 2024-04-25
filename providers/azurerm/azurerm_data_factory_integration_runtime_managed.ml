(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type catalog_info = {
  administrator_login : string prop option; [@option]
  administrator_password : string prop option; [@option]
  pricing_tier : string prop option; [@option]
  server_endpoint : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : catalog_info) -> ()

let yojson_of_catalog_info =
  (function
   | {
       administrator_login = v_administrator_login;
       administrator_password = v_administrator_password;
       pricing_tier = v_pricing_tier;
       server_endpoint = v_server_endpoint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_server_endpoint
         in
         ("server_endpoint", arg) :: bnds
       in
       let bnds =
         match v_pricing_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pricing_tier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_administrator_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "administrator_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_administrator_login with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "administrator_login", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : catalog_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_catalog_info

[@@@deriving.end]

type custom_setup_script = {
  blob_container_uri : string prop;
  sas_token : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_setup_script) -> ()

let yojson_of_custom_setup_script =
  (function
   | {
       blob_container_uri = v_blob_container_uri;
       sas_token = v_sas_token;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sas_token in
         ("sas_token", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_blob_container_uri
         in
         ("blob_container_uri", arg) :: bnds
       in
       `Assoc bnds
    : custom_setup_script -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_setup_script

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

type vnet_integration = {
  subnet_name : string prop;
  vnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vnet_integration) -> ()

let yojson_of_vnet_integration =
  (function
   | { subnet_name = v_subnet_name; vnet_id = v_vnet_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vnet_id in
         ("vnet_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_name in
         ("subnet_name", arg) :: bnds
       in
       `Assoc bnds
    : vnet_integration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vnet_integration

[@@@deriving.end]

type azurerm_data_factory_integration_runtime_managed = {
  credential_name : string prop option; [@option]
  data_factory_id : string prop;
  description : string prop option; [@option]
  edition : string prop option; [@option]
  id : string prop option; [@option]
  license_type : string prop option; [@option]
  location : string prop;
  max_parallel_executions_per_node : float prop option; [@option]
  name : string prop;
  node_size : string prop;
  number_of_nodes : float prop option; [@option]
  catalog_info : catalog_info list;
  custom_setup_script : custom_setup_script list;
  timeouts : timeouts option;
  vnet_integration : vnet_integration list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_data_factory_integration_runtime_managed) -> ()

let yojson_of_azurerm_data_factory_integration_runtime_managed =
  (function
   | {
       credential_name = v_credential_name;
       data_factory_id = v_data_factory_id;
       description = v_description;
       edition = v_edition;
       id = v_id;
       license_type = v_license_type;
       location = v_location;
       max_parallel_executions_per_node =
         v_max_parallel_executions_per_node;
       name = v_name;
       node_size = v_node_size;
       number_of_nodes = v_number_of_nodes;
       catalog_info = v_catalog_info;
       custom_setup_script = v_custom_setup_script;
       timeouts = v_timeouts;
       vnet_integration = v_vnet_integration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_vnet_integration
             v_vnet_integration
         in
         ("vnet_integration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_custom_setup_script
             v_custom_setup_script
         in
         ("custom_setup_script", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_catalog_info v_catalog_info
         in
         ("catalog_info", arg) :: bnds
       in
       let bnds =
         match v_number_of_nodes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "number_of_nodes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_node_size in
         ("node_size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_max_parallel_executions_per_node with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_parallel_executions_per_node", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_license_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "license_type", arg in
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
         match v_edition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "edition", arg in
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
         match v_credential_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "credential_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_data_factory_integration_runtime_managed ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_data_factory_integration_runtime_managed

[@@@deriving.end]

let catalog_info ?administrator_login ?administrator_password
    ?pricing_tier ~server_endpoint () : catalog_info =
  {
    administrator_login;
    administrator_password;
    pricing_tier;
    server_endpoint;
  }

let custom_setup_script ~blob_container_uri ~sas_token () :
    custom_setup_script =
  { blob_container_uri; sas_token }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let vnet_integration ~subnet_name ~vnet_id () : vnet_integration =
  { subnet_name; vnet_id }

let azurerm_data_factory_integration_runtime_managed ?credential_name
    ?description ?edition ?id ?license_type
    ?max_parallel_executions_per_node ?number_of_nodes
    ?(catalog_info = []) ?(custom_setup_script = []) ?timeouts
    ?(vnet_integration = []) ~data_factory_id ~location ~name
    ~node_size () : azurerm_data_factory_integration_runtime_managed
    =
  {
    credential_name;
    data_factory_id;
    description;
    edition;
    id;
    license_type;
    location;
    max_parallel_executions_per_node;
    name;
    node_size;
    number_of_nodes;
    catalog_info;
    custom_setup_script;
    timeouts;
    vnet_integration;
  }

type t = {
  credential_name : string prop;
  data_factory_id : string prop;
  description : string prop;
  edition : string prop;
  id : string prop;
  license_type : string prop;
  location : string prop;
  max_parallel_executions_per_node : float prop;
  name : string prop;
  node_size : string prop;
  number_of_nodes : float prop;
}

let make ?credential_name ?description ?edition ?id ?license_type
    ?max_parallel_executions_per_node ?number_of_nodes
    ?(catalog_info = []) ?(custom_setup_script = []) ?timeouts
    ?(vnet_integration = []) ~data_factory_id ~location ~name
    ~node_size __id =
  let __type = "azurerm_data_factory_integration_runtime_managed" in
  let __attrs =
    ({
       credential_name = Prop.computed __type __id "credential_name";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       description = Prop.computed __type __id "description";
       edition = Prop.computed __type __id "edition";
       id = Prop.computed __type __id "id";
       license_type = Prop.computed __type __id "license_type";
       location = Prop.computed __type __id "location";
       max_parallel_executions_per_node =
         Prop.computed __type __id "max_parallel_executions_per_node";
       name = Prop.computed __type __id "name";
       node_size = Prop.computed __type __id "node_size";
       number_of_nodes = Prop.computed __type __id "number_of_nodes";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_integration_runtime_managed
        (azurerm_data_factory_integration_runtime_managed
           ?credential_name ?description ?edition ?id ?license_type
           ?max_parallel_executions_per_node ?number_of_nodes
           ~catalog_info ~custom_setup_script ?timeouts
           ~vnet_integration ~data_factory_id ~location ~name
           ~node_size ());
    attrs = __attrs;
  }

let register ?tf_module ?credential_name ?description ?edition ?id
    ?license_type ?max_parallel_executions_per_node ?number_of_nodes
    ?(catalog_info = []) ?(custom_setup_script = []) ?timeouts
    ?(vnet_integration = []) ~data_factory_id ~location ~name
    ~node_size __id =
  let (r : _ Tf_core.resource) =
    make ?credential_name ?description ?edition ?id ?license_type
      ?max_parallel_executions_per_node ?number_of_nodes
      ~catalog_info ~custom_setup_script ?timeouts ~vnet_integration
      ~data_factory_id ~location ~name ~node_size __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

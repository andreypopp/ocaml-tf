(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type catalog_info = {
  administrator_login : string prop option; [@option]
      (** administrator_login *)
  administrator_password : string prop option; [@option]
      (** administrator_password *)
  dual_standby_pair_name : string prop option; [@option]
      (** dual_standby_pair_name *)
  elastic_pool_name : string prop option; [@option]
      (** elastic_pool_name *)
  pricing_tier : string prop option; [@option]  (** pricing_tier *)
  server_endpoint : string prop;  (** server_endpoint *)
}
[@@deriving yojson_of]
(** catalog_info *)

type custom_setup_script = {
  blob_container_uri : string prop;  (** blob_container_uri *)
  sas_token : string prop;  (** sas_token *)
}
[@@deriving yojson_of]
(** custom_setup_script *)

type express_custom_setup__command_key__key_vault_password = {
  linked_service_name : string prop;  (** linked_service_name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  secret_name : string prop;  (** secret_name *)
  secret_version : string prop option; [@option]
      (** secret_version *)
}
[@@deriving yojson_of]
(** express_custom_setup__command_key__key_vault_password *)

type express_custom_setup__command_key = {
  password : string prop option; [@option]  (** password *)
  target_name : string prop;  (** target_name *)
  user_name : string prop;  (** user_name *)
  key_vault_password :
    express_custom_setup__command_key__key_vault_password list;
}
[@@deriving yojson_of]
(** express_custom_setup__command_key *)

type express_custom_setup__component__key_vault_license = {
  linked_service_name : string prop;  (** linked_service_name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  secret_name : string prop;  (** secret_name *)
  secret_version : string prop option; [@option]
      (** secret_version *)
}
[@@deriving yojson_of]
(** express_custom_setup__component__key_vault_license *)

type express_custom_setup__component = {
  license : string prop option; [@option]  (** license *)
  name : string prop;  (** name *)
  key_vault_license :
    express_custom_setup__component__key_vault_license list;
}
[@@deriving yojson_of]
(** express_custom_setup__component *)

type express_custom_setup = {
  environment : (string * string prop) list option; [@option]
      (** environment *)
  powershell_version : string prop option; [@option]
      (** powershell_version *)
  command_key : express_custom_setup__command_key list;
  component : express_custom_setup__component list;
}
[@@deriving yojson_of]
(** express_custom_setup *)

type express_vnet_integration = {
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** express_vnet_integration *)

type package_store = {
  linked_service_name : string prop;  (** linked_service_name *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** package_store *)

type proxy = {
  path : string prop option; [@option]  (** path *)
  self_hosted_integration_runtime_name : string prop;
      (** self_hosted_integration_runtime_name *)
  staging_storage_linked_service_name : string prop;
      (** staging_storage_linked_service_name *)
}
[@@deriving yojson_of]
(** proxy *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type vnet_integration = {
  public_ips : string prop list option; [@option]  (** public_ips *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  subnet_name : string prop option; [@option]  (** subnet_name *)
  vnet_id : string prop option; [@option]  (** vnet_id *)
}
[@@deriving yojson_of]
(** vnet_integration *)

type azurerm_data_factory_integration_runtime_azure_ssis = {
  credential_name : string prop option; [@option]
      (** credential_name *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  edition : string prop option; [@option]  (** edition *)
  id : string prop option; [@option]  (** id *)
  license_type : string prop option; [@option]  (** license_type *)
  location : string prop;  (** location *)
  max_parallel_executions_per_node : float prop option; [@option]
      (** max_parallel_executions_per_node *)
  name : string prop;  (** name *)
  node_size : string prop;  (** node_size *)
  number_of_nodes : float prop option; [@option]
      (** number_of_nodes *)
  catalog_info : catalog_info list;
  custom_setup_script : custom_setup_script list;
  express_custom_setup : express_custom_setup list;
  express_vnet_integration : express_vnet_integration list;
  package_store : package_store list;
  proxy : proxy list;
  timeouts : timeouts option;
  vnet_integration : vnet_integration list;
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_azure_ssis *)

let catalog_info ?administrator_login ?administrator_password
    ?dual_standby_pair_name ?elastic_pool_name ?pricing_tier
    ~server_endpoint () : catalog_info =
  {
    administrator_login;
    administrator_password;
    dual_standby_pair_name;
    elastic_pool_name;
    pricing_tier;
    server_endpoint;
  }

let custom_setup_script ~blob_container_uri ~sas_token () :
    custom_setup_script =
  { blob_container_uri; sas_token }

let express_custom_setup__command_key__key_vault_password ?parameters
    ?secret_version ~linked_service_name ~secret_name () :
    express_custom_setup__command_key__key_vault_password =
  { linked_service_name; parameters; secret_name; secret_version }

let express_custom_setup__command_key ?password ~target_name
    ~user_name ~key_vault_password () :
    express_custom_setup__command_key =
  { password; target_name; user_name; key_vault_password }

let express_custom_setup__component__key_vault_license ?parameters
    ?secret_version ~linked_service_name ~secret_name () :
    express_custom_setup__component__key_vault_license =
  { linked_service_name; parameters; secret_name; secret_version }

let express_custom_setup__component ?license ~name ~key_vault_license
    () : express_custom_setup__component =
  { license; name; key_vault_license }

let express_custom_setup ?environment ?powershell_version
    ~command_key ~component () : express_custom_setup =
  { environment; powershell_version; command_key; component }

let express_vnet_integration ~subnet_id () : express_vnet_integration
    =
  { subnet_id }

let package_store ~linked_service_name ~name () : package_store =
  { linked_service_name; name }

let proxy ?path ~self_hosted_integration_runtime_name
    ~staging_storage_linked_service_name () : proxy =
  {
    path;
    self_hosted_integration_runtime_name;
    staging_storage_linked_service_name;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let vnet_integration ?public_ips ?subnet_id ?subnet_name ?vnet_id ()
    : vnet_integration =
  { public_ips; subnet_id; subnet_name; vnet_id }

let azurerm_data_factory_integration_runtime_azure_ssis
    ?credential_name ?description ?edition ?id ?license_type
    ?max_parallel_executions_per_node ?number_of_nodes ?timeouts
    ~data_factory_id ~location ~name ~node_size ~catalog_info
    ~custom_setup_script ~express_custom_setup
    ~express_vnet_integration ~package_store ~proxy ~vnet_integration
    () : azurerm_data_factory_integration_runtime_azure_ssis =
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
    express_custom_setup;
    express_vnet_integration;
    package_store;
    proxy;
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
    ?max_parallel_executions_per_node ?number_of_nodes ?timeouts
    ~data_factory_id ~location ~name ~node_size ~catalog_info
    ~custom_setup_script ~express_custom_setup
    ~express_vnet_integration ~package_store ~proxy ~vnet_integration
    __id =
  let __type =
    "azurerm_data_factory_integration_runtime_azure_ssis"
  in
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
      yojson_of_azurerm_data_factory_integration_runtime_azure_ssis
        (azurerm_data_factory_integration_runtime_azure_ssis
           ?credential_name ?description ?edition ?id ?license_type
           ?max_parallel_executions_per_node ?number_of_nodes
           ?timeouts ~data_factory_id ~location ~name ~node_size
           ~catalog_info ~custom_setup_script ~express_custom_setup
           ~express_vnet_integration ~package_store ~proxy
           ~vnet_integration ());
    attrs = __attrs;
  }

let register ?tf_module ?credential_name ?description ?edition ?id
    ?license_type ?max_parallel_executions_per_node ?number_of_nodes
    ?timeouts ~data_factory_id ~location ~name ~node_size
    ~catalog_info ~custom_setup_script ~express_custom_setup
    ~express_vnet_integration ~package_store ~proxy ~vnet_integration
    __id =
  let (r : _ Tf_core.resource) =
    make ?credential_name ?description ?edition ?id ?license_type
      ?max_parallel_executions_per_node ?number_of_nodes ?timeouts
      ~data_factory_id ~location ~name ~node_size ~catalog_info
      ~custom_setup_script ~express_custom_setup
      ~express_vnet_integration ~package_store ~proxy
      ~vnet_integration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

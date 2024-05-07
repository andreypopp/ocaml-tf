(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = {
  identity_ids : string prop list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_identity_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identity_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

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

type azurerm_mssql_managed_instance = {
  administrator_login : string prop;
  administrator_login_password : string prop;
  collation : string prop option; [@option]
  dns_zone_partner_id : string prop option; [@option]
  id : string prop option; [@option]
  license_type : string prop;
  location : string prop;
  maintenance_configuration_name : string prop option; [@option]
  minimum_tls_version : string prop option; [@option]
  name : string prop;
  proxy_override : string prop option; [@option]
  public_data_endpoint_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  sku_name : string prop;
  storage_account_type : string prop option; [@option]
  storage_size_in_gb : float prop;
  subnet_id : string prop;
  tags : (string * string prop) list option; [@option]
  timezone_id : string prop option; [@option]
  vcores : float prop;
  zone_redundant_enabled : bool prop option; [@option]
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_mssql_managed_instance) -> ()

let yojson_of_azurerm_mssql_managed_instance =
  (function
   | {
       administrator_login = v_administrator_login;
       administrator_login_password = v_administrator_login_password;
       collation = v_collation;
       dns_zone_partner_id = v_dns_zone_partner_id;
       id = v_id;
       license_type = v_license_type;
       location = v_location;
       maintenance_configuration_name =
         v_maintenance_configuration_name;
       minimum_tls_version = v_minimum_tls_version;
       name = v_name;
       proxy_override = v_proxy_override;
       public_data_endpoint_enabled = v_public_data_endpoint_enabled;
       resource_group_name = v_resource_group_name;
       sku_name = v_sku_name;
       storage_account_type = v_storage_account_type;
       storage_size_in_gb = v_storage_size_in_gb;
       subnet_id = v_subnet_id;
       tags = v_tags;
       timezone_id = v_timezone_id;
       vcores = v_vcores;
       zone_redundant_enabled = v_zone_redundant_enabled;
       identity = v_identity;
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
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         match v_zone_redundant_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "zone_redundant_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_vcores in
         ("vcores", arg) :: bnds
       in
       let bnds =
         match v_timezone_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timezone_id", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_storage_size_in_gb
         in
         ("storage_size_in_gb", arg) :: bnds
       in
       let bnds =
         match v_storage_account_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku_name in
         ("sku_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_public_data_endpoint_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "public_data_endpoint_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_proxy_override with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "proxy_override", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_minimum_tls_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "minimum_tls_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maintenance_configuration_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "maintenance_configuration_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_license_type in
         ("license_type", arg) :: bnds
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
         match v_dns_zone_partner_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dns_zone_partner_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_collation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "collation", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_administrator_login_password
         in
         ("administrator_login_password", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_administrator_login
         in
         ("administrator_login", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_mssql_managed_instance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mssql_managed_instance

[@@@deriving.end]

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mssql_managed_instance ?collation ?dns_zone_partner_id
    ?id ?maintenance_configuration_name ?minimum_tls_version
    ?proxy_override ?public_data_endpoint_enabled
    ?storage_account_type ?tags ?timezone_id ?zone_redundant_enabled
    ?(identity = []) ?timeouts ~administrator_login
    ~administrator_login_password ~license_type ~location ~name
    ~resource_group_name ~sku_name ~storage_size_in_gb ~subnet_id
    ~vcores () : azurerm_mssql_managed_instance =
  {
    administrator_login;
    administrator_login_password;
    collation;
    dns_zone_partner_id;
    id;
    license_type;
    location;
    maintenance_configuration_name;
    minimum_tls_version;
    name;
    proxy_override;
    public_data_endpoint_enabled;
    resource_group_name;
    sku_name;
    storage_account_type;
    storage_size_in_gb;
    subnet_id;
    tags;
    timezone_id;
    vcores;
    zone_redundant_enabled;
    identity;
    timeouts;
  }

type t = {
  tf_name : string;
  administrator_login : string prop;
  administrator_login_password : string prop;
  collation : string prop;
  dns_zone : string prop;
  dns_zone_partner_id : string prop;
  fqdn : string prop;
  id : string prop;
  license_type : string prop;
  location : string prop;
  maintenance_configuration_name : string prop;
  minimum_tls_version : string prop;
  name : string prop;
  proxy_override : string prop;
  public_data_endpoint_enabled : bool prop;
  resource_group_name : string prop;
  sku_name : string prop;
  storage_account_type : string prop;
  storage_size_in_gb : float prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  timezone_id : string prop;
  vcores : float prop;
  zone_redundant_enabled : bool prop;
}

let make ?collation ?dns_zone_partner_id ?id
    ?maintenance_configuration_name ?minimum_tls_version
    ?proxy_override ?public_data_endpoint_enabled
    ?storage_account_type ?tags ?timezone_id ?zone_redundant_enabled
    ?(identity = []) ?timeouts ~administrator_login
    ~administrator_login_password ~license_type ~location ~name
    ~resource_group_name ~sku_name ~storage_size_in_gb ~subnet_id
    ~vcores __id =
  let __type = "azurerm_mssql_managed_instance" in
  let __attrs =
    ({
       tf_name = __id;
       administrator_login =
         Prop.computed __type __id "administrator_login";
       administrator_login_password =
         Prop.computed __type __id "administrator_login_password";
       collation = Prop.computed __type __id "collation";
       dns_zone = Prop.computed __type __id "dns_zone";
       dns_zone_partner_id =
         Prop.computed __type __id "dns_zone_partner_id";
       fqdn = Prop.computed __type __id "fqdn";
       id = Prop.computed __type __id "id";
       license_type = Prop.computed __type __id "license_type";
       location = Prop.computed __type __id "location";
       maintenance_configuration_name =
         Prop.computed __type __id "maintenance_configuration_name";
       minimum_tls_version =
         Prop.computed __type __id "minimum_tls_version";
       name = Prop.computed __type __id "name";
       proxy_override = Prop.computed __type __id "proxy_override";
       public_data_endpoint_enabled =
         Prop.computed __type __id "public_data_endpoint_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       storage_account_type =
         Prop.computed __type __id "storage_account_type";
       storage_size_in_gb =
         Prop.computed __type __id "storage_size_in_gb";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
       timezone_id = Prop.computed __type __id "timezone_id";
       vcores = Prop.computed __type __id "vcores";
       zone_redundant_enabled =
         Prop.computed __type __id "zone_redundant_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mssql_managed_instance
        (azurerm_mssql_managed_instance ?collation
           ?dns_zone_partner_id ?id ?maintenance_configuration_name
           ?minimum_tls_version ?proxy_override
           ?public_data_endpoint_enabled ?storage_account_type ?tags
           ?timezone_id ?zone_redundant_enabled ~identity ?timeouts
           ~administrator_login ~administrator_login_password
           ~license_type ~location ~name ~resource_group_name
           ~sku_name ~storage_size_in_gb ~subnet_id ~vcores ());
    attrs = __attrs;
  }

let register ?tf_module ?collation ?dns_zone_partner_id ?id
    ?maintenance_configuration_name ?minimum_tls_version
    ?proxy_override ?public_data_endpoint_enabled
    ?storage_account_type ?tags ?timezone_id ?zone_redundant_enabled
    ?(identity = []) ?timeouts ~administrator_login
    ~administrator_login_password ~license_type ~location ~name
    ~resource_group_name ~sku_name ~storage_size_in_gb ~subnet_id
    ~vcores __id =
  let (r : _ Tf_core.resource) =
    make ?collation ?dns_zone_partner_id ?id
      ?maintenance_configuration_name ?minimum_tls_version
      ?proxy_override ?public_data_endpoint_enabled
      ?storage_account_type ?tags ?timezone_id
      ?zone_redundant_enabled ~identity ?timeouts
      ~administrator_login ~administrator_login_password
      ~license_type ~location ~name ~resource_group_name ~sku_name
      ~storage_size_in_gb ~subnet_id ~vcores __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

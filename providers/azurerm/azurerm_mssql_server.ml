(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type azuread_administrator = {
  azuread_authentication_only : bool prop option; [@option]
  login_username : string prop;
  object_id : string prop;
  tenant_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azuread_administrator) -> ()

let yojson_of_azuread_administrator =
  (function
   | {
       azuread_authentication_only = v_azuread_authentication_only;
       login_username = v_login_username;
       object_id = v_object_id;
       tenant_id = v_tenant_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tenant_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tenant_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_id in
         ("object_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_login_username
         in
         ("login_username", arg) :: bnds
       in
       let bnds =
         match v_azuread_authentication_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "azuread_authentication_only", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azuread_administrator -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azuread_administrator

[@@@deriving.end]

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

type azurerm_mssql_server = {
  administrator_login : string prop option; [@option]
  administrator_login_password : string prop option; [@option]
  connection_policy : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  minimum_tls_version : string prop option; [@option]
  name : string prop;
  outbound_network_restriction_enabled : bool prop option; [@option]
  primary_user_assigned_identity_id : string prop option; [@option]
  public_network_access_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  transparent_data_encryption_key_vault_key_id : string prop option;
      [@option]
  version : string prop;
  azuread_administrator : azuread_administrator list;
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_mssql_server) -> ()

let yojson_of_azurerm_mssql_server =
  (function
   | {
       administrator_login = v_administrator_login;
       administrator_login_password = v_administrator_login_password;
       connection_policy = v_connection_policy;
       id = v_id;
       location = v_location;
       minimum_tls_version = v_minimum_tls_version;
       name = v_name;
       outbound_network_restriction_enabled =
         v_outbound_network_restriction_enabled;
       primary_user_assigned_identity_id =
         v_primary_user_assigned_identity_id;
       public_network_access_enabled =
         v_public_network_access_enabled;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       transparent_data_encryption_key_vault_key_id =
         v_transparent_data_encryption_key_vault_key_id;
       version = v_version;
       azuread_administrator = v_azuread_administrator;
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
         let arg =
           yojson_of_list yojson_of_azuread_administrator
             v_azuread_administrator
         in
         ("azuread_administrator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         match v_transparent_data_encryption_key_vault_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "transparent_data_encryption_key_vault_key_id", arg
             in
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
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_public_network_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "public_network_access_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_primary_user_assigned_identity_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "primary_user_assigned_identity_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_outbound_network_restriction_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "outbound_network_restriction_enabled", arg in
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
         match v_connection_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_administrator_login_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "administrator_login_password", arg in
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
    : azurerm_mssql_server -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mssql_server

[@@@deriving.end]

let azuread_administrator ?azuread_authentication_only ?tenant_id
    ~login_username ~object_id () : azuread_administrator =
  {
    azuread_authentication_only;
    login_username;
    object_id;
    tenant_id;
  }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mssql_server ?administrator_login
    ?administrator_login_password ?connection_policy ?id
    ?minimum_tls_version ?outbound_network_restriction_enabled
    ?primary_user_assigned_identity_id ?public_network_access_enabled
    ?tags ?transparent_data_encryption_key_vault_key_id
    ?(azuread_administrator = []) ?(identity = []) ?timeouts
    ~location ~name ~resource_group_name ~version () :
    azurerm_mssql_server =
  {
    administrator_login;
    administrator_login_password;
    connection_policy;
    id;
    location;
    minimum_tls_version;
    name;
    outbound_network_restriction_enabled;
    primary_user_assigned_identity_id;
    public_network_access_enabled;
    resource_group_name;
    tags;
    transparent_data_encryption_key_vault_key_id;
    version;
    azuread_administrator;
    identity;
    timeouts;
  }

type t = {
  administrator_login : string prop;
  administrator_login_password : string prop;
  connection_policy : string prop;
  fully_qualified_domain_name : string prop;
  id : string prop;
  location : string prop;
  minimum_tls_version : string prop;
  name : string prop;
  outbound_network_restriction_enabled : bool prop;
  primary_user_assigned_identity_id : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  restorable_dropped_database_ids : string list prop;
  tags : (string * string) list prop;
  transparent_data_encryption_key_vault_key_id : string prop;
  version : string prop;
}

let make ?administrator_login ?administrator_login_password
    ?connection_policy ?id ?minimum_tls_version
    ?outbound_network_restriction_enabled
    ?primary_user_assigned_identity_id ?public_network_access_enabled
    ?tags ?transparent_data_encryption_key_vault_key_id
    ?(azuread_administrator = []) ?(identity = []) ?timeouts
    ~location ~name ~resource_group_name ~version __id =
  let __type = "azurerm_mssql_server" in
  let __attrs =
    ({
       administrator_login =
         Prop.computed __type __id "administrator_login";
       administrator_login_password =
         Prop.computed __type __id "administrator_login_password";
       connection_policy =
         Prop.computed __type __id "connection_policy";
       fully_qualified_domain_name =
         Prop.computed __type __id "fully_qualified_domain_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       minimum_tls_version =
         Prop.computed __type __id "minimum_tls_version";
       name = Prop.computed __type __id "name";
       outbound_network_restriction_enabled =
         Prop.computed __type __id
           "outbound_network_restriction_enabled";
       primary_user_assigned_identity_id =
         Prop.computed __type __id
           "primary_user_assigned_identity_id";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       restorable_dropped_database_ids =
         Prop.computed __type __id "restorable_dropped_database_ids";
       tags = Prop.computed __type __id "tags";
       transparent_data_encryption_key_vault_key_id =
         Prop.computed __type __id
           "transparent_data_encryption_key_vault_key_id";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mssql_server
        (azurerm_mssql_server ?administrator_login
           ?administrator_login_password ?connection_policy ?id
           ?minimum_tls_version ?outbound_network_restriction_enabled
           ?primary_user_assigned_identity_id
           ?public_network_access_enabled ?tags
           ?transparent_data_encryption_key_vault_key_id
           ~azuread_administrator ~identity ?timeouts ~location ~name
           ~resource_group_name ~version ());
    attrs = __attrs;
  }

let register ?tf_module ?administrator_login
    ?administrator_login_password ?connection_policy ?id
    ?minimum_tls_version ?outbound_network_restriction_enabled
    ?primary_user_assigned_identity_id ?public_network_access_enabled
    ?tags ?transparent_data_encryption_key_vault_key_id
    ?(azuread_administrator = []) ?(identity = []) ?timeouts
    ~location ~name ~resource_group_name ~version __id =
  let (r : _ Tf_core.resource) =
    make ?administrator_login ?administrator_login_password
      ?connection_policy ?id ?minimum_tls_version
      ?outbound_network_restriction_enabled
      ?primary_user_assigned_identity_id
      ?public_network_access_enabled ?tags
      ?transparent_data_encryption_key_vault_key_id
      ~azuread_administrator ~identity ?timeouts ~location ~name
      ~resource_group_name ~version __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

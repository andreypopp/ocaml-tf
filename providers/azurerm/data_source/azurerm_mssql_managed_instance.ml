(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type identity = {
  identity_ids : string prop list;
  principal_id : string prop;
  tenant_id : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | {
       identity_ids = v_identity_ids;
       principal_id = v_principal_id;
       tenant_id = v_tenant_id;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_identity_ids
         in
         ("identity_ids", arg) :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type azurerm_mssql_managed_instance = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_mssql_managed_instance) -> ()

let yojson_of_azurerm_mssql_managed_instance =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
       `Assoc bnds
    : azurerm_mssql_managed_instance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mssql_managed_instance

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_mssql_managed_instance ?id ?timeouts ~name
    ~resource_group_name () : azurerm_mssql_managed_instance =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  administrator_login : string prop;
  collation : string prop;
  customer_managed_key_id : string prop;
  dns_zone : string prop;
  dns_zone_partner_id : string prop;
  fqdn : string prop;
  id : string prop;
  identity : identity list prop;
  license_type : string prop;
  location : string prop;
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
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_mssql_managed_instance" in
  let __attrs =
    ({
       tf_name = __id;
       administrator_login =
         Prop.computed __type __id "administrator_login";
       collation = Prop.computed __type __id "collation";
       customer_managed_key_id =
         Prop.computed __type __id "customer_managed_key_id";
       dns_zone = Prop.computed __type __id "dns_zone";
       dns_zone_partner_id =
         Prop.computed __type __id "dns_zone_partner_id";
       fqdn = Prop.computed __type __id "fqdn";
       id = Prop.computed __type __id "id";
       identity = Prop.computed __type __id "identity";
       license_type = Prop.computed __type __id "license_type";
       location = Prop.computed __type __id "location";
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
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mssql_managed_instance
        (azurerm_mssql_managed_instance ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

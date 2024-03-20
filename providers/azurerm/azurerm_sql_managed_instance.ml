(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = { type_ : string prop [@key "type"]  (** type *) }
[@@deriving yojson_of]
(** identity *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_sql_managed_instance = {
  administrator_login : string prop;  (** administrator_login *)
  administrator_login_password : string prop;
      (** administrator_login_password *)
  collation : string prop option; [@option]  (** collation *)
  dns_zone_partner_id : string prop option; [@option]
      (** dns_zone_partner_id *)
  id : string prop option; [@option]  (** id *)
  license_type : string prop;  (** license_type *)
  location : string prop;  (** location *)
  minimum_tls_version : string prop option; [@option]
      (** minimum_tls_version *)
  name : string prop;  (** name *)
  proxy_override : string prop option; [@option]
      (** proxy_override *)
  public_data_endpoint_enabled : bool prop option; [@option]
      (** public_data_endpoint_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  storage_account_type : string prop option; [@option]
      (** storage_account_type *)
  storage_size_in_gb : float prop;  (** storage_size_in_gb *)
  subnet_id : string prop;  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timezone_id : string prop option; [@option]  (** timezone_id *)
  vcores : float prop;  (** vcores *)
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sql_managed_instance *)

let identity ~type_ () : identity = { type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sql_managed_instance ?collation ?dns_zone_partner_id ?id
    ?minimum_tls_version ?proxy_override
    ?public_data_endpoint_enabled ?storage_account_type ?tags
    ?timezone_id ?timeouts ~administrator_login
    ~administrator_login_password ~license_type ~location ~name
    ~resource_group_name ~sku_name ~storage_size_in_gb ~subnet_id
    ~vcores ~identity () : azurerm_sql_managed_instance =
  {
    administrator_login;
    administrator_login_password;
    collation;
    dns_zone_partner_id;
    id;
    license_type;
    location;
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
    identity;
    timeouts;
  }

type t = {
  administrator_login : string prop;
  administrator_login_password : string prop;
  collation : string prop;
  dns_zone_partner_id : string prop;
  fqdn : string prop;
  id : string prop;
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

let make ?collation ?dns_zone_partner_id ?id ?minimum_tls_version
    ?proxy_override ?public_data_endpoint_enabled
    ?storage_account_type ?tags ?timezone_id ?timeouts
    ~administrator_login ~administrator_login_password ~license_type
    ~location ~name ~resource_group_name ~sku_name
    ~storage_size_in_gb ~subnet_id ~vcores ~identity __id =
  let __type = "azurerm_sql_managed_instance" in
  let __attrs =
    ({
       administrator_login =
         Prop.computed __type __id "administrator_login";
       administrator_login_password =
         Prop.computed __type __id "administrator_login_password";
       collation = Prop.computed __type __id "collation";
       dns_zone_partner_id =
         Prop.computed __type __id "dns_zone_partner_id";
       fqdn = Prop.computed __type __id "fqdn";
       id = Prop.computed __type __id "id";
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
      yojson_of_azurerm_sql_managed_instance
        (azurerm_sql_managed_instance ?collation ?dns_zone_partner_id
           ?id ?minimum_tls_version ?proxy_override
           ?public_data_endpoint_enabled ?storage_account_type ?tags
           ?timezone_id ?timeouts ~administrator_login
           ~administrator_login_password ~license_type ~location
           ~name ~resource_group_name ~sku_name ~storage_size_in_gb
           ~subnet_id ~vcores ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?collation ?dns_zone_partner_id ?id
    ?minimum_tls_version ?proxy_override
    ?public_data_endpoint_enabled ?storage_account_type ?tags
    ?timezone_id ?timeouts ~administrator_login
    ~administrator_login_password ~license_type ~location ~name
    ~resource_group_name ~sku_name ~storage_size_in_gb ~subnet_id
    ~vcores ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?collation ?dns_zone_partner_id ?id ?minimum_tls_version
      ?proxy_override ?public_data_endpoint_enabled
      ?storage_account_type ?tags ?timezone_id ?timeouts
      ~administrator_login ~administrator_login_password
      ~license_type ~location ~name ~resource_group_name ~sku_name
      ~storage_size_in_gb ~subnet_id ~vcores ~identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

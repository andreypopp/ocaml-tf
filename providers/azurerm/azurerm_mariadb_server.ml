(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_mariadb_server = {
  administrator_login : string prop option; [@option]
      (** administrator_login *)
  administrator_login_password : string prop option; [@option]
      (** administrator_login_password *)
  auto_grow_enabled : bool prop option; [@option]
      (** auto_grow_enabled *)
  backup_retention_days : float prop option; [@option]
      (** backup_retention_days *)
  create_mode : string prop option; [@option]  (** create_mode *)
  creation_source_server_id : string prop option; [@option]
      (** creation_source_server_id *)
  geo_redundant_backup_enabled : bool prop option; [@option]
      (** geo_redundant_backup_enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  restore_point_in_time : string prop option; [@option]
      (** restore_point_in_time *)
  sku_name : string prop;  (** sku_name *)
  ssl_enforcement_enabled : bool prop;
      (** ssl_enforcement_enabled *)
  ssl_minimal_tls_version_enforced : string prop option; [@option]
      (** ssl_minimal_tls_version_enforced *)
  storage_mb : float prop option; [@option]  (** storage_mb *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  version : string prop;  (** version *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mariadb_server *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mariadb_server ?administrator_login
    ?administrator_login_password ?auto_grow_enabled
    ?backup_retention_days ?create_mode ?creation_source_server_id
    ?geo_redundant_backup_enabled ?id ?public_network_access_enabled
    ?restore_point_in_time ?ssl_minimal_tls_version_enforced
    ?storage_mb ?tags ?timeouts ~location ~name ~resource_group_name
    ~sku_name ~ssl_enforcement_enabled ~version () :
    azurerm_mariadb_server =
  {
    administrator_login;
    administrator_login_password;
    auto_grow_enabled;
    backup_retention_days;
    create_mode;
    creation_source_server_id;
    geo_redundant_backup_enabled;
    id;
    location;
    name;
    public_network_access_enabled;
    resource_group_name;
    restore_point_in_time;
    sku_name;
    ssl_enforcement_enabled;
    ssl_minimal_tls_version_enforced;
    storage_mb;
    tags;
    version;
    timeouts;
  }

type t = {
  administrator_login : string prop;
  administrator_login_password : string prop;
  auto_grow_enabled : bool prop;
  backup_retention_days : float prop;
  create_mode : string prop;
  creation_source_server_id : string prop;
  fqdn : string prop;
  geo_redundant_backup_enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  restore_point_in_time : string prop;
  sku_name : string prop;
  ssl_enforcement_enabled : bool prop;
  ssl_minimal_tls_version_enforced : string prop;
  storage_mb : float prop;
  tags : (string * string) list prop;
  version : string prop;
}

let make ?administrator_login ?administrator_login_password
    ?auto_grow_enabled ?backup_retention_days ?create_mode
    ?creation_source_server_id ?geo_redundant_backup_enabled ?id
    ?public_network_access_enabled ?restore_point_in_time
    ?ssl_minimal_tls_version_enforced ?storage_mb ?tags ?timeouts
    ~location ~name ~resource_group_name ~sku_name
    ~ssl_enforcement_enabled ~version __id =
  let __type = "azurerm_mariadb_server" in
  let __attrs =
    ({
       administrator_login =
         Prop.computed __type __id "administrator_login";
       administrator_login_password =
         Prop.computed __type __id "administrator_login_password";
       auto_grow_enabled =
         Prop.computed __type __id "auto_grow_enabled";
       backup_retention_days =
         Prop.computed __type __id "backup_retention_days";
       create_mode = Prop.computed __type __id "create_mode";
       creation_source_server_id =
         Prop.computed __type __id "creation_source_server_id";
       fqdn = Prop.computed __type __id "fqdn";
       geo_redundant_backup_enabled =
         Prop.computed __type __id "geo_redundant_backup_enabled";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       restore_point_in_time =
         Prop.computed __type __id "restore_point_in_time";
       sku_name = Prop.computed __type __id "sku_name";
       ssl_enforcement_enabled =
         Prop.computed __type __id "ssl_enforcement_enabled";
       ssl_minimal_tls_version_enforced =
         Prop.computed __type __id "ssl_minimal_tls_version_enforced";
       storage_mb = Prop.computed __type __id "storage_mb";
       tags = Prop.computed __type __id "tags";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mariadb_server
        (azurerm_mariadb_server ?administrator_login
           ?administrator_login_password ?auto_grow_enabled
           ?backup_retention_days ?create_mode
           ?creation_source_server_id ?geo_redundant_backup_enabled
           ?id ?public_network_access_enabled ?restore_point_in_time
           ?ssl_minimal_tls_version_enforced ?storage_mb ?tags
           ?timeouts ~location ~name ~resource_group_name ~sku_name
           ~ssl_enforcement_enabled ~version ());
    attrs = __attrs;
  }

let register ?tf_module ?administrator_login
    ?administrator_login_password ?auto_grow_enabled
    ?backup_retention_days ?create_mode ?creation_source_server_id
    ?geo_redundant_backup_enabled ?id ?public_network_access_enabled
    ?restore_point_in_time ?ssl_minimal_tls_version_enforced
    ?storage_mb ?tags ?timeouts ~location ~name ~resource_group_name
    ~sku_name ~ssl_enforcement_enabled ~version __id =
  let (r : _ Tf_core.resource) =
    make ?administrator_login ?administrator_login_password
      ?auto_grow_enabled ?backup_retention_days ?create_mode
      ?creation_source_server_id ?geo_redundant_backup_enabled ?id
      ?public_network_access_enabled ?restore_point_in_time
      ?ssl_minimal_tls_version_enforced ?storage_mb ?tags ?timeouts
      ~location ~name ~resource_group_name ~sku_name
      ~ssl_enforcement_enabled ~version __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

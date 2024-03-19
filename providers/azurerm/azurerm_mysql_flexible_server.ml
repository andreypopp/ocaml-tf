(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type customer_managed_key = {
  geo_backup_key_vault_key_id : string prop option; [@option]
      (** geo_backup_key_vault_key_id *)
  geo_backup_user_assigned_identity_id : string prop option;
      [@option]
      (** geo_backup_user_assigned_identity_id *)
  key_vault_key_id : string prop option; [@option]
      (** key_vault_key_id *)
  primary_user_assigned_identity_id : string prop option; [@option]
      (** primary_user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** customer_managed_key *)

type high_availability = {
  mode : string prop;  (** mode *)
  standby_availability_zone : string prop option; [@option]
      (** standby_availability_zone *)
}
[@@deriving yojson_of]
(** high_availability *)

type identity = {
  identity_ids : string prop list;  (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type maintenance_window = {
  day_of_week : float prop option; [@option]  (** day_of_week *)
  start_hour : float prop option; [@option]  (** start_hour *)
  start_minute : float prop option; [@option]  (** start_minute *)
}
[@@deriving yojson_of]
(** maintenance_window *)

type storage = {
  auto_grow_enabled : bool prop option; [@option]
      (** auto_grow_enabled *)
  io_scaling_enabled : bool prop option; [@option]
      (** io_scaling_enabled *)
  iops : float prop option; [@option]  (** iops *)
  size_gb : float prop option; [@option]  (** size_gb *)
}
[@@deriving yojson_of]
(** storage *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_mysql_flexible_server = {
  administrator_login : string prop option; [@option]
      (** administrator_login *)
  administrator_password : string prop option; [@option]
      (** administrator_password *)
  backup_retention_days : float prop option; [@option]
      (** backup_retention_days *)
  create_mode : string prop option; [@option]  (** create_mode *)
  delegated_subnet_id : string prop option; [@option]
      (** delegated_subnet_id *)
  geo_redundant_backup_enabled : bool prop option; [@option]
      (** geo_redundant_backup_enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  point_in_time_restore_time_in_utc : string prop option; [@option]
      (** point_in_time_restore_time_in_utc *)
  private_dns_zone_id : string prop option; [@option]
      (** private_dns_zone_id *)
  replication_role : string prop option; [@option]
      (** replication_role *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop option; [@option]  (** sku_name *)
  source_server_id : string prop option; [@option]
      (** source_server_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  version : string prop option; [@option]  (** version *)
  zone : string prop option; [@option]  (** zone *)
  customer_managed_key : customer_managed_key list;
  high_availability : high_availability list;
  identity : identity list;
  maintenance_window : maintenance_window list;
  storage : storage list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mysql_flexible_server *)

let customer_managed_key ?geo_backup_key_vault_key_id
    ?geo_backup_user_assigned_identity_id ?key_vault_key_id
    ?primary_user_assigned_identity_id () : customer_managed_key =
  {
    geo_backup_key_vault_key_id;
    geo_backup_user_assigned_identity_id;
    key_vault_key_id;
    primary_user_assigned_identity_id;
  }

let high_availability ?standby_availability_zone ~mode () :
    high_availability =
  { mode; standby_availability_zone }

let identity ~identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let maintenance_window ?day_of_week ?start_hour ?start_minute () :
    maintenance_window =
  { day_of_week; start_hour; start_minute }

let storage ?auto_grow_enabled ?io_scaling_enabled ?iops ?size_gb ()
    : storage =
  { auto_grow_enabled; io_scaling_enabled; iops; size_gb }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mysql_flexible_server ?administrator_login
    ?administrator_password ?backup_retention_days ?create_mode
    ?delegated_subnet_id ?geo_redundant_backup_enabled ?id
    ?point_in_time_restore_time_in_utc ?private_dns_zone_id
    ?replication_role ?sku_name ?source_server_id ?tags ?version
    ?zone ?timeouts ~location ~name ~resource_group_name
    ~customer_managed_key ~high_availability ~identity
    ~maintenance_window ~storage () : azurerm_mysql_flexible_server =
  {
    administrator_login;
    administrator_password;
    backup_retention_days;
    create_mode;
    delegated_subnet_id;
    geo_redundant_backup_enabled;
    id;
    location;
    name;
    point_in_time_restore_time_in_utc;
    private_dns_zone_id;
    replication_role;
    resource_group_name;
    sku_name;
    source_server_id;
    tags;
    version;
    zone;
    customer_managed_key;
    high_availability;
    identity;
    maintenance_window;
    storage;
    timeouts;
  }

type t = {
  administrator_login : string prop;
  administrator_password : string prop;
  backup_retention_days : float prop;
  create_mode : string prop;
  delegated_subnet_id : string prop;
  fqdn : string prop;
  geo_redundant_backup_enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  point_in_time_restore_time_in_utc : string prop;
  private_dns_zone_id : string prop;
  public_network_access_enabled : bool prop;
  replica_capacity : float prop;
  replication_role : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  source_server_id : string prop;
  tags : (string * string) list prop;
  version : string prop;
  zone : string prop;
}

let register ?tf_module ?administrator_login ?administrator_password
    ?backup_retention_days ?create_mode ?delegated_subnet_id
    ?geo_redundant_backup_enabled ?id
    ?point_in_time_restore_time_in_utc ?private_dns_zone_id
    ?replication_role ?sku_name ?source_server_id ?tags ?version
    ?zone ?timeouts ~location ~name ~resource_group_name
    ~customer_managed_key ~high_availability ~identity
    ~maintenance_window ~storage __resource_id =
  let __resource_type = "azurerm_mysql_flexible_server" in
  let __resource =
    azurerm_mysql_flexible_server ?administrator_login
      ?administrator_password ?backup_retention_days ?create_mode
      ?delegated_subnet_id ?geo_redundant_backup_enabled ?id
      ?point_in_time_restore_time_in_utc ?private_dns_zone_id
      ?replication_role ?sku_name ?source_server_id ?tags ?version
      ?zone ?timeouts ~location ~name ~resource_group_name
      ~customer_managed_key ~high_availability ~identity
      ~maintenance_window ~storage ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mysql_flexible_server __resource);
  let __resource_attributes =
    ({
       administrator_login =
         Prop.computed __resource_type __resource_id
           "administrator_login";
       administrator_password =
         Prop.computed __resource_type __resource_id
           "administrator_password";
       backup_retention_days =
         Prop.computed __resource_type __resource_id
           "backup_retention_days";
       create_mode =
         Prop.computed __resource_type __resource_id "create_mode";
       delegated_subnet_id =
         Prop.computed __resource_type __resource_id
           "delegated_subnet_id";
       fqdn = Prop.computed __resource_type __resource_id "fqdn";
       geo_redundant_backup_enabled =
         Prop.computed __resource_type __resource_id
           "geo_redundant_backup_enabled";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       point_in_time_restore_time_in_utc =
         Prop.computed __resource_type __resource_id
           "point_in_time_restore_time_in_utc";
       private_dns_zone_id =
         Prop.computed __resource_type __resource_id
           "private_dns_zone_id";
       public_network_access_enabled =
         Prop.computed __resource_type __resource_id
           "public_network_access_enabled";
       replica_capacity =
         Prop.computed __resource_type __resource_id
           "replica_capacity";
       replication_role =
         Prop.computed __resource_type __resource_id
           "replication_role";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       sku_name =
         Prop.computed __resource_type __resource_id "sku_name";
       source_server_id =
         Prop.computed __resource_type __resource_id
           "source_server_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       version =
         Prop.computed __resource_type __resource_id "version";
       zone = Prop.computed __resource_type __resource_id "zone";
     }
      : t)
  in
  __resource_attributes

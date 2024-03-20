(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type maintenance_window = {
  day_of_week : float prop option; [@option]  (** day_of_week *)
  start_hour : float prop option; [@option]  (** start_hour *)
  start_minute : float prop option; [@option]  (** start_minute *)
}
[@@deriving yojson_of]
(** maintenance_window *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_cosmosdb_postgresql_cluster = {
  administrator_login_password : string prop option; [@option]
      (** administrator_login_password *)
  citus_version : string prop option; [@option]  (** citus_version *)
  coordinator_public_ip_access_enabled : bool prop option; [@option]
      (** coordinator_public_ip_access_enabled *)
  coordinator_server_edition : string prop option; [@option]
      (** coordinator_server_edition *)
  coordinator_storage_quota_in_mb : float prop option; [@option]
      (** coordinator_storage_quota_in_mb *)
  coordinator_vcore_count : float prop option; [@option]
      (** coordinator_vcore_count *)
  ha_enabled : bool prop option; [@option]  (** ha_enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  node_count : float prop;  (** node_count *)
  node_public_ip_access_enabled : bool prop option; [@option]
      (** node_public_ip_access_enabled *)
  node_server_edition : string prop option; [@option]
      (** node_server_edition *)
  node_storage_quota_in_mb : float prop option; [@option]
      (** node_storage_quota_in_mb *)
  node_vcores : float prop option; [@option]  (** node_vcores *)
  point_in_time_in_utc : string prop option; [@option]
      (** point_in_time_in_utc *)
  preferred_primary_zone : string prop option; [@option]
      (** preferred_primary_zone *)
  resource_group_name : string prop;  (** resource_group_name *)
  shards_on_coordinator_enabled : bool prop option; [@option]
      (** shards_on_coordinator_enabled *)
  source_location : string prop option; [@option]
      (** source_location *)
  source_resource_id : string prop option; [@option]
      (** source_resource_id *)
  sql_version : string prop option; [@option]  (** sql_version *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  maintenance_window : maintenance_window list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_postgresql_cluster *)

let maintenance_window ?day_of_week ?start_hour ?start_minute () :
    maintenance_window =
  { day_of_week; start_hour; start_minute }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cosmosdb_postgresql_cluster ?administrator_login_password
    ?citus_version ?coordinator_public_ip_access_enabled
    ?coordinator_server_edition ?coordinator_storage_quota_in_mb
    ?coordinator_vcore_count ?ha_enabled ?id
    ?node_public_ip_access_enabled ?node_server_edition
    ?node_storage_quota_in_mb ?node_vcores ?point_in_time_in_utc
    ?preferred_primary_zone ?shards_on_coordinator_enabled
    ?source_location ?source_resource_id ?sql_version ?tags ?timeouts
    ~location ~name ~node_count ~resource_group_name
    ~maintenance_window () : azurerm_cosmosdb_postgresql_cluster =
  {
    administrator_login_password;
    citus_version;
    coordinator_public_ip_access_enabled;
    coordinator_server_edition;
    coordinator_storage_quota_in_mb;
    coordinator_vcore_count;
    ha_enabled;
    id;
    location;
    name;
    node_count;
    node_public_ip_access_enabled;
    node_server_edition;
    node_storage_quota_in_mb;
    node_vcores;
    point_in_time_in_utc;
    preferred_primary_zone;
    resource_group_name;
    shards_on_coordinator_enabled;
    source_location;
    source_resource_id;
    sql_version;
    tags;
    maintenance_window;
    timeouts;
  }

type t = {
  administrator_login_password : string prop;
  citus_version : string prop;
  coordinator_public_ip_access_enabled : bool prop;
  coordinator_server_edition : string prop;
  coordinator_storage_quota_in_mb : float prop;
  coordinator_vcore_count : float prop;
  earliest_restore_time : string prop;
  ha_enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  node_count : float prop;
  node_public_ip_access_enabled : bool prop;
  node_server_edition : string prop;
  node_storage_quota_in_mb : float prop;
  node_vcores : float prop;
  point_in_time_in_utc : string prop;
  preferred_primary_zone : string prop;
  resource_group_name : string prop;
  shards_on_coordinator_enabled : bool prop;
  source_location : string prop;
  source_resource_id : string prop;
  sql_version : string prop;
  tags : (string * string) list prop;
}

let make ?administrator_login_password ?citus_version
    ?coordinator_public_ip_access_enabled ?coordinator_server_edition
    ?coordinator_storage_quota_in_mb ?coordinator_vcore_count
    ?ha_enabled ?id ?node_public_ip_access_enabled
    ?node_server_edition ?node_storage_quota_in_mb ?node_vcores
    ?point_in_time_in_utc ?preferred_primary_zone
    ?shards_on_coordinator_enabled ?source_location
    ?source_resource_id ?sql_version ?tags ?timeouts ~location ~name
    ~node_count ~resource_group_name ~maintenance_window __id =
  let __type = "azurerm_cosmosdb_postgresql_cluster" in
  let __attrs =
    ({
       administrator_login_password =
         Prop.computed __type __id "administrator_login_password";
       citus_version = Prop.computed __type __id "citus_version";
       coordinator_public_ip_access_enabled =
         Prop.computed __type __id
           "coordinator_public_ip_access_enabled";
       coordinator_server_edition =
         Prop.computed __type __id "coordinator_server_edition";
       coordinator_storage_quota_in_mb =
         Prop.computed __type __id "coordinator_storage_quota_in_mb";
       coordinator_vcore_count =
         Prop.computed __type __id "coordinator_vcore_count";
       earliest_restore_time =
         Prop.computed __type __id "earliest_restore_time";
       ha_enabled = Prop.computed __type __id "ha_enabled";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       node_count = Prop.computed __type __id "node_count";
       node_public_ip_access_enabled =
         Prop.computed __type __id "node_public_ip_access_enabled";
       node_server_edition =
         Prop.computed __type __id "node_server_edition";
       node_storage_quota_in_mb =
         Prop.computed __type __id "node_storage_quota_in_mb";
       node_vcores = Prop.computed __type __id "node_vcores";
       point_in_time_in_utc =
         Prop.computed __type __id "point_in_time_in_utc";
       preferred_primary_zone =
         Prop.computed __type __id "preferred_primary_zone";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       shards_on_coordinator_enabled =
         Prop.computed __type __id "shards_on_coordinator_enabled";
       source_location = Prop.computed __type __id "source_location";
       source_resource_id =
         Prop.computed __type __id "source_resource_id";
       sql_version = Prop.computed __type __id "sql_version";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cosmosdb_postgresql_cluster
        (azurerm_cosmosdb_postgresql_cluster
           ?administrator_login_password ?citus_version
           ?coordinator_public_ip_access_enabled
           ?coordinator_server_edition
           ?coordinator_storage_quota_in_mb ?coordinator_vcore_count
           ?ha_enabled ?id ?node_public_ip_access_enabled
           ?node_server_edition ?node_storage_quota_in_mb
           ?node_vcores ?point_in_time_in_utc ?preferred_primary_zone
           ?shards_on_coordinator_enabled ?source_location
           ?source_resource_id ?sql_version ?tags ?timeouts ~location
           ~name ~node_count ~resource_group_name ~maintenance_window
           ());
    attrs = __attrs;
  }

let register ?tf_module ?administrator_login_password ?citus_version
    ?coordinator_public_ip_access_enabled ?coordinator_server_edition
    ?coordinator_storage_quota_in_mb ?coordinator_vcore_count
    ?ha_enabled ?id ?node_public_ip_access_enabled
    ?node_server_edition ?node_storage_quota_in_mb ?node_vcores
    ?point_in_time_in_utc ?preferred_primary_zone
    ?shards_on_coordinator_enabled ?source_location
    ?source_resource_id ?sql_version ?tags ?timeouts ~location ~name
    ~node_count ~resource_group_name ~maintenance_window __id =
  let (r : _ Tf_core.resource) =
    make ?administrator_login_password ?citus_version
      ?coordinator_public_ip_access_enabled
      ?coordinator_server_edition ?coordinator_storage_quota_in_mb
      ?coordinator_vcore_count ?ha_enabled ?id
      ?node_public_ip_access_enabled ?node_server_edition
      ?node_storage_quota_in_mb ?node_vcores ?point_in_time_in_utc
      ?preferred_primary_zone ?shards_on_coordinator_enabled
      ?source_location ?source_resource_id ?sql_version ?tags
      ?timeouts ~location ~name ~node_count ~resource_group_name
      ~maintenance_window __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

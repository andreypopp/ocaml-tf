(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type import = {
  administrator_login : string prop;  (** administrator_login *)
  administrator_login_password : string prop;
      (** administrator_login_password *)
  authentication_type : string prop;  (** authentication_type *)
  operation_mode : string prop option; [@option]
      (** operation_mode *)
  storage_key : string prop;  (** storage_key *)
  storage_key_type : string prop;  (** storage_key_type *)
  storage_uri : string prop;  (** storage_uri *)
}
[@@deriving yojson_of]
(** import *)

type threat_detection_policy = {
  disabled_alerts : string prop list option; [@option]
      (** disabled_alerts *)
  email_account_admins : string prop option; [@option]
      (** email_account_admins *)
  email_addresses : string prop list option; [@option]
      (** email_addresses *)
  retention_days : float prop option; [@option]
      (** retention_days *)
  state : string prop option; [@option]  (** state *)
  storage_account_access_key : string prop option; [@option]
      (** storage_account_access_key *)
  storage_endpoint : string prop option; [@option]
      (** storage_endpoint *)
}
[@@deriving yojson_of]
(** threat_detection_policy *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_sql_database = {
  collation : string prop option; [@option]  (** collation *)
  create_mode : string prop option; [@option]  (** create_mode *)
  edition : string prop option; [@option]  (** edition *)
  elastic_pool_name : string prop option; [@option]
      (** elastic_pool_name *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  max_size_bytes : string prop option; [@option]
      (** max_size_bytes *)
  max_size_gb : string prop option; [@option]  (** max_size_gb *)
  name : string prop;  (** name *)
  read_scale : bool prop option; [@option]  (** read_scale *)
  requested_service_objective_id : string prop option; [@option]
      (** requested_service_objective_id *)
  requested_service_objective_name : string prop option; [@option]
      (** requested_service_objective_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  restore_point_in_time : string prop option; [@option]
      (** restore_point_in_time *)
  server_name : string prop;  (** server_name *)
  source_database_deletion_date : string prop option; [@option]
      (** source_database_deletion_date *)
  source_database_id : string prop option; [@option]
      (** source_database_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zone_redundant : bool prop option; [@option]  (** zone_redundant *)
  import : import list;
  threat_detection_policy : threat_detection_policy list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sql_database *)

let import ?operation_mode ~administrator_login
    ~administrator_login_password ~authentication_type ~storage_key
    ~storage_key_type ~storage_uri () : import =
  {
    administrator_login;
    administrator_login_password;
    authentication_type;
    operation_mode;
    storage_key;
    storage_key_type;
    storage_uri;
  }

let threat_detection_policy ?disabled_alerts ?email_account_admins
    ?email_addresses ?retention_days ?state
    ?storage_account_access_key ?storage_endpoint () :
    threat_detection_policy =
  {
    disabled_alerts;
    email_account_admins;
    email_addresses;
    retention_days;
    state;
    storage_account_access_key;
    storage_endpoint;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sql_database ?collation ?create_mode ?edition
    ?elastic_pool_name ?id ?max_size_bytes ?max_size_gb ?read_scale
    ?requested_service_objective_id ?requested_service_objective_name
    ?restore_point_in_time ?source_database_deletion_date
    ?source_database_id ?tags ?zone_redundant ?timeouts ~location
    ~name ~resource_group_name ~server_name ~import
    ~threat_detection_policy () : azurerm_sql_database =
  {
    collation;
    create_mode;
    edition;
    elastic_pool_name;
    id;
    location;
    max_size_bytes;
    max_size_gb;
    name;
    read_scale;
    requested_service_objective_id;
    requested_service_objective_name;
    resource_group_name;
    restore_point_in_time;
    server_name;
    source_database_deletion_date;
    source_database_id;
    tags;
    zone_redundant;
    import;
    threat_detection_policy;
    timeouts;
  }

type t = {
  collation : string prop;
  create_mode : string prop;
  creation_date : string prop;
  default_secondary_location : string prop;
  edition : string prop;
  elastic_pool_name : string prop;
  encryption : string prop;
  id : string prop;
  location : string prop;
  max_size_bytes : string prop;
  max_size_gb : string prop;
  name : string prop;
  read_scale : bool prop;
  requested_service_objective_id : string prop;
  requested_service_objective_name : string prop;
  resource_group_name : string prop;
  restore_point_in_time : string prop;
  server_name : string prop;
  source_database_deletion_date : string prop;
  source_database_id : string prop;
  tags : (string * string) list prop;
  zone_redundant : bool prop;
}

let make ?collation ?create_mode ?edition ?elastic_pool_name ?id
    ?max_size_bytes ?max_size_gb ?read_scale
    ?requested_service_objective_id ?requested_service_objective_name
    ?restore_point_in_time ?source_database_deletion_date
    ?source_database_id ?tags ?zone_redundant ?timeouts ~location
    ~name ~resource_group_name ~server_name ~import
    ~threat_detection_policy __id =
  let __type = "azurerm_sql_database" in
  let __attrs =
    ({
       collation = Prop.computed __type __id "collation";
       create_mode = Prop.computed __type __id "create_mode";
       creation_date = Prop.computed __type __id "creation_date";
       default_secondary_location =
         Prop.computed __type __id "default_secondary_location";
       edition = Prop.computed __type __id "edition";
       elastic_pool_name =
         Prop.computed __type __id "elastic_pool_name";
       encryption = Prop.computed __type __id "encryption";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       max_size_bytes = Prop.computed __type __id "max_size_bytes";
       max_size_gb = Prop.computed __type __id "max_size_gb";
       name = Prop.computed __type __id "name";
       read_scale = Prop.computed __type __id "read_scale";
       requested_service_objective_id =
         Prop.computed __type __id "requested_service_objective_id";
       requested_service_objective_name =
         Prop.computed __type __id "requested_service_objective_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       restore_point_in_time =
         Prop.computed __type __id "restore_point_in_time";
       server_name = Prop.computed __type __id "server_name";
       source_database_deletion_date =
         Prop.computed __type __id "source_database_deletion_date";
       source_database_id =
         Prop.computed __type __id "source_database_id";
       tags = Prop.computed __type __id "tags";
       zone_redundant = Prop.computed __type __id "zone_redundant";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sql_database
        (azurerm_sql_database ?collation ?create_mode ?edition
           ?elastic_pool_name ?id ?max_size_bytes ?max_size_gb
           ?read_scale ?requested_service_objective_id
           ?requested_service_objective_name ?restore_point_in_time
           ?source_database_deletion_date ?source_database_id ?tags
           ?zone_redundant ?timeouts ~location ~name
           ~resource_group_name ~server_name ~import
           ~threat_detection_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?collation ?create_mode ?edition
    ?elastic_pool_name ?id ?max_size_bytes ?max_size_gb ?read_scale
    ?requested_service_objective_id ?requested_service_objective_name
    ?restore_point_in_time ?source_database_deletion_date
    ?source_database_id ?tags ?zone_redundant ?timeouts ~location
    ~name ~resource_group_name ~server_name ~import
    ~threat_detection_policy __id =
  let (r : _ Tf_core.resource) =
    make ?collation ?create_mode ?edition ?elastic_pool_name ?id
      ?max_size_bytes ?max_size_gb ?read_scale
      ?requested_service_objective_id
      ?requested_service_objective_name ?restore_point_in_time
      ?source_database_deletion_date ?source_database_id ?tags
      ?zone_redundant ?timeouts ~location ~name ~resource_group_name
      ~server_name ~import ~threat_detection_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

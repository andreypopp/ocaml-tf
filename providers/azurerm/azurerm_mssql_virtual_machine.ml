(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type assessment__schedule = {
  day_of_week : string prop;  (** day_of_week *)
  monthly_occurrence : float prop option; [@option]
      (** monthly_occurrence *)
  start_time : string prop;  (** start_time *)
  weekly_interval : float prop option; [@option]
      (** weekly_interval *)
}
[@@deriving yojson_of]
(** assessment__schedule *)

type assessment = {
  enabled : bool prop option; [@option]  (** enabled *)
  run_immediately : bool prop option; [@option]
      (** run_immediately *)
  schedule : assessment__schedule list;
}
[@@deriving yojson_of]
(** assessment *)

type auto_backup__manual_schedule = {
  days_of_week : string prop list option; [@option]
      (** days_of_week *)
  full_backup_frequency : string prop;  (** full_backup_frequency *)
  full_backup_start_hour : float prop;  (** full_backup_start_hour *)
  full_backup_window_in_hours : float prop;
      (** full_backup_window_in_hours *)
  log_backup_frequency_in_minutes : float prop;
      (** log_backup_frequency_in_minutes *)
}
[@@deriving yojson_of]
(** auto_backup__manual_schedule *)

type auto_backup = {
  encryption_enabled : bool prop option; [@option]
      (** encryption_enabled *)
  encryption_password : string prop option; [@option]
      (** encryption_password *)
  retention_period_in_days : float prop;
      (** retention_period_in_days *)
  storage_account_access_key : string prop;
      (** storage_account_access_key *)
  storage_blob_endpoint : string prop;  (** storage_blob_endpoint *)
  system_databases_backup_enabled : bool prop option; [@option]
      (** system_databases_backup_enabled *)
  manual_schedule : auto_backup__manual_schedule list;
}
[@@deriving yojson_of]
(** auto_backup *)

type auto_patching = {
  day_of_week : string prop;  (** day_of_week *)
  maintenance_window_duration_in_minutes : float prop;
      (** maintenance_window_duration_in_minutes *)
  maintenance_window_starting_hour : float prop;
      (** maintenance_window_starting_hour *)
}
[@@deriving yojson_of]
(** auto_patching *)

type key_vault_credential = {
  key_vault_url : string prop;  (** key_vault_url *)
  name : string prop;  (** name *)
  service_principal_name : string prop;
      (** service_principal_name *)
  service_principal_secret : string prop;
      (** service_principal_secret *)
}
[@@deriving yojson_of]
(** key_vault_credential *)

type sql_instance = {
  adhoc_workloads_optimization_enabled : bool prop option; [@option]
      (** adhoc_workloads_optimization_enabled *)
  collation : string prop option; [@option]  (** collation *)
  instant_file_initialization_enabled : bool prop option; [@option]
      (** instant_file_initialization_enabled *)
  lock_pages_in_memory_enabled : bool prop option; [@option]
      (** lock_pages_in_memory_enabled *)
  max_dop : float prop option; [@option]  (** max_dop *)
  max_server_memory_mb : float prop option; [@option]
      (** max_server_memory_mb *)
  min_server_memory_mb : float prop option; [@option]
      (** min_server_memory_mb *)
}
[@@deriving yojson_of]
(** sql_instance *)

type storage_configuration__data_settings = {
  default_file_path : string prop;  (** default_file_path *)
  luns : float prop list;  (** luns *)
}
[@@deriving yojson_of]
(** storage_configuration__data_settings *)

type storage_configuration__log_settings = {
  default_file_path : string prop;  (** default_file_path *)
  luns : float prop list;  (** luns *)
}
[@@deriving yojson_of]
(** storage_configuration__log_settings *)

type storage_configuration__temp_db_settings = {
  data_file_count : float prop option; [@option]
      (** data_file_count *)
  data_file_growth_in_mb : float prop option; [@option]
      (** data_file_growth_in_mb *)
  data_file_size_mb : float prop option; [@option]
      (** data_file_size_mb *)
  default_file_path : string prop;  (** default_file_path *)
  log_file_growth_mb : float prop option; [@option]
      (** log_file_growth_mb *)
  log_file_size_mb : float prop option; [@option]
      (** log_file_size_mb *)
  luns : float prop list;  (** luns *)
}
[@@deriving yojson_of]
(** storage_configuration__temp_db_settings *)

type storage_configuration = {
  disk_type : string prop;  (** disk_type *)
  storage_workload_type : string prop;  (** storage_workload_type *)
  system_db_on_data_disk_enabled : bool prop option; [@option]
      (** system_db_on_data_disk_enabled *)
  data_settings : storage_configuration__data_settings list;
  log_settings : storage_configuration__log_settings list;
  temp_db_settings : storage_configuration__temp_db_settings list;
}
[@@deriving yojson_of]
(** storage_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type wsfc_domain_credential = {
  cluster_bootstrap_account_password : string prop;
      (** cluster_bootstrap_account_password *)
  cluster_operator_account_password : string prop;
      (** cluster_operator_account_password *)
  sql_service_account_password : string prop;
      (** sql_service_account_password *)
}
[@@deriving yojson_of]
(** wsfc_domain_credential *)

type azurerm_mssql_virtual_machine = {
  id : string prop option; [@option]  (** id *)
  r_services_enabled : bool prop option; [@option]
      (** r_services_enabled *)
  sql_connectivity_port : float prop option; [@option]
      (** sql_connectivity_port *)
  sql_connectivity_type : string prop option; [@option]
      (** sql_connectivity_type *)
  sql_connectivity_update_password : string prop option; [@option]
      (** sql_connectivity_update_password *)
  sql_connectivity_update_username : string prop option; [@option]
      (** sql_connectivity_update_username *)
  sql_license_type : string prop option; [@option]
      (** sql_license_type *)
  sql_virtual_machine_group_id : string prop option; [@option]
      (** sql_virtual_machine_group_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  virtual_machine_id : string prop;  (** virtual_machine_id *)
  assessment : assessment list;
  auto_backup : auto_backup list;
  auto_patching : auto_patching list;
  key_vault_credential : key_vault_credential list;
  sql_instance : sql_instance list;
  storage_configuration : storage_configuration list;
  timeouts : timeouts option;
  wsfc_domain_credential : wsfc_domain_credential list;
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_machine *)

let assessment__schedule ?monthly_occurrence ?weekly_interval
    ~day_of_week ~start_time () : assessment__schedule =
  { day_of_week; monthly_occurrence; start_time; weekly_interval }

let assessment ?enabled ?run_immediately ~schedule () : assessment =
  { enabled; run_immediately; schedule }

let auto_backup__manual_schedule ?days_of_week ~full_backup_frequency
    ~full_backup_start_hour ~full_backup_window_in_hours
    ~log_backup_frequency_in_minutes () :
    auto_backup__manual_schedule =
  {
    days_of_week;
    full_backup_frequency;
    full_backup_start_hour;
    full_backup_window_in_hours;
    log_backup_frequency_in_minutes;
  }

let auto_backup ?encryption_enabled ?encryption_password
    ?system_databases_backup_enabled ~retention_period_in_days
    ~storage_account_access_key ~storage_blob_endpoint
    ~manual_schedule () : auto_backup =
  {
    encryption_enabled;
    encryption_password;
    retention_period_in_days;
    storage_account_access_key;
    storage_blob_endpoint;
    system_databases_backup_enabled;
    manual_schedule;
  }

let auto_patching ~day_of_week
    ~maintenance_window_duration_in_minutes
    ~maintenance_window_starting_hour () : auto_patching =
  {
    day_of_week;
    maintenance_window_duration_in_minutes;
    maintenance_window_starting_hour;
  }

let key_vault_credential ~key_vault_url ~name ~service_principal_name
    ~service_principal_secret () : key_vault_credential =
  {
    key_vault_url;
    name;
    service_principal_name;
    service_principal_secret;
  }

let sql_instance ?adhoc_workloads_optimization_enabled ?collation
    ?instant_file_initialization_enabled
    ?lock_pages_in_memory_enabled ?max_dop ?max_server_memory_mb
    ?min_server_memory_mb () : sql_instance =
  {
    adhoc_workloads_optimization_enabled;
    collation;
    instant_file_initialization_enabled;
    lock_pages_in_memory_enabled;
    max_dop;
    max_server_memory_mb;
    min_server_memory_mb;
  }

let storage_configuration__data_settings ~default_file_path ~luns ()
    : storage_configuration__data_settings =
  { default_file_path; luns }

let storage_configuration__log_settings ~default_file_path ~luns () :
    storage_configuration__log_settings =
  { default_file_path; luns }

let storage_configuration__temp_db_settings ?data_file_count
    ?data_file_growth_in_mb ?data_file_size_mb ?log_file_growth_mb
    ?log_file_size_mb ~default_file_path ~luns () :
    storage_configuration__temp_db_settings =
  {
    data_file_count;
    data_file_growth_in_mb;
    data_file_size_mb;
    default_file_path;
    log_file_growth_mb;
    log_file_size_mb;
    luns;
  }

let storage_configuration ?system_db_on_data_disk_enabled ~disk_type
    ~storage_workload_type ~data_settings ~log_settings
    ~temp_db_settings () : storage_configuration =
  {
    disk_type;
    storage_workload_type;
    system_db_on_data_disk_enabled;
    data_settings;
    log_settings;
    temp_db_settings;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let wsfc_domain_credential ~cluster_bootstrap_account_password
    ~cluster_operator_account_password ~sql_service_account_password
    () : wsfc_domain_credential =
  {
    cluster_bootstrap_account_password;
    cluster_operator_account_password;
    sql_service_account_password;
  }

let azurerm_mssql_virtual_machine ?id ?r_services_enabled
    ?sql_connectivity_port ?sql_connectivity_type
    ?sql_connectivity_update_password
    ?sql_connectivity_update_username ?sql_license_type
    ?sql_virtual_machine_group_id ?tags ?timeouts ~virtual_machine_id
    ~assessment ~auto_backup ~auto_patching ~key_vault_credential
    ~sql_instance ~storage_configuration ~wsfc_domain_credential () :
    azurerm_mssql_virtual_machine =
  {
    id;
    r_services_enabled;
    sql_connectivity_port;
    sql_connectivity_type;
    sql_connectivity_update_password;
    sql_connectivity_update_username;
    sql_license_type;
    sql_virtual_machine_group_id;
    tags;
    virtual_machine_id;
    assessment;
    auto_backup;
    auto_patching;
    key_vault_credential;
    sql_instance;
    storage_configuration;
    timeouts;
    wsfc_domain_credential;
  }

type t = {
  id : string prop;
  r_services_enabled : bool prop;
  sql_connectivity_port : float prop;
  sql_connectivity_type : string prop;
  sql_connectivity_update_password : string prop;
  sql_connectivity_update_username : string prop;
  sql_license_type : string prop;
  sql_virtual_machine_group_id : string prop;
  tags : (string * string) list prop;
  virtual_machine_id : string prop;
}

let make ?id ?r_services_enabled ?sql_connectivity_port
    ?sql_connectivity_type ?sql_connectivity_update_password
    ?sql_connectivity_update_username ?sql_license_type
    ?sql_virtual_machine_group_id ?tags ?timeouts ~virtual_machine_id
    ~assessment ~auto_backup ~auto_patching ~key_vault_credential
    ~sql_instance ~storage_configuration ~wsfc_domain_credential __id
    =
  let __type = "azurerm_mssql_virtual_machine" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       r_services_enabled =
         Prop.computed __type __id "r_services_enabled";
       sql_connectivity_port =
         Prop.computed __type __id "sql_connectivity_port";
       sql_connectivity_type =
         Prop.computed __type __id "sql_connectivity_type";
       sql_connectivity_update_password =
         Prop.computed __type __id "sql_connectivity_update_password";
       sql_connectivity_update_username =
         Prop.computed __type __id "sql_connectivity_update_username";
       sql_license_type =
         Prop.computed __type __id "sql_license_type";
       sql_virtual_machine_group_id =
         Prop.computed __type __id "sql_virtual_machine_group_id";
       tags = Prop.computed __type __id "tags";
       virtual_machine_id =
         Prop.computed __type __id "virtual_machine_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mssql_virtual_machine
        (azurerm_mssql_virtual_machine ?id ?r_services_enabled
           ?sql_connectivity_port ?sql_connectivity_type
           ?sql_connectivity_update_password
           ?sql_connectivity_update_username ?sql_license_type
           ?sql_virtual_machine_group_id ?tags ?timeouts
           ~virtual_machine_id ~assessment ~auto_backup
           ~auto_patching ~key_vault_credential ~sql_instance
           ~storage_configuration ~wsfc_domain_credential ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?r_services_enabled
    ?sql_connectivity_port ?sql_connectivity_type
    ?sql_connectivity_update_password
    ?sql_connectivity_update_username ?sql_license_type
    ?sql_virtual_machine_group_id ?tags ?timeouts ~virtual_machine_id
    ~assessment ~auto_backup ~auto_patching ~key_vault_credential
    ~sql_instance ~storage_configuration ~wsfc_domain_credential __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?r_services_enabled ?sql_connectivity_port
      ?sql_connectivity_type ?sql_connectivity_update_password
      ?sql_connectivity_update_username ?sql_license_type
      ?sql_virtual_machine_group_id ?tags ?timeouts
      ~virtual_machine_id ~assessment ~auto_backup ~auto_patching
      ~key_vault_credential ~sql_instance ~storage_configuration
      ~wsfc_domain_credential __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

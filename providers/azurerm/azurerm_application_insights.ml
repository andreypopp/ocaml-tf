(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type azurerm_application_insights = {
  application_type : string prop;
  daily_data_cap_in_gb : float prop option; [@option]
  daily_data_cap_notifications_disabled : bool prop option; [@option]
  disable_ip_masking : bool prop option; [@option]
  force_customer_storage_for_profiler : bool prop option; [@option]
  id : string prop option; [@option]
  internet_ingestion_enabled : bool prop option; [@option]
  internet_query_enabled : bool prop option; [@option]
  local_authentication_disabled : bool prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  retention_in_days : float prop option; [@option]
  sampling_percentage : float prop option; [@option]
  tags : (string * string prop) list option; [@option]
  workspace_id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_application_insights) -> ()

let yojson_of_azurerm_application_insights =
  (function
   | {
       application_type = v_application_type;
       daily_data_cap_in_gb = v_daily_data_cap_in_gb;
       daily_data_cap_notifications_disabled =
         v_daily_data_cap_notifications_disabled;
       disable_ip_masking = v_disable_ip_masking;
       force_customer_storage_for_profiler =
         v_force_customer_storage_for_profiler;
       id = v_id;
       internet_ingestion_enabled = v_internet_ingestion_enabled;
       internet_query_enabled = v_internet_query_enabled;
       local_authentication_disabled =
         v_local_authentication_disabled;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       retention_in_days = v_retention_in_days;
       sampling_percentage = v_sampling_percentage;
       tags = v_tags;
       workspace_id = v_workspace_id;
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
         match v_workspace_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "workspace_id", arg in
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
         match v_sampling_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sampling_percentage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retention_in_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retention_in_days", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_local_authentication_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "local_authentication_disabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_internet_query_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "internet_query_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_internet_ingestion_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "internet_ingestion_enabled", arg in
             bnd :: bnds
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
         match v_force_customer_storage_for_profiler with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_customer_storage_for_profiler", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_ip_masking with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_ip_masking", arg in
             bnd :: bnds
       in
       let bnds =
         match v_daily_data_cap_notifications_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "daily_data_cap_notifications_disabled", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_daily_data_cap_in_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "daily_data_cap_in_gb", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_type
         in
         ("application_type", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_application_insights ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_application_insights

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_application_insights ?daily_data_cap_in_gb
    ?daily_data_cap_notifications_disabled ?disable_ip_masking
    ?force_customer_storage_for_profiler ?id
    ?internet_ingestion_enabled ?internet_query_enabled
    ?local_authentication_disabled ?retention_in_days
    ?sampling_percentage ?tags ?workspace_id ?timeouts
    ~application_type ~location ~name ~resource_group_name () :
    azurerm_application_insights =
  {
    application_type;
    daily_data_cap_in_gb;
    daily_data_cap_notifications_disabled;
    disable_ip_masking;
    force_customer_storage_for_profiler;
    id;
    internet_ingestion_enabled;
    internet_query_enabled;
    local_authentication_disabled;
    location;
    name;
    resource_group_name;
    retention_in_days;
    sampling_percentage;
    tags;
    workspace_id;
    timeouts;
  }

type t = {
  tf_name : string;
  app_id : string prop;
  application_type : string prop;
  connection_string : string prop;
  daily_data_cap_in_gb : float prop;
  daily_data_cap_notifications_disabled : bool prop;
  disable_ip_masking : bool prop;
  force_customer_storage_for_profiler : bool prop;
  id : string prop;
  instrumentation_key : string prop;
  internet_ingestion_enabled : bool prop;
  internet_query_enabled : bool prop;
  local_authentication_disabled : bool prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  retention_in_days : float prop;
  sampling_percentage : float prop;
  tags : (string * string) list prop;
  workspace_id : string prop;
}

let make ?daily_data_cap_in_gb ?daily_data_cap_notifications_disabled
    ?disable_ip_masking ?force_customer_storage_for_profiler ?id
    ?internet_ingestion_enabled ?internet_query_enabled
    ?local_authentication_disabled ?retention_in_days
    ?sampling_percentage ?tags ?workspace_id ?timeouts
    ~application_type ~location ~name ~resource_group_name __id =
  let __type = "azurerm_application_insights" in
  let __attrs =
    ({
       tf_name = __id;
       app_id = Prop.computed __type __id "app_id";
       application_type =
         Prop.computed __type __id "application_type";
       connection_string =
         Prop.computed __type __id "connection_string";
       daily_data_cap_in_gb =
         Prop.computed __type __id "daily_data_cap_in_gb";
       daily_data_cap_notifications_disabled =
         Prop.computed __type __id
           "daily_data_cap_notifications_disabled";
       disable_ip_masking =
         Prop.computed __type __id "disable_ip_masking";
       force_customer_storage_for_profiler =
         Prop.computed __type __id
           "force_customer_storage_for_profiler";
       id = Prop.computed __type __id "id";
       instrumentation_key =
         Prop.computed __type __id "instrumentation_key";
       internet_ingestion_enabled =
         Prop.computed __type __id "internet_ingestion_enabled";
       internet_query_enabled =
         Prop.computed __type __id "internet_query_enabled";
       local_authentication_disabled =
         Prop.computed __type __id "local_authentication_disabled";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       retention_in_days =
         Prop.computed __type __id "retention_in_days";
       sampling_percentage =
         Prop.computed __type __id "sampling_percentage";
       tags = Prop.computed __type __id "tags";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_application_insights
        (azurerm_application_insights ?daily_data_cap_in_gb
           ?daily_data_cap_notifications_disabled ?disable_ip_masking
           ?force_customer_storage_for_profiler ?id
           ?internet_ingestion_enabled ?internet_query_enabled
           ?local_authentication_disabled ?retention_in_days
           ?sampling_percentage ?tags ?workspace_id ?timeouts
           ~application_type ~location ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?daily_data_cap_in_gb
    ?daily_data_cap_notifications_disabled ?disable_ip_masking
    ?force_customer_storage_for_profiler ?id
    ?internet_ingestion_enabled ?internet_query_enabled
    ?local_authentication_disabled ?retention_in_days
    ?sampling_percentage ?tags ?workspace_id ?timeouts
    ~application_type ~location ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?daily_data_cap_in_gb ?daily_data_cap_notifications_disabled
      ?disable_ip_masking ?force_customer_storage_for_profiler ?id
      ?internet_ingestion_enabled ?internet_query_enabled
      ?local_authentication_disabled ?retention_in_days
      ?sampling_percentage ?tags ?workspace_id ?timeouts
      ~application_type ~location ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

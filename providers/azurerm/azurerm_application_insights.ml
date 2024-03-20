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

type azurerm_application_insights = {
  application_type : string prop;  (** application_type *)
  daily_data_cap_in_gb : float prop option; [@option]
      (** daily_data_cap_in_gb *)
  daily_data_cap_notifications_disabled : bool prop option; [@option]
      (** daily_data_cap_notifications_disabled *)
  disable_ip_masking : bool prop option; [@option]
      (** disable_ip_masking *)
  force_customer_storage_for_profiler : bool prop option; [@option]
      (** force_customer_storage_for_profiler *)
  id : string prop option; [@option]  (** id *)
  internet_ingestion_enabled : bool prop option; [@option]
      (** internet_ingestion_enabled *)
  internet_query_enabled : bool prop option; [@option]
      (** internet_query_enabled *)
  local_authentication_disabled : bool prop option; [@option]
      (** local_authentication_disabled *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  retention_in_days : float prop option; [@option]
      (** retention_in_days *)
  sampling_percentage : float prop option; [@option]
      (** sampling_percentage *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  workspace_id : string prop option; [@option]  (** workspace_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_application_insights *)

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

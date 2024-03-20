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

type arm_role_receiver = {
  name : string prop;
  role_id : string prop;
  use_common_alert_schema : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : arm_role_receiver) -> ()

let yojson_of_arm_role_receiver =
  (function
   | {
       name = v_name;
       role_id = v_role_id;
       use_common_alert_schema = v_use_common_alert_schema;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_use_common_alert_schema
         in
         ("use_common_alert_schema", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_id in
         ("role_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : arm_role_receiver -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_arm_role_receiver

[@@@deriving.end]

type automation_runbook_receiver = {
  automation_account_id : string prop;
  is_global_runbook : bool prop;
  name : string prop;
  runbook_name : string prop;
  service_uri : string prop;
  use_common_alert_schema : bool prop;
  webhook_resource_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : automation_runbook_receiver) -> ()

let yojson_of_automation_runbook_receiver =
  (function
   | {
       automation_account_id = v_automation_account_id;
       is_global_runbook = v_is_global_runbook;
       name = v_name;
       runbook_name = v_runbook_name;
       service_uri = v_service_uri;
       use_common_alert_schema = v_use_common_alert_schema;
       webhook_resource_id = v_webhook_resource_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_webhook_resource_id
         in
         ("webhook_resource_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_use_common_alert_schema
         in
         ("use_common_alert_schema", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_uri in
         ("service_uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_runbook_name in
         ("runbook_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_is_global_runbook
         in
         ("is_global_runbook", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_automation_account_id
         in
         ("automation_account_id", arg) :: bnds
       in
       `Assoc bnds
    : automation_runbook_receiver ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_automation_runbook_receiver

[@@@deriving.end]

type azure_app_push_receiver = {
  email_address : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azure_app_push_receiver) -> ()

let yojson_of_azure_app_push_receiver =
  (function
   | { email_address = v_email_address; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email_address in
         ("email_address", arg) :: bnds
       in
       `Assoc bnds
    : azure_app_push_receiver -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azure_app_push_receiver

[@@@deriving.end]

type azure_function_receiver = {
  function_app_resource_id : string prop;
  function_name : string prop;
  http_trigger_url : string prop;
  name : string prop;
  use_common_alert_schema : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azure_function_receiver) -> ()

let yojson_of_azure_function_receiver =
  (function
   | {
       function_app_resource_id = v_function_app_resource_id;
       function_name = v_function_name;
       http_trigger_url = v_http_trigger_url;
       name = v_name;
       use_common_alert_schema = v_use_common_alert_schema;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_use_common_alert_schema
         in
         ("use_common_alert_schema", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_http_trigger_url
         in
         ("http_trigger_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_function_name in
         ("function_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_function_app_resource_id
         in
         ("function_app_resource_id", arg) :: bnds
       in
       `Assoc bnds
    : azure_function_receiver -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azure_function_receiver

[@@@deriving.end]

type email_receiver = {
  email_address : string prop;
  name : string prop;
  use_common_alert_schema : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : email_receiver) -> ()

let yojson_of_email_receiver =
  (function
   | {
       email_address = v_email_address;
       name = v_name;
       use_common_alert_schema = v_use_common_alert_schema;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_use_common_alert_schema
         in
         ("use_common_alert_schema", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email_address in
         ("email_address", arg) :: bnds
       in
       `Assoc bnds
    : email_receiver -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_email_receiver

[@@@deriving.end]

type event_hub_receiver = {
  event_hub_id : string prop;
  event_hub_name : string prop;
  event_hub_namespace : string prop;
  name : string prop;
  subscription_id : string prop;
  tenant_id : string prop;
  use_common_alert_schema : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : event_hub_receiver) -> ()

let yojson_of_event_hub_receiver =
  (function
   | {
       event_hub_id = v_event_hub_id;
       event_hub_name = v_event_hub_name;
       event_hub_namespace = v_event_hub_namespace;
       name = v_name;
       subscription_id = v_subscription_id;
       tenant_id = v_tenant_id;
       use_common_alert_schema = v_use_common_alert_schema;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_use_common_alert_schema
         in
         ("use_common_alert_schema", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_subscription_id
         in
         ("subscription_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_event_hub_namespace
         in
         ("event_hub_namespace", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_event_hub_name
         in
         ("event_hub_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_event_hub_id in
         ("event_hub_id", arg) :: bnds
       in
       `Assoc bnds
    : event_hub_receiver -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_hub_receiver

[@@@deriving.end]

type itsm_receiver = {
  connection_id : string prop;
  name : string prop;
  region : string prop;
  ticket_configuration : string prop;
  workspace_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : itsm_receiver) -> ()

let yojson_of_itsm_receiver =
  (function
   | {
       connection_id = v_connection_id;
       name = v_name;
       region = v_region;
       ticket_configuration = v_ticket_configuration;
       workspace_id = v_workspace_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_workspace_id in
         ("workspace_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ticket_configuration
         in
         ("ticket_configuration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_connection_id in
         ("connection_id", arg) :: bnds
       in
       `Assoc bnds
    : itsm_receiver -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_itsm_receiver

[@@@deriving.end]

type logic_app_receiver = {
  callback_url : string prop;
  name : string prop;
  resource_id : string prop;
  use_common_alert_schema : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logic_app_receiver) -> ()

let yojson_of_logic_app_receiver =
  (function
   | {
       callback_url = v_callback_url;
       name = v_name;
       resource_id = v_resource_id;
       use_common_alert_schema = v_use_common_alert_schema;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_use_common_alert_schema
         in
         ("use_common_alert_schema", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_id in
         ("resource_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_callback_url in
         ("callback_url", arg) :: bnds
       in
       `Assoc bnds
    : logic_app_receiver -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logic_app_receiver

[@@@deriving.end]

type sms_receiver = {
  country_code : string prop;
  name : string prop;
  phone_number : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sms_receiver) -> ()

let yojson_of_sms_receiver =
  (function
   | {
       country_code = v_country_code;
       name = v_name;
       phone_number = v_phone_number;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_phone_number in
         ("phone_number", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_country_code in
         ("country_code", arg) :: bnds
       in
       `Assoc bnds
    : sms_receiver -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sms_receiver

[@@@deriving.end]

type voice_receiver = {
  country_code : string prop;
  name : string prop;
  phone_number : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : voice_receiver) -> ()

let yojson_of_voice_receiver =
  (function
   | {
       country_code = v_country_code;
       name = v_name;
       phone_number = v_phone_number;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_phone_number in
         ("phone_number", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_country_code in
         ("country_code", arg) :: bnds
       in
       `Assoc bnds
    : voice_receiver -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_voice_receiver

[@@@deriving.end]

type webhook_receiver__aad_auth = {
  identifier_uri : string prop;
  object_id : string prop;
  tenant_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : webhook_receiver__aad_auth) -> ()

let yojson_of_webhook_receiver__aad_auth =
  (function
   | {
       identifier_uri = v_identifier_uri;
       object_id = v_object_id;
       tenant_id = v_tenant_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_id in
         ("object_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_identifier_uri
         in
         ("identifier_uri", arg) :: bnds
       in
       `Assoc bnds
    : webhook_receiver__aad_auth -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_webhook_receiver__aad_auth

[@@@deriving.end]

type webhook_receiver = {
  aad_auth : webhook_receiver__aad_auth list;
  name : string prop;
  service_uri : string prop;
  use_common_alert_schema : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : webhook_receiver) -> ()

let yojson_of_webhook_receiver =
  (function
   | {
       aad_auth = v_aad_auth;
       name = v_name;
       service_uri = v_service_uri;
       use_common_alert_schema = v_use_common_alert_schema;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_use_common_alert_schema
         in
         ("use_common_alert_schema", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_uri in
         ("service_uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_webhook_receiver__aad_auth
             v_aad_auth
         in
         ("aad_auth", arg) :: bnds
       in
       `Assoc bnds
    : webhook_receiver -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_webhook_receiver

[@@@deriving.end]

type azurerm_monitor_action_group = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_monitor_action_group) -> ()

let yojson_of_azurerm_monitor_action_group =
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
    : azurerm_monitor_action_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_monitor_action_group

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_monitor_action_group ?id ?timeouts ~name
    ~resource_group_name () : azurerm_monitor_action_group =
  { id; name; resource_group_name; timeouts }

type t = {
  arm_role_receiver : arm_role_receiver list prop;
  automation_runbook_receiver :
    automation_runbook_receiver list prop;
  azure_app_push_receiver : azure_app_push_receiver list prop;
  azure_function_receiver : azure_function_receiver list prop;
  email_receiver : email_receiver list prop;
  enabled : bool prop;
  event_hub_receiver : event_hub_receiver list prop;
  id : string prop;
  itsm_receiver : itsm_receiver list prop;
  logic_app_receiver : logic_app_receiver list prop;
  name : string prop;
  resource_group_name : string prop;
  short_name : string prop;
  sms_receiver : sms_receiver list prop;
  voice_receiver : voice_receiver list prop;
  webhook_receiver : webhook_receiver list prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_monitor_action_group" in
  let __attrs =
    ({
       arm_role_receiver =
         Prop.computed __type __id "arm_role_receiver";
       automation_runbook_receiver =
         Prop.computed __type __id "automation_runbook_receiver";
       azure_app_push_receiver =
         Prop.computed __type __id "azure_app_push_receiver";
       azure_function_receiver =
         Prop.computed __type __id "azure_function_receiver";
       email_receiver = Prop.computed __type __id "email_receiver";
       enabled = Prop.computed __type __id "enabled";
       event_hub_receiver =
         Prop.computed __type __id "event_hub_receiver";
       id = Prop.computed __type __id "id";
       itsm_receiver = Prop.computed __type __id "itsm_receiver";
       logic_app_receiver =
         Prop.computed __type __id "logic_app_receiver";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       short_name = Prop.computed __type __id "short_name";
       sms_receiver = Prop.computed __type __id "sms_receiver";
       voice_receiver = Prop.computed __type __id "voice_receiver";
       webhook_receiver =
         Prop.computed __type __id "webhook_receiver";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_monitor_action_group
        (azurerm_monitor_action_group ?id ?timeouts ~name
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

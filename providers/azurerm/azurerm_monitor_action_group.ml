(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type arm_role_receiver = {
  name : string prop;
  role_id : string prop;
  use_common_alert_schema : bool prop option; [@option]
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
         match v_use_common_alert_schema with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_common_alert_schema", arg in
             bnd :: bnds
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
  use_common_alert_schema : bool prop option; [@option]
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
         match v_use_common_alert_schema with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_common_alert_schema", arg in
             bnd :: bnds
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
  use_common_alert_schema : bool prop option; [@option]
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
         match v_use_common_alert_schema with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_common_alert_schema", arg in
             bnd :: bnds
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
  use_common_alert_schema : bool prop option; [@option]
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
         match v_use_common_alert_schema with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_common_alert_schema", arg in
             bnd :: bnds
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
  event_hub_id : string prop option; [@option]
  event_hub_name : string prop option; [@option]
  event_hub_namespace : string prop option; [@option]
  name : string prop;
  subscription_id : string prop option; [@option]
  tenant_id : string prop option; [@option]
  use_common_alert_schema : bool prop option; [@option]
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
         match v_use_common_alert_schema with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_common_alert_schema", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tenant_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tenant_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subscription_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subscription_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_event_hub_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_hub_namespace", arg in
             bnd :: bnds
       in
       let bnds =
         match v_event_hub_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_hub_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_event_hub_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_hub_id", arg in
             bnd :: bnds
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
  use_common_alert_schema : bool prop option; [@option]
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
         match v_use_common_alert_schema with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_common_alert_schema", arg in
             bnd :: bnds
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
  identifier_uri : string prop option; [@option]
  object_id : string prop;
  tenant_id : string prop option; [@option]
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
         match v_tenant_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tenant_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_id in
         ("object_id", arg) :: bnds
       in
       let bnds =
         match v_identifier_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identifier_uri", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : webhook_receiver__aad_auth -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_webhook_receiver__aad_auth

[@@@deriving.end]

type webhook_receiver = {
  name : string prop;
  service_uri : string prop;
  use_common_alert_schema : bool prop option; [@option]
  aad_auth : webhook_receiver__aad_auth list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : webhook_receiver) -> ()

let yojson_of_webhook_receiver =
  (function
   | {
       name = v_name;
       service_uri = v_service_uri;
       use_common_alert_schema = v_use_common_alert_schema;
       aad_auth = v_aad_auth;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_aad_auth then bnds
         else
           let arg =
             (yojson_of_list yojson_of_webhook_receiver__aad_auth)
               v_aad_auth
           in
           let bnd = "aad_auth", arg in
           bnd :: bnds
       in
       let bnds =
         match v_use_common_alert_schema with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_common_alert_schema", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_uri in
         ("service_uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : webhook_receiver -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_webhook_receiver

[@@@deriving.end]

type azurerm_monitor_action_group = {
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  short_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  arm_role_receiver : arm_role_receiver list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  automation_runbook_receiver : automation_runbook_receiver list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  azure_app_push_receiver : azure_app_push_receiver list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  azure_function_receiver : azure_function_receiver list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  email_receiver : email_receiver list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  event_hub_receiver : event_hub_receiver list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  itsm_receiver : itsm_receiver list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  logic_app_receiver : logic_app_receiver list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sms_receiver : sms_receiver list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  voice_receiver : voice_receiver list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  webhook_receiver : webhook_receiver list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_monitor_action_group) -> ()

let yojson_of_azurerm_monitor_action_group =
  (function
   | {
       enabled = v_enabled;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       short_name = v_short_name;
       tags = v_tags;
       arm_role_receiver = v_arm_role_receiver;
       automation_runbook_receiver = v_automation_runbook_receiver;
       azure_app_push_receiver = v_azure_app_push_receiver;
       azure_function_receiver = v_azure_function_receiver;
       email_receiver = v_email_receiver;
       event_hub_receiver = v_event_hub_receiver;
       itsm_receiver = v_itsm_receiver;
       logic_app_receiver = v_logic_app_receiver;
       sms_receiver = v_sms_receiver;
       timeouts = v_timeouts;
       voice_receiver = v_voice_receiver;
       webhook_receiver = v_webhook_receiver;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_webhook_receiver then bnds
         else
           let arg =
             (yojson_of_list yojson_of_webhook_receiver)
               v_webhook_receiver
           in
           let bnd = "webhook_receiver", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_voice_receiver then bnds
         else
           let arg =
             (yojson_of_list yojson_of_voice_receiver)
               v_voice_receiver
           in
           let bnd = "voice_receiver", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_sms_receiver then bnds
         else
           let arg =
             (yojson_of_list yojson_of_sms_receiver) v_sms_receiver
           in
           let bnd = "sms_receiver", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_logic_app_receiver then bnds
         else
           let arg =
             (yojson_of_list yojson_of_logic_app_receiver)
               v_logic_app_receiver
           in
           let bnd = "logic_app_receiver", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_itsm_receiver then bnds
         else
           let arg =
             (yojson_of_list yojson_of_itsm_receiver) v_itsm_receiver
           in
           let bnd = "itsm_receiver", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_event_hub_receiver then bnds
         else
           let arg =
             (yojson_of_list yojson_of_event_hub_receiver)
               v_event_hub_receiver
           in
           let bnd = "event_hub_receiver", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_email_receiver then bnds
         else
           let arg =
             (yojson_of_list yojson_of_email_receiver)
               v_email_receiver
           in
           let bnd = "email_receiver", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_azure_function_receiver then bnds
         else
           let arg =
             (yojson_of_list yojson_of_azure_function_receiver)
               v_azure_function_receiver
           in
           let bnd = "azure_function_receiver", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_azure_app_push_receiver then bnds
         else
           let arg =
             (yojson_of_list yojson_of_azure_app_push_receiver)
               v_azure_app_push_receiver
           in
           let bnd = "azure_app_push_receiver", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_automation_runbook_receiver then bnds
         else
           let arg =
             (yojson_of_list yojson_of_automation_runbook_receiver)
               v_automation_runbook_receiver
           in
           let bnd = "automation_runbook_receiver", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_arm_role_receiver then bnds
         else
           let arg =
             (yojson_of_list yojson_of_arm_role_receiver)
               v_arm_role_receiver
           in
           let bnd = "arm_role_receiver", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_short_name in
         ("short_name", arg) :: bnds
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
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_monitor_action_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_monitor_action_group

[@@@deriving.end]

let arm_role_receiver ?use_common_alert_schema ~name ~role_id () :
    arm_role_receiver =
  { name; role_id; use_common_alert_schema }

let automation_runbook_receiver ?use_common_alert_schema
    ~automation_account_id ~is_global_runbook ~name ~runbook_name
    ~service_uri ~webhook_resource_id () :
    automation_runbook_receiver =
  {
    automation_account_id;
    is_global_runbook;
    name;
    runbook_name;
    service_uri;
    use_common_alert_schema;
    webhook_resource_id;
  }

let azure_app_push_receiver ~email_address ~name () :
    azure_app_push_receiver =
  { email_address; name }

let azure_function_receiver ?use_common_alert_schema
    ~function_app_resource_id ~function_name ~http_trigger_url ~name
    () : azure_function_receiver =
  {
    function_app_resource_id;
    function_name;
    http_trigger_url;
    name;
    use_common_alert_schema;
  }

let email_receiver ?use_common_alert_schema ~email_address ~name () :
    email_receiver =
  { email_address; name; use_common_alert_schema }

let event_hub_receiver ?event_hub_id ?event_hub_name
    ?event_hub_namespace ?subscription_id ?tenant_id
    ?use_common_alert_schema ~name () : event_hub_receiver =
  {
    event_hub_id;
    event_hub_name;
    event_hub_namespace;
    name;
    subscription_id;
    tenant_id;
    use_common_alert_schema;
  }

let itsm_receiver ~connection_id ~name ~region ~ticket_configuration
    ~workspace_id () : itsm_receiver =
  { connection_id; name; region; ticket_configuration; workspace_id }

let logic_app_receiver ?use_common_alert_schema ~callback_url ~name
    ~resource_id () : logic_app_receiver =
  { callback_url; name; resource_id; use_common_alert_schema }

let sms_receiver ~country_code ~name ~phone_number () : sms_receiver
    =
  { country_code; name; phone_number }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let voice_receiver ~country_code ~name ~phone_number () :
    voice_receiver =
  { country_code; name; phone_number }

let webhook_receiver__aad_auth ?identifier_uri ?tenant_id ~object_id
    () : webhook_receiver__aad_auth =
  { identifier_uri; object_id; tenant_id }

let webhook_receiver ?use_common_alert_schema ?(aad_auth = []) ~name
    ~service_uri () : webhook_receiver =
  { name; service_uri; use_common_alert_schema; aad_auth }

let azurerm_monitor_action_group ?enabled ?id ?location ?tags
    ?(arm_role_receiver = []) ?(automation_runbook_receiver = [])
    ?(azure_app_push_receiver = []) ?(azure_function_receiver = [])
    ?(email_receiver = []) ?(event_hub_receiver = [])
    ?(itsm_receiver = []) ?(logic_app_receiver = [])
    ?(sms_receiver = []) ?timeouts ?(voice_receiver = [])
    ?(webhook_receiver = []) ~name ~resource_group_name ~short_name
    () : azurerm_monitor_action_group =
  {
    enabled;
    id;
    location;
    name;
    resource_group_name;
    short_name;
    tags;
    arm_role_receiver;
    automation_runbook_receiver;
    azure_app_push_receiver;
    azure_function_receiver;
    email_receiver;
    event_hub_receiver;
    itsm_receiver;
    logic_app_receiver;
    sms_receiver;
    timeouts;
    voice_receiver;
    webhook_receiver;
  }

type t = {
  tf_name : string;
  enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  short_name : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?enabled ?id ?location ?tags ?(arm_role_receiver = [])
    ?(automation_runbook_receiver = [])
    ?(azure_app_push_receiver = []) ?(azure_function_receiver = [])
    ?(email_receiver = []) ?(event_hub_receiver = [])
    ?(itsm_receiver = []) ?(logic_app_receiver = [])
    ?(sms_receiver = []) ?timeouts ?(voice_receiver = [])
    ?(webhook_receiver = []) ~name ~resource_group_name ~short_name
    __id =
  let __type = "azurerm_monitor_action_group" in
  let __attrs =
    ({
       tf_name = __id;
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       short_name = Prop.computed __type __id "short_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_monitor_action_group
        (azurerm_monitor_action_group ?enabled ?id ?location ?tags
           ~arm_role_receiver ~automation_runbook_receiver
           ~azure_app_push_receiver ~azure_function_receiver
           ~email_receiver ~event_hub_receiver ~itsm_receiver
           ~logic_app_receiver ~sms_receiver ?timeouts
           ~voice_receiver ~webhook_receiver ~name
           ~resource_group_name ~short_name ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?location ?tags
    ?(arm_role_receiver = []) ?(automation_runbook_receiver = [])
    ?(azure_app_push_receiver = []) ?(azure_function_receiver = [])
    ?(email_receiver = []) ?(event_hub_receiver = [])
    ?(itsm_receiver = []) ?(logic_app_receiver = [])
    ?(sms_receiver = []) ?timeouts ?(voice_receiver = [])
    ?(webhook_receiver = []) ~name ~resource_group_name ~short_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?location ?tags ~arm_role_receiver
      ~automation_runbook_receiver ~azure_app_push_receiver
      ~azure_function_receiver ~email_receiver ~event_hub_receiver
      ~itsm_receiver ~logic_app_receiver ~sms_receiver ?timeouts
      ~voice_receiver ~webhook_receiver ~name ~resource_group_name
      ~short_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

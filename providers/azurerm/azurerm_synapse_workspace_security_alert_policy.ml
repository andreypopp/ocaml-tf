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

type azurerm_synapse_workspace_security_alert_policy = {
  disabled_alerts : string prop list option; [@option]
  email_account_admins_enabled : bool prop option; [@option]
  email_addresses : string prop list option; [@option]
  id : string prop option; [@option]
  policy_state : string prop;
  retention_days : float prop option; [@option]
  storage_account_access_key : string prop option; [@option]
  storage_endpoint : string prop option; [@option]
  synapse_workspace_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_synapse_workspace_security_alert_policy) -> ()

let yojson_of_azurerm_synapse_workspace_security_alert_policy =
  (function
   | {
       disabled_alerts = v_disabled_alerts;
       email_account_admins_enabled = v_email_account_admins_enabled;
       email_addresses = v_email_addresses;
       id = v_id;
       policy_state = v_policy_state;
       retention_days = v_retention_days;
       storage_account_access_key = v_storage_account_access_key;
       storage_endpoint = v_storage_endpoint;
       synapse_workspace_id = v_synapse_workspace_id;
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
           yojson_of_prop yojson_of_string v_synapse_workspace_id
         in
         ("synapse_workspace_id", arg) :: bnds
       in
       let bnds =
         match v_storage_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_account_access_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_access_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retention_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retention_days", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_state in
         ("policy_state", arg) :: bnds
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
         match v_email_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "email_addresses", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email_account_admins_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "email_account_admins_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disabled_alerts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "disabled_alerts", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_synapse_workspace_security_alert_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_synapse_workspace_security_alert_policy

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_synapse_workspace_security_alert_policy ?disabled_alerts
    ?email_account_admins_enabled ?email_addresses ?id
    ?retention_days ?storage_account_access_key ?storage_endpoint
    ?timeouts ~policy_state ~synapse_workspace_id () :
    azurerm_synapse_workspace_security_alert_policy =
  {
    disabled_alerts;
    email_account_admins_enabled;
    email_addresses;
    id;
    policy_state;
    retention_days;
    storage_account_access_key;
    storage_endpoint;
    synapse_workspace_id;
    timeouts;
  }

type t = {
  disabled_alerts : string list prop;
  email_account_admins_enabled : bool prop;
  email_addresses : string list prop;
  id : string prop;
  policy_state : string prop;
  retention_days : float prop;
  storage_account_access_key : string prop;
  storage_endpoint : string prop;
  synapse_workspace_id : string prop;
}

let make ?disabled_alerts ?email_account_admins_enabled
    ?email_addresses ?id ?retention_days ?storage_account_access_key
    ?storage_endpoint ?timeouts ~policy_state ~synapse_workspace_id
    __id =
  let __type = "azurerm_synapse_workspace_security_alert_policy" in
  let __attrs =
    ({
       disabled_alerts = Prop.computed __type __id "disabled_alerts";
       email_account_admins_enabled =
         Prop.computed __type __id "email_account_admins_enabled";
       email_addresses = Prop.computed __type __id "email_addresses";
       id = Prop.computed __type __id "id";
       policy_state = Prop.computed __type __id "policy_state";
       retention_days = Prop.computed __type __id "retention_days";
       storage_account_access_key =
         Prop.computed __type __id "storage_account_access_key";
       storage_endpoint =
         Prop.computed __type __id "storage_endpoint";
       synapse_workspace_id =
         Prop.computed __type __id "synapse_workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_synapse_workspace_security_alert_policy
        (azurerm_synapse_workspace_security_alert_policy
           ?disabled_alerts ?email_account_admins_enabled
           ?email_addresses ?id ?retention_days
           ?storage_account_access_key ?storage_endpoint ?timeouts
           ~policy_state ~synapse_workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?disabled_alerts
    ?email_account_admins_enabled ?email_addresses ?id
    ?retention_days ?storage_account_access_key ?storage_endpoint
    ?timeouts ~policy_state ~synapse_workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?disabled_alerts ?email_account_admins_enabled
      ?email_addresses ?id ?retention_days
      ?storage_account_access_key ?storage_endpoint ?timeouts
      ~policy_state ~synapse_workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

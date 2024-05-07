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

type azurerm_mssql_server_security_alert_policy = {
  disabled_alerts : string prop list option; [@option]
  email_account_admins : bool prop option; [@option]
  email_addresses : string prop list option; [@option]
  id : string prop option; [@option]
  resource_group_name : string prop;
  retention_days : float prop option; [@option]
  server_name : string prop;
  state : string prop;
  storage_account_access_key : string prop option; [@option]
  storage_endpoint : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_mssql_server_security_alert_policy) -> ()

let yojson_of_azurerm_mssql_server_security_alert_policy =
  (function
   | {
       disabled_alerts = v_disabled_alerts;
       email_account_admins = v_email_account_admins;
       email_addresses = v_email_addresses;
       id = v_id;
       resource_group_name = v_resource_group_name;
       retention_days = v_retention_days;
       server_name = v_server_name;
       state = v_state;
       storage_account_access_key = v_storage_account_access_key;
       storage_endpoint = v_storage_endpoint;
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
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server_name in
         ("server_name", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
         match v_email_account_admins with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "email_account_admins", arg in
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
    : azurerm_mssql_server_security_alert_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mssql_server_security_alert_policy

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mssql_server_security_alert_policy ?disabled_alerts
    ?email_account_admins ?email_addresses ?id ?retention_days
    ?storage_account_access_key ?storage_endpoint ?timeouts
    ~resource_group_name ~server_name ~state () :
    azurerm_mssql_server_security_alert_policy =
  {
    disabled_alerts;
    email_account_admins;
    email_addresses;
    id;
    resource_group_name;
    retention_days;
    server_name;
    state;
    storage_account_access_key;
    storage_endpoint;
    timeouts;
  }

type t = {
  tf_name : string;
  disabled_alerts : string list prop;
  email_account_admins : bool prop;
  email_addresses : string list prop;
  id : string prop;
  resource_group_name : string prop;
  retention_days : float prop;
  server_name : string prop;
  state : string prop;
  storage_account_access_key : string prop;
  storage_endpoint : string prop;
}

let make ?disabled_alerts ?email_account_admins ?email_addresses ?id
    ?retention_days ?storage_account_access_key ?storage_endpoint
    ?timeouts ~resource_group_name ~server_name ~state __id =
  let __type = "azurerm_mssql_server_security_alert_policy" in
  let __attrs =
    ({
       tf_name = __id;
       disabled_alerts = Prop.computed __type __id "disabled_alerts";
       email_account_admins =
         Prop.computed __type __id "email_account_admins";
       email_addresses = Prop.computed __type __id "email_addresses";
       id = Prop.computed __type __id "id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       retention_days = Prop.computed __type __id "retention_days";
       server_name = Prop.computed __type __id "server_name";
       state = Prop.computed __type __id "state";
       storage_account_access_key =
         Prop.computed __type __id "storage_account_access_key";
       storage_endpoint =
         Prop.computed __type __id "storage_endpoint";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mssql_server_security_alert_policy
        (azurerm_mssql_server_security_alert_policy ?disabled_alerts
           ?email_account_admins ?email_addresses ?id ?retention_days
           ?storage_account_access_key ?storage_endpoint ?timeouts
           ~resource_group_name ~server_name ~state ());
    attrs = __attrs;
  }

let register ?tf_module ?disabled_alerts ?email_account_admins
    ?email_addresses ?id ?retention_days ?storage_account_access_key
    ?storage_endpoint ?timeouts ~resource_group_name ~server_name
    ~state __id =
  let (r : _ Tf_core.resource) =
    make ?disabled_alerts ?email_account_admins ?email_addresses ?id
      ?retention_days ?storage_account_access_key ?storage_endpoint
      ?timeouts ~resource_group_name ~server_name ~state __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

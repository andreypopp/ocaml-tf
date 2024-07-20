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

type azurerm_mssql_server_extended_auditing_policy = {
  audit_actions_and_groups : string prop list option; [@option]
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  log_monitoring_enabled : bool prop option; [@option]
  predicate_expression : string prop option; [@option]
  retention_in_days : float prop option; [@option]
  server_id : string prop;
  storage_account_access_key : string prop option; [@option]
  storage_account_access_key_is_secondary : bool prop option;
      [@option]
  storage_account_subscription_id : string prop option; [@option]
  storage_endpoint : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_mssql_server_extended_auditing_policy) -> ()

let yojson_of_azurerm_mssql_server_extended_auditing_policy =
  (function
   | {
       audit_actions_and_groups = v_audit_actions_and_groups;
       enabled = v_enabled;
       id = v_id;
       log_monitoring_enabled = v_log_monitoring_enabled;
       predicate_expression = v_predicate_expression;
       retention_in_days = v_retention_in_days;
       server_id = v_server_id;
       storage_account_access_key = v_storage_account_access_key;
       storage_account_access_key_is_secondary =
         v_storage_account_access_key_is_secondary;
       storage_account_subscription_id =
         v_storage_account_subscription_id;
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
         match v_storage_account_subscription_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_subscription_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_account_access_key_is_secondary with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "storage_account_access_key_is_secondary", arg
             in
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
         let arg = yojson_of_prop yojson_of_string v_server_id in
         ("server_id", arg) :: bnds
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
         match v_predicate_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "predicate_expression", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_monitoring_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "log_monitoring_enabled", arg in
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
       let bnds =
         match v_audit_actions_and_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "audit_actions_and_groups", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_mssql_server_extended_auditing_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mssql_server_extended_auditing_policy

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mssql_server_extended_auditing_policy
    ?audit_actions_and_groups ?enabled ?id ?log_monitoring_enabled
    ?predicate_expression ?retention_in_days
    ?storage_account_access_key
    ?storage_account_access_key_is_secondary
    ?storage_account_subscription_id ?storage_endpoint ?timeouts
    ~server_id () : azurerm_mssql_server_extended_auditing_policy =
  {
    audit_actions_and_groups;
    enabled;
    id;
    log_monitoring_enabled;
    predicate_expression;
    retention_in_days;
    server_id;
    storage_account_access_key;
    storage_account_access_key_is_secondary;
    storage_account_subscription_id;
    storage_endpoint;
    timeouts;
  }

type t = {
  tf_name : string;
  audit_actions_and_groups : string list prop;
  enabled : bool prop;
  id : string prop;
  log_monitoring_enabled : bool prop;
  predicate_expression : string prop;
  retention_in_days : float prop;
  server_id : string prop;
  storage_account_access_key : string prop;
  storage_account_access_key_is_secondary : bool prop;
  storage_account_subscription_id : string prop;
  storage_endpoint : string prop;
}

let make ?audit_actions_and_groups ?enabled ?id
    ?log_monitoring_enabled ?predicate_expression ?retention_in_days
    ?storage_account_access_key
    ?storage_account_access_key_is_secondary
    ?storage_account_subscription_id ?storage_endpoint ?timeouts
    ~server_id __id =
  let __type = "azurerm_mssql_server_extended_auditing_policy" in
  let __attrs =
    ({
       tf_name = __id;
       audit_actions_and_groups =
         Prop.computed __type __id "audit_actions_and_groups";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       log_monitoring_enabled =
         Prop.computed __type __id "log_monitoring_enabled";
       predicate_expression =
         Prop.computed __type __id "predicate_expression";
       retention_in_days =
         Prop.computed __type __id "retention_in_days";
       server_id = Prop.computed __type __id "server_id";
       storage_account_access_key =
         Prop.computed __type __id "storage_account_access_key";
       storage_account_access_key_is_secondary =
         Prop.computed __type __id
           "storage_account_access_key_is_secondary";
       storage_account_subscription_id =
         Prop.computed __type __id "storage_account_subscription_id";
       storage_endpoint =
         Prop.computed __type __id "storage_endpoint";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mssql_server_extended_auditing_policy
        (azurerm_mssql_server_extended_auditing_policy
           ?audit_actions_and_groups ?enabled ?id
           ?log_monitoring_enabled ?predicate_expression
           ?retention_in_days ?storage_account_access_key
           ?storage_account_access_key_is_secondary
           ?storage_account_subscription_id ?storage_endpoint
           ?timeouts ~server_id ());
    attrs = __attrs;
  }

let register ?tf_module ?audit_actions_and_groups ?enabled ?id
    ?log_monitoring_enabled ?predicate_expression ?retention_in_days
    ?storage_account_access_key
    ?storage_account_access_key_is_secondary
    ?storage_account_subscription_id ?storage_endpoint ?timeouts
    ~server_id __id =
  let (r : _ Tf_core.resource) =
    make ?audit_actions_and_groups ?enabled ?id
      ?log_monitoring_enabled ?predicate_expression
      ?retention_in_days ?storage_account_access_key
      ?storage_account_access_key_is_secondary
      ?storage_account_subscription_id ?storage_endpoint ?timeouts
      ~server_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

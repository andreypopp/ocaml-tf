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

type azurerm_synapse_sql_pool_extended_auditing_policy = {
  id : string prop option; [@option]
  log_monitoring_enabled : bool prop option; [@option]
  retention_in_days : float prop option; [@option]
  sql_pool_id : string prop;
  storage_account_access_key : string prop option; [@option]
  storage_account_access_key_is_secondary : bool prop option;
      [@option]
  storage_endpoint : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_synapse_sql_pool_extended_auditing_policy) -> ()

let yojson_of_azurerm_synapse_sql_pool_extended_auditing_policy =
  (function
   | {
       id = v_id;
       log_monitoring_enabled = v_log_monitoring_enabled;
       retention_in_days = v_retention_in_days;
       sql_pool_id = v_sql_pool_id;
       storage_account_access_key = v_storage_account_access_key;
       storage_account_access_key_is_secondary =
         v_storage_account_access_key_is_secondary;
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
         let arg = yojson_of_prop yojson_of_string v_sql_pool_id in
         ("sql_pool_id", arg) :: bnds
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
       `Assoc bnds
    : azurerm_synapse_sql_pool_extended_auditing_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_synapse_sql_pool_extended_auditing_policy

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_synapse_sql_pool_extended_auditing_policy ?id
    ?log_monitoring_enabled ?retention_in_days
    ?storage_account_access_key
    ?storage_account_access_key_is_secondary ?storage_endpoint
    ?timeouts ~sql_pool_id () :
    azurerm_synapse_sql_pool_extended_auditing_policy =
  {
    id;
    log_monitoring_enabled;
    retention_in_days;
    sql_pool_id;
    storage_account_access_key;
    storage_account_access_key_is_secondary;
    storage_endpoint;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  log_monitoring_enabled : bool prop;
  retention_in_days : float prop;
  sql_pool_id : string prop;
  storage_account_access_key : string prop;
  storage_account_access_key_is_secondary : bool prop;
  storage_endpoint : string prop;
}

let make ?id ?log_monitoring_enabled ?retention_in_days
    ?storage_account_access_key
    ?storage_account_access_key_is_secondary ?storage_endpoint
    ?timeouts ~sql_pool_id __id =
  let __type = "azurerm_synapse_sql_pool_extended_auditing_policy" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       log_monitoring_enabled =
         Prop.computed __type __id "log_monitoring_enabled";
       retention_in_days =
         Prop.computed __type __id "retention_in_days";
       sql_pool_id = Prop.computed __type __id "sql_pool_id";
       storage_account_access_key =
         Prop.computed __type __id "storage_account_access_key";
       storage_account_access_key_is_secondary =
         Prop.computed __type __id
           "storage_account_access_key_is_secondary";
       storage_endpoint =
         Prop.computed __type __id "storage_endpoint";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_synapse_sql_pool_extended_auditing_policy
        (azurerm_synapse_sql_pool_extended_auditing_policy ?id
           ?log_monitoring_enabled ?retention_in_days
           ?storage_account_access_key
           ?storage_account_access_key_is_secondary ?storage_endpoint
           ?timeouts ~sql_pool_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?log_monitoring_enabled
    ?retention_in_days ?storage_account_access_key
    ?storage_account_access_key_is_secondary ?storage_endpoint
    ?timeouts ~sql_pool_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?log_monitoring_enabled ?retention_in_days
      ?storage_account_access_key
      ?storage_account_access_key_is_secondary ?storage_endpoint
      ?timeouts ~sql_pool_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

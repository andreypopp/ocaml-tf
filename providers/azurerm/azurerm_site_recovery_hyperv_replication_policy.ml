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

type azurerm_site_recovery_hyperv_replication_policy = {
  application_consistent_snapshot_frequency_in_hours : float prop;
  id : string prop option; [@option]
  name : string prop;
  recovery_point_retention_in_hours : float prop;
  recovery_vault_id : string prop;
  replication_interval_in_seconds : float prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_site_recovery_hyperv_replication_policy) -> ()

let yojson_of_azurerm_site_recovery_hyperv_replication_policy =
  (function
   | {
       application_consistent_snapshot_frequency_in_hours =
         v_application_consistent_snapshot_frequency_in_hours;
       id = v_id;
       name = v_name;
       recovery_point_retention_in_hours =
         v_recovery_point_retention_in_hours;
       recovery_vault_id = v_recovery_vault_id;
       replication_interval_in_seconds =
         v_replication_interval_in_seconds;
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
           yojson_of_prop yojson_of_float
             v_replication_interval_in_seconds
         in
         ("replication_interval_in_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_recovery_vault_id
         in
         ("recovery_vault_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_recovery_point_retention_in_hours
         in
         ("recovery_point_retention_in_hours", arg) :: bnds
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_application_consistent_snapshot_frequency_in_hours
         in
         ("application_consistent_snapshot_frequency_in_hours", arg)
         :: bnds
       in
       `Assoc bnds
    : azurerm_site_recovery_hyperv_replication_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_site_recovery_hyperv_replication_policy

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_site_recovery_hyperv_replication_policy ?id ?timeouts
    ~application_consistent_snapshot_frequency_in_hours ~name
    ~recovery_point_retention_in_hours ~recovery_vault_id
    ~replication_interval_in_seconds () :
    azurerm_site_recovery_hyperv_replication_policy =
  {
    application_consistent_snapshot_frequency_in_hours;
    id;
    name;
    recovery_point_retention_in_hours;
    recovery_vault_id;
    replication_interval_in_seconds;
    timeouts;
  }

type t = {
  tf_name : string;
  application_consistent_snapshot_frequency_in_hours : float prop;
  id : string prop;
  name : string prop;
  recovery_point_retention_in_hours : float prop;
  recovery_vault_id : string prop;
  replication_interval_in_seconds : float prop;
}

let make ?id ?timeouts
    ~application_consistent_snapshot_frequency_in_hours ~name
    ~recovery_point_retention_in_hours ~recovery_vault_id
    ~replication_interval_in_seconds __id =
  let __type = "azurerm_site_recovery_hyperv_replication_policy" in
  let __attrs =
    ({
       tf_name = __id;
       application_consistent_snapshot_frequency_in_hours =
         Prop.computed __type __id
           "application_consistent_snapshot_frequency_in_hours";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       recovery_point_retention_in_hours =
         Prop.computed __type __id
           "recovery_point_retention_in_hours";
       recovery_vault_id =
         Prop.computed __type __id "recovery_vault_id";
       replication_interval_in_seconds =
         Prop.computed __type __id "replication_interval_in_seconds";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_site_recovery_hyperv_replication_policy
        (azurerm_site_recovery_hyperv_replication_policy ?id
           ?timeouts
           ~application_consistent_snapshot_frequency_in_hours ~name
           ~recovery_point_retention_in_hours ~recovery_vault_id
           ~replication_interval_in_seconds ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts
    ~application_consistent_snapshot_frequency_in_hours ~name
    ~recovery_point_retention_in_hours ~recovery_vault_id
    ~replication_interval_in_seconds __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts
      ~application_consistent_snapshot_frequency_in_hours ~name
      ~recovery_point_retention_in_hours ~recovery_vault_id
      ~replication_interval_in_seconds __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

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

type azurerm_site_recovery_vmware_replication_policy = {
  application_consistent_snapshot_frequency_in_minutes : float prop;
  id : string prop option; [@option]
  name : string prop;
  recovery_point_retention_in_minutes : float prop;
  recovery_vault_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_site_recovery_vmware_replication_policy) -> ()

let yojson_of_azurerm_site_recovery_vmware_replication_policy =
  (function
   | {
       application_consistent_snapshot_frequency_in_minutes =
         v_application_consistent_snapshot_frequency_in_minutes;
       id = v_id;
       name = v_name;
       recovery_point_retention_in_minutes =
         v_recovery_point_retention_in_minutes;
       recovery_vault_id = v_recovery_vault_id;
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
           yojson_of_prop yojson_of_string v_recovery_vault_id
         in
         ("recovery_vault_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_recovery_point_retention_in_minutes
         in
         ("recovery_point_retention_in_minutes", arg) :: bnds
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
             v_application_consistent_snapshot_frequency_in_minutes
         in
         ("application_consistent_snapshot_frequency_in_minutes", arg)
         :: bnds
       in
       `Assoc bnds
    : azurerm_site_recovery_vmware_replication_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_site_recovery_vmware_replication_policy

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_site_recovery_vmware_replication_policy ?id ?timeouts
    ~application_consistent_snapshot_frequency_in_minutes ~name
    ~recovery_point_retention_in_minutes ~recovery_vault_id () :
    azurerm_site_recovery_vmware_replication_policy =
  {
    application_consistent_snapshot_frequency_in_minutes;
    id;
    name;
    recovery_point_retention_in_minutes;
    recovery_vault_id;
    timeouts;
  }

type t = {
  application_consistent_snapshot_frequency_in_minutes : float prop;
  id : string prop;
  name : string prop;
  recovery_point_retention_in_minutes : float prop;
  recovery_vault_id : string prop;
}

let make ?id ?timeouts
    ~application_consistent_snapshot_frequency_in_minutes ~name
    ~recovery_point_retention_in_minutes ~recovery_vault_id __id =
  let __type = "azurerm_site_recovery_vmware_replication_policy" in
  let __attrs =
    ({
       application_consistent_snapshot_frequency_in_minutes =
         Prop.computed __type __id
           "application_consistent_snapshot_frequency_in_minutes";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       recovery_point_retention_in_minutes =
         Prop.computed __type __id
           "recovery_point_retention_in_minutes";
       recovery_vault_id =
         Prop.computed __type __id "recovery_vault_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_site_recovery_vmware_replication_policy
        (azurerm_site_recovery_vmware_replication_policy ?id
           ?timeouts
           ~application_consistent_snapshot_frequency_in_minutes
           ~name ~recovery_point_retention_in_minutes
           ~recovery_vault_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts
    ~application_consistent_snapshot_frequency_in_minutes ~name
    ~recovery_point_retention_in_minutes ~recovery_vault_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts
      ~application_consistent_snapshot_frequency_in_minutes ~name
      ~recovery_point_retention_in_minutes ~recovery_vault_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

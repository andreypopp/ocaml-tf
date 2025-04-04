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

type azurerm_site_recovery_replication_policy = {
  id : string prop option; [@option]
  name : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_site_recovery_replication_policy) -> ()

let yojson_of_azurerm_site_recovery_replication_policy =
  (function
   | {
       id = v_id;
       name = v_name;
       recovery_vault_name = v_recovery_vault_name;
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
         let arg =
           yojson_of_prop yojson_of_string v_recovery_vault_name
         in
         ("recovery_vault_name", arg) :: bnds
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
    : azurerm_site_recovery_replication_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_site_recovery_replication_policy

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_site_recovery_replication_policy ?id ?timeouts ~name
    ~recovery_vault_name ~resource_group_name () :
    azurerm_site_recovery_replication_policy =
  { id; name; recovery_vault_name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  application_consistent_snapshot_frequency_in_minutes : float prop;
  id : string prop;
  name : string prop;
  recovery_point_retention_in_minutes : float prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
}

let make ?id ?timeouts ~name ~recovery_vault_name
    ~resource_group_name __id =
  let __type = "azurerm_site_recovery_replication_policy" in
  let __attrs =
    ({
       tf_name = __id;
       application_consistent_snapshot_frequency_in_minutes =
         Prop.computed __type __id
           "application_consistent_snapshot_frequency_in_minutes";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       recovery_point_retention_in_minutes =
         Prop.computed __type __id
           "recovery_point_retention_in_minutes";
       recovery_vault_name =
         Prop.computed __type __id "recovery_vault_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_site_recovery_replication_policy
        (azurerm_site_recovery_replication_policy ?id ?timeouts ~name
           ~recovery_vault_name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~recovery_vault_name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~recovery_vault_name
      ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

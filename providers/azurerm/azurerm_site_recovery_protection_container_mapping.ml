(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type automatic_update = {
  authentication_type : string prop option; [@option]
  automation_account_id : string prop option; [@option]
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : automatic_update) -> ()

let yojson_of_automatic_update =
  (function
   | {
       authentication_type = v_authentication_type;
       automation_account_id = v_automation_account_id;
       enabled = v_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_automation_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "automation_account_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authentication_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authentication_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : automatic_update -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_automatic_update

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

type azurerm_site_recovery_protection_container_mapping = {
  id : string prop option; [@option]
  name : string prop;
  recovery_fabric_name : string prop;
  recovery_replication_policy_id : string prop;
  recovery_source_protection_container_name : string prop;
  recovery_target_protection_container_id : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  automatic_update : automatic_update list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_site_recovery_protection_container_mapping) -> ()

let yojson_of_azurerm_site_recovery_protection_container_mapping =
  (function
   | {
       id = v_id;
       name = v_name;
       recovery_fabric_name = v_recovery_fabric_name;
       recovery_replication_policy_id =
         v_recovery_replication_policy_id;
       recovery_source_protection_container_name =
         v_recovery_source_protection_container_name;
       recovery_target_protection_container_id =
         v_recovery_target_protection_container_id;
       recovery_vault_name = v_recovery_vault_name;
       resource_group_name = v_resource_group_name;
       automatic_update = v_automatic_update;
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
         if [] = v_automatic_update then bnds
         else
           let arg =
             (yojson_of_list yojson_of_automatic_update)
               v_automatic_update
           in
           let bnd = "automatic_update", arg in
           bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string
             v_recovery_target_protection_container_id
         in
         ("recovery_target_protection_container_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_recovery_source_protection_container_name
         in
         ("recovery_source_protection_container_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_recovery_replication_policy_id
         in
         ("recovery_replication_policy_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_recovery_fabric_name
         in
         ("recovery_fabric_name", arg) :: bnds
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
    : azurerm_site_recovery_protection_container_mapping ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_site_recovery_protection_container_mapping

[@@@deriving.end]

let automatic_update ?authentication_type ?automation_account_id
    ?enabled () : automatic_update =
  { authentication_type; automation_account_id; enabled }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_site_recovery_protection_container_mapping ?id
    ?(automatic_update = []) ?timeouts ~name ~recovery_fabric_name
    ~recovery_replication_policy_id
    ~recovery_source_protection_container_name
    ~recovery_target_protection_container_id ~recovery_vault_name
    ~resource_group_name () :
    azurerm_site_recovery_protection_container_mapping =
  {
    id;
    name;
    recovery_fabric_name;
    recovery_replication_policy_id;
    recovery_source_protection_container_name;
    recovery_target_protection_container_id;
    recovery_vault_name;
    resource_group_name;
    automatic_update;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  recovery_fabric_name : string prop;
  recovery_replication_policy_id : string prop;
  recovery_source_protection_container_name : string prop;
  recovery_target_protection_container_id : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
}

let make ?id ?(automatic_update = []) ?timeouts ~name
    ~recovery_fabric_name ~recovery_replication_policy_id
    ~recovery_source_protection_container_name
    ~recovery_target_protection_container_id ~recovery_vault_name
    ~resource_group_name __id =
  let __type =
    "azurerm_site_recovery_protection_container_mapping"
  in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       recovery_fabric_name =
         Prop.computed __type __id "recovery_fabric_name";
       recovery_replication_policy_id =
         Prop.computed __type __id "recovery_replication_policy_id";
       recovery_source_protection_container_name =
         Prop.computed __type __id
           "recovery_source_protection_container_name";
       recovery_target_protection_container_id =
         Prop.computed __type __id
           "recovery_target_protection_container_id";
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
      yojson_of_azurerm_site_recovery_protection_container_mapping
        (azurerm_site_recovery_protection_container_mapping ?id
           ~automatic_update ?timeouts ~name ~recovery_fabric_name
           ~recovery_replication_policy_id
           ~recovery_source_protection_container_name
           ~recovery_target_protection_container_id
           ~recovery_vault_name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(automatic_update = []) ?timeouts ~name
    ~recovery_fabric_name ~recovery_replication_policy_id
    ~recovery_source_protection_container_name
    ~recovery_target_protection_container_id ~recovery_vault_name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~automatic_update ?timeouts ~name ~recovery_fabric_name
      ~recovery_replication_policy_id
      ~recovery_source_protection_container_name
      ~recovery_target_protection_container_id ~recovery_vault_name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

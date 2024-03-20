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

type azurerm_backup_protected_file_share = {
  backup_policy_id : string prop;
  id : string prop option; [@option]
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  source_file_share_name : string prop;
  source_storage_account_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_backup_protected_file_share) -> ()

let yojson_of_azurerm_backup_protected_file_share =
  (function
   | {
       backup_policy_id = v_backup_policy_id;
       id = v_id;
       recovery_vault_name = v_recovery_vault_name;
       resource_group_name = v_resource_group_name;
       source_file_share_name = v_source_file_share_name;
       source_storage_account_id = v_source_storage_account_id;
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
           yojson_of_prop yojson_of_string
             v_source_storage_account_id
         in
         ("source_storage_account_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_file_share_name
         in
         ("source_file_share_name", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_backup_policy_id
         in
         ("backup_policy_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_backup_protected_file_share ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_backup_protected_file_share

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_backup_protected_file_share ?id ?timeouts
    ~backup_policy_id ~recovery_vault_name ~resource_group_name
    ~source_file_share_name ~source_storage_account_id () :
    azurerm_backup_protected_file_share =
  {
    backup_policy_id;
    id;
    recovery_vault_name;
    resource_group_name;
    source_file_share_name;
    source_storage_account_id;
    timeouts;
  }

type t = {
  backup_policy_id : string prop;
  id : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  source_file_share_name : string prop;
  source_storage_account_id : string prop;
}

let make ?id ?timeouts ~backup_policy_id ~recovery_vault_name
    ~resource_group_name ~source_file_share_name
    ~source_storage_account_id __id =
  let __type = "azurerm_backup_protected_file_share" in
  let __attrs =
    ({
       backup_policy_id =
         Prop.computed __type __id "backup_policy_id";
       id = Prop.computed __type __id "id";
       recovery_vault_name =
         Prop.computed __type __id "recovery_vault_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       source_file_share_name =
         Prop.computed __type __id "source_file_share_name";
       source_storage_account_id =
         Prop.computed __type __id "source_storage_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_backup_protected_file_share
        (azurerm_backup_protected_file_share ?id ?timeouts
           ~backup_policy_id ~recovery_vault_name
           ~resource_group_name ~source_file_share_name
           ~source_storage_account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~backup_policy_id
    ~recovery_vault_name ~resource_group_name ~source_file_share_name
    ~source_storage_account_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~backup_policy_id ~recovery_vault_name
      ~resource_group_name ~source_file_share_name
      ~source_storage_account_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

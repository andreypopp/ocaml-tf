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

type azurerm_backup_protected_vm = {
  backup_policy_id : string prop option; [@option]
  exclude_disk_luns : float prop list option; [@option]
  id : string prop option; [@option]
  include_disk_luns : float prop list option; [@option]
  protection_state : string prop option; [@option]
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  source_vm_id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_backup_protected_vm) -> ()

let yojson_of_azurerm_backup_protected_vm =
  (function
   | {
       backup_policy_id = v_backup_policy_id;
       exclude_disk_luns = v_exclude_disk_luns;
       id = v_id;
       include_disk_luns = v_include_disk_luns;
       protection_state = v_protection_state;
       recovery_vault_name = v_recovery_vault_name;
       resource_group_name = v_resource_group_name;
       source_vm_id = v_source_vm_id;
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
         match v_source_vm_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_vm_id", arg in
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
         match v_protection_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protection_state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_disk_luns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "include_disk_luns", arg in
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
         match v_exclude_disk_luns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "exclude_disk_luns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_backup_policy_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "backup_policy_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_backup_protected_vm ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_backup_protected_vm

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_backup_protected_vm ?backup_policy_id ?exclude_disk_luns
    ?id ?include_disk_luns ?protection_state ?source_vm_id ?timeouts
    ~recovery_vault_name ~resource_group_name () :
    azurerm_backup_protected_vm =
  {
    backup_policy_id;
    exclude_disk_luns;
    id;
    include_disk_luns;
    protection_state;
    recovery_vault_name;
    resource_group_name;
    source_vm_id;
    timeouts;
  }

type t = {
  tf_name : string;
  backup_policy_id : string prop;
  exclude_disk_luns : float list prop;
  id : string prop;
  include_disk_luns : float list prop;
  protection_state : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  source_vm_id : string prop;
}

let make ?backup_policy_id ?exclude_disk_luns ?id ?include_disk_luns
    ?protection_state ?source_vm_id ?timeouts ~recovery_vault_name
    ~resource_group_name __id =
  let __type = "azurerm_backup_protected_vm" in
  let __attrs =
    ({
       tf_name = __id;
       backup_policy_id =
         Prop.computed __type __id "backup_policy_id";
       exclude_disk_luns =
         Prop.computed __type __id "exclude_disk_luns";
       id = Prop.computed __type __id "id";
       include_disk_luns =
         Prop.computed __type __id "include_disk_luns";
       protection_state =
         Prop.computed __type __id "protection_state";
       recovery_vault_name =
         Prop.computed __type __id "recovery_vault_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       source_vm_id = Prop.computed __type __id "source_vm_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_backup_protected_vm
        (azurerm_backup_protected_vm ?backup_policy_id
           ?exclude_disk_luns ?id ?include_disk_luns
           ?protection_state ?source_vm_id ?timeouts
           ~recovery_vault_name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?backup_policy_id ?exclude_disk_luns ?id
    ?include_disk_luns ?protection_state ?source_vm_id ?timeouts
    ~recovery_vault_name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?backup_policy_id ?exclude_disk_luns ?id ?include_disk_luns
      ?protection_state ?source_vm_id ?timeouts ~recovery_vault_name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

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

type azurerm_data_protection_backup_instance_disk = {
  backup_policy_id : string prop;
  disk_id : string prop;
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  snapshot_resource_group_name : string prop;
  vault_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_data_protection_backup_instance_disk) -> ()

let yojson_of_azurerm_data_protection_backup_instance_disk =
  (function
   | {
       backup_policy_id = v_backup_policy_id;
       disk_id = v_disk_id;
       id = v_id;
       location = v_location;
       name = v_name;
       snapshot_resource_group_name = v_snapshot_resource_group_name;
       vault_id = v_vault_id;
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
         let arg = yojson_of_prop yojson_of_string v_vault_id in
         ("vault_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_snapshot_resource_group_name
         in
         ("snapshot_resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_disk_id in
         ("disk_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_backup_policy_id
         in
         ("backup_policy_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_data_protection_backup_instance_disk ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_data_protection_backup_instance_disk

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_protection_backup_instance_disk ?id ?timeouts
    ~backup_policy_id ~disk_id ~location ~name
    ~snapshot_resource_group_name ~vault_id () :
    azurerm_data_protection_backup_instance_disk =
  {
    backup_policy_id;
    disk_id;
    id;
    location;
    name;
    snapshot_resource_group_name;
    vault_id;
    timeouts;
  }

type t = {
  tf_name : string;
  backup_policy_id : string prop;
  disk_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  snapshot_resource_group_name : string prop;
  vault_id : string prop;
}

let make ?id ?timeouts ~backup_policy_id ~disk_id ~location ~name
    ~snapshot_resource_group_name ~vault_id __id =
  let __type = "azurerm_data_protection_backup_instance_disk" in
  let __attrs =
    ({
       tf_name = __id;
       backup_policy_id =
         Prop.computed __type __id "backup_policy_id";
       disk_id = Prop.computed __type __id "disk_id";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       snapshot_resource_group_name =
         Prop.computed __type __id "snapshot_resource_group_name";
       vault_id = Prop.computed __type __id "vault_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_protection_backup_instance_disk
        (azurerm_data_protection_backup_instance_disk ?id ?timeouts
           ~backup_policy_id ~disk_id ~location ~name
           ~snapshot_resource_group_name ~vault_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~backup_policy_id ~disk_id
    ~location ~name ~snapshot_resource_group_name ~vault_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~backup_policy_id ~disk_id ~location ~name
      ~snapshot_resource_group_name ~vault_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

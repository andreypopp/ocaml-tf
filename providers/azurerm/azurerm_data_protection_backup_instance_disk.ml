(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_data_protection_backup_instance_disk = {
  backup_policy_id : string prop;  (** backup_policy_id *)
  disk_id : string prop;  (** disk_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  snapshot_resource_group_name : string prop;
      (** snapshot_resource_group_name *)
  vault_id : string prop;  (** vault_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_instance_disk *)

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

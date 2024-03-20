(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_disk_pool_iscsi_target_lun = {
  disk_pool_managed_disk_attachment_id : string prop;
      (** disk_pool_managed_disk_attachment_id *)
  id : string prop option; [@option]  (** id *)
  iscsi_target_id : string prop;  (** iscsi_target_id *)
  name : string prop;  (** name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_disk_pool_iscsi_target_lun *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_disk_pool_iscsi_target_lun ?id ?timeouts
    ~disk_pool_managed_disk_attachment_id ~iscsi_target_id ~name () :
    azurerm_disk_pool_iscsi_target_lun =
  {
    disk_pool_managed_disk_attachment_id;
    id;
    iscsi_target_id;
    name;
    timeouts;
  }

type t = {
  disk_pool_managed_disk_attachment_id : string prop;
  id : string prop;
  iscsi_target_id : string prop;
  lun : float prop;
  name : string prop;
}

let make ?id ?timeouts ~disk_pool_managed_disk_attachment_id
    ~iscsi_target_id ~name __id =
  let __type = "azurerm_disk_pool_iscsi_target_lun" in
  let __attrs =
    ({
       disk_pool_managed_disk_attachment_id =
         Prop.computed __type __id
           "disk_pool_managed_disk_attachment_id";
       id = Prop.computed __type __id "id";
       iscsi_target_id = Prop.computed __type __id "iscsi_target_id";
       lun = Prop.computed __type __id "lun";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_disk_pool_iscsi_target_lun
        (azurerm_disk_pool_iscsi_target_lun ?id ?timeouts
           ~disk_pool_managed_disk_attachment_id ~iscsi_target_id
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts
    ~disk_pool_managed_disk_attachment_id ~iscsi_target_id ~name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~disk_pool_managed_disk_attachment_id
      ~iscsi_target_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

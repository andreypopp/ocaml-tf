(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_disk_pool_iscsi_target = {
  acl_mode : string prop;  (** acl_mode *)
  disks_pool_id : string prop;  (** disks_pool_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  target_iqn : string prop option; [@option]  (** target_iqn *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_disk_pool_iscsi_target *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_disk_pool_iscsi_target ?id ?target_iqn ?timeouts
    ~acl_mode ~disks_pool_id ~name () :
    azurerm_disk_pool_iscsi_target =
  { acl_mode; disks_pool_id; id; name; target_iqn; timeouts }

type t = {
  acl_mode : string prop;
  disks_pool_id : string prop;
  endpoints : string list prop;
  id : string prop;
  name : string prop;
  port : float prop;
  target_iqn : string prop;
}

let make ?id ?target_iqn ?timeouts ~acl_mode ~disks_pool_id ~name
    __id =
  let __type = "azurerm_disk_pool_iscsi_target" in
  let __attrs =
    ({
       acl_mode = Prop.computed __type __id "acl_mode";
       disks_pool_id = Prop.computed __type __id "disks_pool_id";
       endpoints = Prop.computed __type __id "endpoints";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       port = Prop.computed __type __id "port";
       target_iqn = Prop.computed __type __id "target_iqn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_disk_pool_iscsi_target
        (azurerm_disk_pool_iscsi_target ?id ?target_iqn ?timeouts
           ~acl_mode ~disks_pool_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?target_iqn ?timeouts ~acl_mode
    ~disks_pool_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?target_iqn ?timeouts ~acl_mode ~disks_pool_id ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

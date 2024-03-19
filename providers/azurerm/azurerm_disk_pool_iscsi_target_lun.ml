(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?timeouts
    ~disk_pool_managed_disk_attachment_id ~iscsi_target_id ~name
    __resource_id =
  let __resource_type = "azurerm_disk_pool_iscsi_target_lun" in
  let __resource =
    azurerm_disk_pool_iscsi_target_lun ?id ?timeouts
      ~disk_pool_managed_disk_attachment_id ~iscsi_target_id ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_disk_pool_iscsi_target_lun __resource);
  let __resource_attributes =
    ({
       disk_pool_managed_disk_attachment_id =
         Prop.computed __resource_type __resource_id
           "disk_pool_managed_disk_attachment_id";
       id = Prop.computed __resource_type __resource_id "id";
       iscsi_target_id =
         Prop.computed __resource_type __resource_id
           "iscsi_target_id";
       lun = Prop.computed __resource_type __resource_id "lun";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes

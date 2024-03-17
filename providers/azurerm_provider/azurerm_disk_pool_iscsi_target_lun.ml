(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_disk_pool_iscsi_target_lun__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_disk_pool_iscsi_target_lun__timeouts *)

type azurerm_disk_pool_iscsi_target_lun = {
  disk_pool_managed_disk_attachment_id : string;
      (** disk_pool_managed_disk_attachment_id *)
  iscsi_target_id : string;  (** iscsi_target_id *)
  name : string;  (** name *)
  timeouts : azurerm_disk_pool_iscsi_target_lun__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_disk_pool_iscsi_target_lun *)

let azurerm_disk_pool_iscsi_target_lun ?timeouts
    ~disk_pool_managed_disk_attachment_id ~iscsi_target_id ~name
    __resource_id =
  let __resource_type = "azurerm_disk_pool_iscsi_target_lun" in
  let __resource =
    {
      disk_pool_managed_disk_attachment_id;
      iscsi_target_id;
      name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_disk_pool_iscsi_target_lun __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_disk_pool_iscsi_target__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_disk_pool_iscsi_target__timeouts *)

type azurerm_disk_pool_iscsi_target = {
  acl_mode : string;  (** acl_mode *)
  disks_pool_id : string;  (** disks_pool_id *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  target_iqn : string option; [@option]  (** target_iqn *)
  timeouts : azurerm_disk_pool_iscsi_target__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_disk_pool_iscsi_target *)

let azurerm_disk_pool_iscsi_target ?id ?target_iqn ?timeouts
    ~acl_mode ~disks_pool_id ~name __resource_id =
  let __resource_type = "azurerm_disk_pool_iscsi_target" in
  let __resource =
    { acl_mode; disks_pool_id; id; name; target_iqn; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_disk_pool_iscsi_target __resource);
  ()

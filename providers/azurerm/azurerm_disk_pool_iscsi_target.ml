(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_disk_pool_iscsi_target__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_disk_pool_iscsi_target__timeouts *)

type azurerm_disk_pool_iscsi_target = {
  acl_mode : string prop;  (** acl_mode *)
  disks_pool_id : string prop;  (** disks_pool_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  target_iqn : string prop option; [@option]  (** target_iqn *)
  timeouts : azurerm_disk_pool_iscsi_target__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_disk_pool_iscsi_target *)

type t = {
  acl_mode : string prop;
  disks_pool_id : string prop;
  endpoints : string list prop;
  id : string prop;
  name : string prop;
  port : float prop;
  target_iqn : string prop;
}

let azurerm_disk_pool_iscsi_target ?id ?target_iqn ?timeouts
    ~acl_mode ~disks_pool_id ~name __resource_id =
  let __resource_type = "azurerm_disk_pool_iscsi_target" in
  let __resource =
    ({ acl_mode; disks_pool_id; id; name; target_iqn; timeouts }
      : azurerm_disk_pool_iscsi_target)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_disk_pool_iscsi_target __resource);
  let __resource_attributes =
    ({
       acl_mode =
         Prop.computed __resource_type __resource_id "acl_mode";
       disks_pool_id =
         Prop.computed __resource_type __resource_id "disks_pool_id";
       endpoints =
         Prop.computed __resource_type __resource_id "endpoints";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       port = Prop.computed __resource_type __resource_id "port";
       target_iqn =
         Prop.computed __resource_type __resource_id "target_iqn";
     }
      : t)
  in
  __resource_attributes

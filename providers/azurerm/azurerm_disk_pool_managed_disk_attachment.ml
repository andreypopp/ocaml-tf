(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_disk_pool_managed_disk_attachment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_disk_pool_managed_disk_attachment__timeouts *)

type azurerm_disk_pool_managed_disk_attachment = {
  disk_pool_id : string prop;  (** disk_pool_id *)
  id : string prop option; [@option]  (** id *)
  managed_disk_id : string prop;  (** managed_disk_id *)
  timeouts :
    azurerm_disk_pool_managed_disk_attachment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_disk_pool_managed_disk_attachment *)

type t = {
  disk_pool_id : string prop;
  id : string prop;
  managed_disk_id : string prop;
}

let azurerm_disk_pool_managed_disk_attachment ?id ?timeouts
    ~disk_pool_id ~managed_disk_id __resource_id =
  let __resource_type =
    "azurerm_disk_pool_managed_disk_attachment"
  in
  let __resource =
    ({ disk_pool_id; id; managed_disk_id; timeouts }
      : azurerm_disk_pool_managed_disk_attachment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_disk_pool_managed_disk_attachment __resource);
  let __resource_attributes =
    ({
       disk_pool_id =
         Prop.computed __resource_type __resource_id "disk_pool_id";
       id = Prop.computed __resource_type __resource_id "id";
       managed_disk_id =
         Prop.computed __resource_type __resource_id
           "managed_disk_id";
     }
      : t)
  in
  __resource_attributes

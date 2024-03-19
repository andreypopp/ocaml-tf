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

type azurerm_disk_pool_managed_disk_attachment = {
  disk_pool_id : string prop;  (** disk_pool_id *)
  id : string prop option; [@option]  (** id *)
  managed_disk_id : string prop;  (** managed_disk_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_disk_pool_managed_disk_attachment *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_disk_pool_managed_disk_attachment ?id ?timeouts
    ~disk_pool_id ~managed_disk_id () :
    azurerm_disk_pool_managed_disk_attachment =
  { disk_pool_id; id; managed_disk_id; timeouts }

type t = {
  disk_pool_id : string prop;
  id : string prop;
  managed_disk_id : string prop;
}

let register ?tf_module ?id ?timeouts ~disk_pool_id ~managed_disk_id
    __resource_id =
  let __resource_type =
    "azurerm_disk_pool_managed_disk_attachment"
  in
  let __resource =
    azurerm_disk_pool_managed_disk_attachment ?id ?timeouts
      ~disk_pool_id ~managed_disk_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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

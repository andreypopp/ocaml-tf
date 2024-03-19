(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_virtual_desktop_host_pool_registration_info = {
  expiration_date : string prop;  (** expiration_date *)
  hostpool_id : string prop;  (** hostpool_id *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_desktop_host_pool_registration_info *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_desktop_host_pool_registration_info ?id ?timeouts
    ~expiration_date ~hostpool_id () :
    azurerm_virtual_desktop_host_pool_registration_info =
  { expiration_date; hostpool_id; id; timeouts }

type t = {
  expiration_date : string prop;
  hostpool_id : string prop;
  id : string prop;
  token : string prop;
}

let register ?tf_module ?id ?timeouts ~expiration_date ~hostpool_id
    __resource_id =
  let __resource_type =
    "azurerm_virtual_desktop_host_pool_registration_info"
  in
  let __resource =
    azurerm_virtual_desktop_host_pool_registration_info ?id ?timeouts
      ~expiration_date ~hostpool_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_desktop_host_pool_registration_info
       __resource);
  let __resource_attributes =
    ({
       expiration_date =
         Prop.computed __resource_type __resource_id
           "expiration_date";
       hostpool_id =
         Prop.computed __resource_type __resource_id "hostpool_id";
       id = Prop.computed __resource_type __resource_id "id";
       token = Prop.computed __resource_type __resource_id "token";
     }
      : t)
  in
  __resource_attributes

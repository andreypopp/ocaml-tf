(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_desktop_host_pool_registration_info__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_desktop_host_pool_registration_info__timeouts *)

type azurerm_virtual_desktop_host_pool_registration_info = {
  expiration_date : string prop;  (** expiration_date *)
  hostpool_id : string prop;  (** hostpool_id *)
  id : string prop option; [@option]  (** id *)
  timeouts :
    azurerm_virtual_desktop_host_pool_registration_info__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_virtual_desktop_host_pool_registration_info *)

let azurerm_virtual_desktop_host_pool_registration_info ?id ?timeouts
    ~expiration_date ~hostpool_id __resource_id =
  let __resource_type =
    "azurerm_virtual_desktop_host_pool_registration_info"
  in
  let __resource = { expiration_date; hostpool_id; id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_desktop_host_pool_registration_info
       __resource);
  ()

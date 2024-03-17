(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_maps_account__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_maps_account__timeouts *)

type azurerm_maps_account = {
  local_authentication_enabled : bool option; [@option]
      (** local_authentication_enabled *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  sku_name : string;  (** sku_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_maps_account__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_maps_account *)

let azurerm_maps_account ?local_authentication_enabled ?tags
    ?timeouts ~name ~resource_group_name ~sku_name __resource_id =
  let __resource_type = "azurerm_maps_account" in
  let __resource =
    {
      local_authentication_enabled;
      name;
      resource_group_name;
      sku_name;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_maps_account __resource);
  ()

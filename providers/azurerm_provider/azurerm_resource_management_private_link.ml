(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_resource_management_private_link__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_resource_management_private_link__timeouts *)

type azurerm_resource_management_private_link = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts :
    azurerm_resource_management_private_link__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_resource_management_private_link *)

let azurerm_resource_management_private_link ?id ?timeouts ~location
    ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_resource_management_private_link" in
  let __resource =
    { id; location; name; resource_group_name; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_resource_management_private_link __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_group__timeouts *)

type azurerm_api_management_group = {
  api_management_name : string prop;  (** api_management_name *)
  description : string prop option; [@option]  (** description *)
  display_name : string prop;  (** display_name *)
  external_id : string prop option; [@option]  (** external_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  timeouts : azurerm_api_management_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_group *)

let azurerm_api_management_group ?description ?external_id ?id ?type_
    ?timeouts ~api_management_name ~display_name ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_api_management_group" in
  let __resource =
    {
      api_management_name;
      description;
      display_name;
      external_id;
      id;
      name;
      resource_group_name;
      type_;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_group __resource);
  ()

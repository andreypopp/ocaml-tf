(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_api_management_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_group__timeouts *)

type azurerm_api_management_group = {
  api_management_name : string;  (** api_management_name *)
  description : string option; [@option]  (** description *)
  display_name : string;  (** display_name *)
  external_id : string option; [@option]  (** external_id *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  timeouts : azurerm_api_management_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_group *)

let azurerm_api_management_group ?description ?external_id ?type_
    ?timeouts ~api_management_name ~display_name ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_api_management_group" in
  let __resource =
    {
      api_management_name;
      description;
      display_name;
      external_id;
      name;
      resource_group_name;
      type_;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_group __resource);
  ()

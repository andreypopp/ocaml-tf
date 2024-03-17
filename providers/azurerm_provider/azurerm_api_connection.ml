(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_connection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_connection__timeouts *)

type azurerm_api_connection = {
  display_name : string option; [@option]  (** display_name *)
  id : string option; [@option]  (** id *)
  managed_api_id : string;  (** managed_api_id *)
  name : string;  (** name *)
  parameter_values : (string * string) list option; [@option]
      (** parameter_values *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_api_connection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_connection *)

let azurerm_api_connection ?display_name ?id ?parameter_values ?tags
    ?timeouts ~managed_api_id ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_api_connection" in
  let __resource =
    {
      display_name;
      id;
      managed_api_id;
      name;
      parameter_values;
      resource_group_name;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_connection __resource);
  ()

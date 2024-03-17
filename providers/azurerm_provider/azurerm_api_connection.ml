(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_connection__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_connection__timeouts *)

type azurerm_api_connection = {
  display_name : string prop option; [@option]  (** display_name *)
  id : string prop option; [@option]  (** id *)
  managed_api_id : string prop;  (** managed_api_id *)
  name : string prop;  (** name *)
  parameter_values : (string * string prop) list option; [@option]
      (** parameter_values *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
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

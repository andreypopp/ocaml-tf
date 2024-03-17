(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iothub_route__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iothub_route__timeouts *)

type azurerm_iothub_route = {
  condition : string option; [@option]  (** condition *)
  enabled : bool;  (** enabled *)
  endpoint_names : string list;  (** endpoint_names *)
  iothub_name : string;  (** iothub_name *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  source : string;  (** source *)
  timeouts : azurerm_iothub_route__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_route *)

let azurerm_iothub_route ?condition ?timeouts ~enabled
    ~endpoint_names ~iothub_name ~name ~resource_group_name ~source
    __resource_id =
  let __resource_type = "azurerm_iothub_route" in
  let __resource =
    {
      condition;
      enabled;
      endpoint_names;
      iothub_name;
      name;
      resource_group_name;
      source;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iothub_route __resource);
  ()

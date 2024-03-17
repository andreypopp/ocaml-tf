(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iothub_route__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iothub_route__timeouts *)

type azurerm_iothub_route = {
  condition : string prop option; [@option]  (** condition *)
  enabled : bool prop;  (** enabled *)
  endpoint_names : string prop list;  (** endpoint_names *)
  id : string prop option; [@option]  (** id *)
  iothub_name : string prop;  (** iothub_name *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  source : string prop;  (** source *)
  timeouts : azurerm_iothub_route__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_route *)

let azurerm_iothub_route ?condition ?id ?timeouts ~enabled
    ~endpoint_names ~iothub_name ~name ~resource_group_name ~source
    __resource_id =
  let __resource_type = "azurerm_iothub_route" in
  let __resource =
    {
      condition;
      enabled;
      endpoint_names;
      id;
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

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iothub_consumer_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_iothub_consumer_group__timeouts *)

type azurerm_iothub_consumer_group = {
  eventhub_endpoint_name : string prop;
      (** eventhub_endpoint_name *)
  id : string prop option; [@option]  (** id *)
  iothub_name : string prop;  (** iothub_name *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : azurerm_iothub_consumer_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_consumer_group *)

let azurerm_iothub_consumer_group ?id ?timeouts
    ~eventhub_endpoint_name ~iothub_name ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_iothub_consumer_group" in
  let __resource =
    {
      eventhub_endpoint_name;
      id;
      iothub_name;
      name;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iothub_consumer_group __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_eventhub_consumer_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_eventhub_consumer_group__timeouts *)

type azurerm_eventhub_consumer_group = {
  eventhub_name : string;  (** eventhub_name *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  namespace_name : string;  (** namespace_name *)
  resource_group_name : string;  (** resource_group_name *)
  user_metadata : string option; [@option]  (** user_metadata *)
  timeouts : azurerm_eventhub_consumer_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_eventhub_consumer_group *)

let azurerm_eventhub_consumer_group ?id ?user_metadata ?timeouts
    ~eventhub_name ~name ~namespace_name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_eventhub_consumer_group" in
  let __resource =
    {
      eventhub_name;
      id;
      name;
      namespace_name;
      resource_group_name;
      user_metadata;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_eventhub_consumer_group __resource);
  ()

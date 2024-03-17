(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_eventhub_consumer_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_eventhub_consumer_group__timeouts *)

type azurerm_eventhub_consumer_group = {
  eventhub_name : string prop;  (** eventhub_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  namespace_name : string prop;  (** namespace_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  user_metadata : string prop option; [@option]  (** user_metadata *)
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

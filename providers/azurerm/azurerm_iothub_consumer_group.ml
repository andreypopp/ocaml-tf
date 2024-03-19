(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_iothub_consumer_group = {
  eventhub_endpoint_name : string prop;
      (** eventhub_endpoint_name *)
  id : string prop option; [@option]  (** id *)
  iothub_name : string prop;  (** iothub_name *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_consumer_group *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_iothub_consumer_group ?id ?timeouts
    ~eventhub_endpoint_name ~iothub_name ~name ~resource_group_name
    () : azurerm_iothub_consumer_group =
  {
    eventhub_endpoint_name;
    id;
    iothub_name;
    name;
    resource_group_name;
    timeouts;
  }

type t = {
  eventhub_endpoint_name : string prop;
  id : string prop;
  iothub_name : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let register ?tf_module ?id ?timeouts ~eventhub_endpoint_name
    ~iothub_name ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_iothub_consumer_group" in
  let __resource =
    azurerm_iothub_consumer_group ?id ?timeouts
      ~eventhub_endpoint_name ~iothub_name ~name ~resource_group_name
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iothub_consumer_group __resource);
  let __resource_attributes =
    ({
       eventhub_endpoint_name =
         Prop.computed __resource_type __resource_id
           "eventhub_endpoint_name";
       id = Prop.computed __resource_type __resource_id "id";
       iothub_name =
         Prop.computed __resource_type __resource_id "iothub_name";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes

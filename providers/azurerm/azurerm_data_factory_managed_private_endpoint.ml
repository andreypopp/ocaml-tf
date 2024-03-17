(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_managed_private_endpoint__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_managed_private_endpoint__timeouts *)

type azurerm_data_factory_managed_private_endpoint = {
  data_factory_id : string prop;  (** data_factory_id *)
  fqdns : string prop list option; [@option]  (** fqdns *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  subresource_name : string prop option; [@option]
      (** subresource_name *)
  target_resource_id : string prop;  (** target_resource_id *)
  timeouts :
    azurerm_data_factory_managed_private_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_managed_private_endpoint *)

type t = {
  data_factory_id : string prop;
  fqdns : string list prop;
  id : string prop;
  name : string prop;
  subresource_name : string prop;
  target_resource_id : string prop;
}

let azurerm_data_factory_managed_private_endpoint ?fqdns ?id
    ?subresource_name ?timeouts ~data_factory_id ~name
    ~target_resource_id __resource_id =
  let __resource_type =
    "azurerm_data_factory_managed_private_endpoint"
  in
  let __resource =
    ({
       data_factory_id;
       fqdns;
       id;
       name;
       subresource_name;
       target_resource_id;
       timeouts;
     }
      : azurerm_data_factory_managed_private_endpoint)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_managed_private_endpoint
       __resource);
  let __resource_attributes =
    ({
       data_factory_id =
         Prop.computed __resource_type __resource_id
           "data_factory_id";
       fqdns = Prop.computed __resource_type __resource_id "fqdns";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       subresource_name =
         Prop.computed __resource_type __resource_id
           "subresource_name";
       target_resource_id =
         Prop.computed __resource_type __resource_id
           "target_resource_id";
     }
      : t)
  in
  __resource_attributes

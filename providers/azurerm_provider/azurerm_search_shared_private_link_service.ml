(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_search_shared_private_link_service__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_search_shared_private_link_service__timeouts *)

type azurerm_search_shared_private_link_service = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  request_message : string prop option; [@option]
      (** request_message *)
  search_service_id : string prop;  (** search_service_id *)
  subresource_name : string prop;  (** subresource_name *)
  target_resource_id : string prop;  (** target_resource_id *)
  timeouts :
    azurerm_search_shared_private_link_service__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_search_shared_private_link_service *)

type t = {
  id : string prop;
  name : string prop;
  request_message : string prop;
  search_service_id : string prop;
  status : string prop;
  subresource_name : string prop;
  target_resource_id : string prop;
}

let azurerm_search_shared_private_link_service ?id ?request_message
    ?timeouts ~name ~search_service_id ~subresource_name
    ~target_resource_id __resource_id =
  let __resource_type =
    "azurerm_search_shared_private_link_service"
  in
  let __resource =
    ({
       id;
       name;
       request_message;
       search_service_id;
       subresource_name;
       target_resource_id;
       timeouts;
     }
      : azurerm_search_shared_private_link_service)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_search_shared_private_link_service __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       request_message =
         Prop.computed __resource_type __resource_id
           "request_message";
       search_service_id =
         Prop.computed __resource_type __resource_id
           "search_service_id";
       status = Prop.computed __resource_type __resource_id "status";
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

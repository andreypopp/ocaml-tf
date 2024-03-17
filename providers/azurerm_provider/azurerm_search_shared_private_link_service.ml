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

let azurerm_search_shared_private_link_service ?id ?request_message
    ?timeouts ~name ~search_service_id ~subresource_name
    ~target_resource_id __resource_id =
  let __resource_type =
    "azurerm_search_shared_private_link_service"
  in
  let __resource =
    {
      id;
      name;
      request_message;
      search_service_id;
      subresource_name;
      target_resource_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_search_shared_private_link_service __resource);
  ()

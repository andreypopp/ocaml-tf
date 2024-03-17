(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_search_shared_private_link_service__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_search_shared_private_link_service__timeouts *)

type azurerm_search_shared_private_link_service = {
  name : string;  (** name *)
  request_message : string option; [@option]  (** request_message *)
  search_service_id : string;  (** search_service_id *)
  subresource_name : string;  (** subresource_name *)
  target_resource_id : string;  (** target_resource_id *)
  timeouts :
    azurerm_search_shared_private_link_service__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_search_shared_private_link_service *)

let azurerm_search_shared_private_link_service ?request_message
    ?timeouts ~name ~search_service_id ~subresource_name
    ~target_resource_id __resource_id =
  let __resource_type =
    "azurerm_search_shared_private_link_service"
  in
  let __resource =
    {
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

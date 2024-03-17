(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_web_pubsub_shared_private_link_resource__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_web_pubsub_shared_private_link_resource__timeouts *)

type azurerm_web_pubsub_shared_private_link_resource = {
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  request_message : string option; [@option]  (** request_message *)
  subresource_name : string;  (** subresource_name *)
  target_resource_id : string;  (** target_resource_id *)
  web_pubsub_id : string;  (** web_pubsub_id *)
  timeouts :
    azurerm_web_pubsub_shared_private_link_resource__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_web_pubsub_shared_private_link_resource *)

let azurerm_web_pubsub_shared_private_link_resource ?id
    ?request_message ?timeouts ~name ~subresource_name
    ~target_resource_id ~web_pubsub_id __resource_id =
  let __resource_type =
    "azurerm_web_pubsub_shared_private_link_resource"
  in
  let __resource =
    {
      id;
      name;
      request_message;
      subresource_name;
      target_resource_id;
      web_pubsub_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_web_pubsub_shared_private_link_resource
       __resource);
  ()

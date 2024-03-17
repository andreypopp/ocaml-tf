(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_signalr_shared_private_link_resource__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_signalr_shared_private_link_resource__timeouts *)

type azurerm_signalr_shared_private_link_resource = {
  name : string;  (** name *)
  request_message : string option; [@option]  (** request_message *)
  signalr_service_id : string;  (** signalr_service_id *)
  sub_resource_name : string;  (** sub_resource_name *)
  target_resource_id : string;  (** target_resource_id *)
  timeouts :
    azurerm_signalr_shared_private_link_resource__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_signalr_shared_private_link_resource *)

let azurerm_signalr_shared_private_link_resource ?request_message
    ?timeouts ~name ~signalr_service_id ~sub_resource_name
    ~target_resource_id __resource_id =
  let __resource_type =
    "azurerm_signalr_shared_private_link_resource"
  in
  let __resource =
    {
      name;
      request_message;
      signalr_service_id;
      sub_resource_name;
      target_resource_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_signalr_shared_private_link_resource
       __resource);
  ()

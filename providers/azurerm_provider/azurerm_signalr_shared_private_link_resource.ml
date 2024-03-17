(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_signalr_shared_private_link_resource__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_signalr_shared_private_link_resource__timeouts *)

type azurerm_signalr_shared_private_link_resource = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  request_message : string prop option; [@option]
      (** request_message *)
  signalr_service_id : string prop;  (** signalr_service_id *)
  sub_resource_name : string prop;  (** sub_resource_name *)
  target_resource_id : string prop;  (** target_resource_id *)
  timeouts :
    azurerm_signalr_shared_private_link_resource__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_signalr_shared_private_link_resource *)

let azurerm_signalr_shared_private_link_resource ?id ?request_message
    ?timeouts ~name ~signalr_service_id ~sub_resource_name
    ~target_resource_id __resource_id =
  let __resource_type =
    "azurerm_signalr_shared_private_link_resource"
  in
  let __resource =
    {
      id;
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

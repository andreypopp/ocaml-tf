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

type t = {
  id : string prop;
  name : string prop;
  request_message : string prop;
  signalr_service_id : string prop;
  status : string prop;
  sub_resource_name : string prop;
  target_resource_id : string prop;
}

let azurerm_signalr_shared_private_link_resource ?id ?request_message
    ?timeouts ~name ~signalr_service_id ~sub_resource_name
    ~target_resource_id __resource_id =
  let __resource_type =
    "azurerm_signalr_shared_private_link_resource"
  in
  let __resource =
    ({
       id;
       name;
       request_message;
       signalr_service_id;
       sub_resource_name;
       target_resource_id;
       timeouts;
     }
      : azurerm_signalr_shared_private_link_resource)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_signalr_shared_private_link_resource
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       request_message =
         Prop.computed __resource_type __resource_id
           "request_message";
       signalr_service_id =
         Prop.computed __resource_type __resource_id
           "signalr_service_id";
       status = Prop.computed __resource_type __resource_id "status";
       sub_resource_name =
         Prop.computed __resource_type __resource_id
           "sub_resource_name";
       target_resource_id =
         Prop.computed __resource_type __resource_id
           "target_resource_id";
     }
      : t)
  in
  __resource_attributes

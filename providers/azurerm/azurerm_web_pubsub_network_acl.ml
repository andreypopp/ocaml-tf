(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_web_pubsub_network_acl__private_endpoint = {
  allowed_request_types : string prop list option; [@option]
      (** allowed_request_types *)
  denied_request_types : string prop list option; [@option]
      (** denied_request_types *)
  id : string prop;  (** id *)
}
[@@deriving yojson_of]
(** azurerm_web_pubsub_network_acl__private_endpoint *)

type azurerm_web_pubsub_network_acl__public_network = {
  allowed_request_types : string prop list option; [@option]
      (** allowed_request_types *)
  denied_request_types : string prop list option; [@option]
      (** denied_request_types *)
}
[@@deriving yojson_of]
(** azurerm_web_pubsub_network_acl__public_network *)

type azurerm_web_pubsub_network_acl__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_web_pubsub_network_acl__timeouts *)

type azurerm_web_pubsub_network_acl = {
  default_action : string prop option; [@option]
      (** default_action *)
  id : string prop option; [@option]  (** id *)
  web_pubsub_id : string prop;  (** web_pubsub_id *)
  private_endpoint :
    azurerm_web_pubsub_network_acl__private_endpoint list;
  public_network :
    azurerm_web_pubsub_network_acl__public_network list;
  timeouts : azurerm_web_pubsub_network_acl__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_web_pubsub_network_acl *)

type t = {
  default_action : string prop;
  id : string prop;
  web_pubsub_id : string prop;
}

let azurerm_web_pubsub_network_acl ?default_action ?id ?timeouts
    ~web_pubsub_id ~private_endpoint ~public_network __resource_id =
  let __resource_type = "azurerm_web_pubsub_network_acl" in
  let __resource =
    ({
       default_action;
       id;
       web_pubsub_id;
       private_endpoint;
       public_network;
       timeouts;
     }
      : azurerm_web_pubsub_network_acl)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_web_pubsub_network_acl __resource);
  let __resource_attributes =
    ({
       default_action =
         Prop.computed __resource_type __resource_id "default_action";
       id = Prop.computed __resource_type __resource_id "id";
       web_pubsub_id =
         Prop.computed __resource_type __resource_id "web_pubsub_id";
     }
      : t)
  in
  __resource_attributes

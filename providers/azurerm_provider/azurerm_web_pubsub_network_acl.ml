(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_web_pubsub_network_acl__private_endpoint = {
  allowed_request_types : string list option; [@option]
      (** allowed_request_types *)
  denied_request_types : string list option; [@option]
      (** denied_request_types *)
  id : string;  (** id *)
}
[@@deriving yojson_of]
(** azurerm_web_pubsub_network_acl__private_endpoint *)

type azurerm_web_pubsub_network_acl__public_network = {
  allowed_request_types : string list option; [@option]
      (** allowed_request_types *)
  denied_request_types : string list option; [@option]
      (** denied_request_types *)
}
[@@deriving yojson_of]
(** azurerm_web_pubsub_network_acl__public_network *)

type azurerm_web_pubsub_network_acl__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_web_pubsub_network_acl__timeouts *)

type azurerm_web_pubsub_network_acl = {
  default_action : string option; [@option]  (** default_action *)
  web_pubsub_id : string;  (** web_pubsub_id *)
  private_endpoint :
    azurerm_web_pubsub_network_acl__private_endpoint list;
  public_network :
    azurerm_web_pubsub_network_acl__public_network list;
  timeouts : azurerm_web_pubsub_network_acl__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_web_pubsub_network_acl *)

let azurerm_web_pubsub_network_acl ?default_action ?timeouts
    ~web_pubsub_id ~private_endpoint ~public_network __resource_id =
  let __resource_type = "azurerm_web_pubsub_network_acl" in
  let __resource =
    {
      default_action;
      web_pubsub_id;
      private_endpoint;
      public_network;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_web_pubsub_network_acl __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_web_pubsub_custom_domain__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_web_pubsub_custom_domain__timeouts *)

type azurerm_web_pubsub_custom_domain = {
  domain_name : string;  (** domain_name *)
  name : string;  (** name *)
  web_pubsub_custom_certificate_id : string;
      (** web_pubsub_custom_certificate_id *)
  web_pubsub_id : string;  (** web_pubsub_id *)
  timeouts : azurerm_web_pubsub_custom_domain__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_web_pubsub_custom_domain *)

let azurerm_web_pubsub_custom_domain ?timeouts ~domain_name ~name
    ~web_pubsub_custom_certificate_id ~web_pubsub_id __resource_id =
  let __resource_type = "azurerm_web_pubsub_custom_domain" in
  let __resource =
    {
      domain_name;
      name;
      web_pubsub_custom_certificate_id;
      web_pubsub_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_web_pubsub_custom_domain __resource);
  ()

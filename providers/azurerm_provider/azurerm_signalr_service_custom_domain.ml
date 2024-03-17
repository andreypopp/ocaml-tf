(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_signalr_service_custom_domain__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_signalr_service_custom_domain__timeouts *)

type azurerm_signalr_service_custom_domain = {
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  signalr_custom_certificate_id : string prop;
      (** signalr_custom_certificate_id *)
  signalr_service_id : string prop;  (** signalr_service_id *)
  timeouts : azurerm_signalr_service_custom_domain__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_signalr_service_custom_domain *)

let azurerm_signalr_service_custom_domain ?id ?timeouts ~domain_name
    ~name ~signalr_custom_certificate_id ~signalr_service_id
    __resource_id =
  let __resource_type = "azurerm_signalr_service_custom_domain" in
  let __resource =
    {
      domain_name;
      id;
      name;
      signalr_custom_certificate_id;
      signalr_service_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_signalr_service_custom_domain __resource);
  ()

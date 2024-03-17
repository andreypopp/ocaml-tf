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

type t = {
  domain_name : string prop;
  id : string prop;
  name : string prop;
  signalr_custom_certificate_id : string prop;
  signalr_service_id : string prop;
}

let azurerm_signalr_service_custom_domain ?id ?timeouts ~domain_name
    ~name ~signalr_custom_certificate_id ~signalr_service_id
    __resource_id =
  let __resource_type = "azurerm_signalr_service_custom_domain" in
  let __resource =
    ({
       domain_name;
       id;
       name;
       signalr_custom_certificate_id;
       signalr_service_id;
       timeouts;
     }
      : azurerm_signalr_service_custom_domain)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_signalr_service_custom_domain __resource);
  let __resource_attributes =
    ({
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       signalr_custom_certificate_id =
         Prop.computed __resource_type __resource_id
           "signalr_custom_certificate_id";
       signalr_service_id =
         Prop.computed __resource_type __resource_id
           "signalr_service_id";
     }
      : t)
  in
  __resource_attributes

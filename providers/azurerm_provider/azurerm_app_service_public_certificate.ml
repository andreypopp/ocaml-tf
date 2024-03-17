(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_app_service_public_certificate__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_app_service_public_certificate__timeouts *)

type azurerm_app_service_public_certificate = {
  app_service_name : string;  (** app_service_name *)
  blob : string;  (** blob *)
  certificate_location : string;  (** certificate_location *)
  certificate_name : string;  (** certificate_name *)
  resource_group_name : string;  (** resource_group_name *)
  timeouts : azurerm_app_service_public_certificate__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_public_certificate *)

let azurerm_app_service_public_certificate ?timeouts
    ~app_service_name ~blob ~certificate_location ~certificate_name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_app_service_public_certificate" in
  let __resource =
    {
      app_service_name;
      blob;
      certificate_location;
      certificate_name;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_public_certificate __resource);
  ()

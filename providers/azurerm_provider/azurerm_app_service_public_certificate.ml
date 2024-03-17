(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_app_service_public_certificate__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_app_service_public_certificate__timeouts *)

type azurerm_app_service_public_certificate = {
  app_service_name : string prop;  (** app_service_name *)
  blob : string prop;  (** blob *)
  certificate_location : string prop;  (** certificate_location *)
  certificate_name : string prop;  (** certificate_name *)
  id : string prop option; [@option]  (** id *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : azurerm_app_service_public_certificate__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_public_certificate *)

type t = {
  app_service_name : string prop;
  blob : string prop;
  certificate_location : string prop;
  certificate_name : string prop;
  id : string prop;
  resource_group_name : string prop;
  thumbprint : string prop;
}

let azurerm_app_service_public_certificate ?id ?timeouts
    ~app_service_name ~blob ~certificate_location ~certificate_name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_app_service_public_certificate" in
  let __resource =
    ({
       app_service_name;
       blob;
       certificate_location;
       certificate_name;
       id;
       resource_group_name;
       timeouts;
     }
      : azurerm_app_service_public_certificate)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_public_certificate __resource);
  let __resource_attributes =
    ({
       app_service_name =
         Prop.computed __resource_type __resource_id
           "app_service_name";
       blob = Prop.computed __resource_type __resource_id "blob";
       certificate_location =
         Prop.computed __resource_type __resource_id
           "certificate_location";
       certificate_name =
         Prop.computed __resource_type __resource_id
           "certificate_name";
       id = Prop.computed __resource_type __resource_id "id";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       thumbprint =
         Prop.computed __resource_type __resource_id "thumbprint";
     }
      : t)
  in
  __resource_attributes

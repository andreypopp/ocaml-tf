(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_app_service_certificate_order__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_app_service_certificate_order__timeouts *)

type azurerm_app_service_certificate_order__certificates = {
  certificate_name : string prop;  (** certificate_name *)
  key_vault_id : string prop;  (** key_vault_id *)
  key_vault_secret_name : string prop;  (** key_vault_secret_name *)
  provisioning_state : string prop;  (** provisioning_state *)
}
[@@deriving yojson_of]

type azurerm_app_service_certificate_order = {
  auto_renew : bool prop option; [@option]  (** auto_renew *)
  csr : string prop option; [@option]  (** csr *)
  distinguished_name : string prop option; [@option]
      (** distinguished_name *)
  id : string prop option; [@option]  (** id *)
  key_size : float prop option; [@option]  (** key_size *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  product_type : string prop option; [@option]  (** product_type *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  validity_in_years : float prop option; [@option]
      (** validity_in_years *)
  timeouts : azurerm_app_service_certificate_order__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_certificate_order *)

type t = {
  app_service_certificate_not_renewable_reasons : string list prop;
  auto_renew : bool prop;
  certificates :
    azurerm_app_service_certificate_order__certificates list prop;
  csr : string prop;
  distinguished_name : string prop;
  domain_verification_token : string prop;
  expiration_time : string prop;
  id : string prop;
  intermediate_thumbprint : string prop;
  is_private_key_external : bool prop;
  key_size : float prop;
  location : string prop;
  name : string prop;
  product_type : string prop;
  resource_group_name : string prop;
  root_thumbprint : string prop;
  signed_certificate_thumbprint : string prop;
  status : string prop;
  tags : (string * string) list prop;
  validity_in_years : float prop;
}

let azurerm_app_service_certificate_order ?auto_renew ?csr
    ?distinguished_name ?id ?key_size ?product_type ?tags
    ?validity_in_years ?timeouts ~location ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_app_service_certificate_order" in
  let __resource =
    ({
       auto_renew;
       csr;
       distinguished_name;
       id;
       key_size;
       location;
       name;
       product_type;
       resource_group_name;
       tags;
       validity_in_years;
       timeouts;
     }
      : azurerm_app_service_certificate_order)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_certificate_order __resource);
  let __resource_attributes =
    ({
       app_service_certificate_not_renewable_reasons =
         Prop.computed __resource_type __resource_id
           "app_service_certificate_not_renewable_reasons";
       auto_renew =
         Prop.computed __resource_type __resource_id "auto_renew";
       certificates =
         Prop.computed __resource_type __resource_id "certificates";
       csr = Prop.computed __resource_type __resource_id "csr";
       distinguished_name =
         Prop.computed __resource_type __resource_id
           "distinguished_name";
       domain_verification_token =
         Prop.computed __resource_type __resource_id
           "domain_verification_token";
       expiration_time =
         Prop.computed __resource_type __resource_id
           "expiration_time";
       id = Prop.computed __resource_type __resource_id "id";
       intermediate_thumbprint =
         Prop.computed __resource_type __resource_id
           "intermediate_thumbprint";
       is_private_key_external =
         Prop.computed __resource_type __resource_id
           "is_private_key_external";
       key_size =
         Prop.computed __resource_type __resource_id "key_size";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       product_type =
         Prop.computed __resource_type __resource_id "product_type";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       root_thumbprint =
         Prop.computed __resource_type __resource_id
           "root_thumbprint";
       signed_certificate_thumbprint =
         Prop.computed __resource_type __resource_id
           "signed_certificate_thumbprint";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       validity_in_years =
         Prop.computed __resource_type __resource_id
           "validity_in_years";
     }
      : t)
  in
  __resource_attributes

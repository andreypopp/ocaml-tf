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

let azurerm_app_service_certificate_order ?auto_renew ?csr
    ?distinguished_name ?id ?key_size ?product_type ?tags
    ?validity_in_years ?timeouts ~location ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_app_service_certificate_order" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_certificate_order __resource);
  ()

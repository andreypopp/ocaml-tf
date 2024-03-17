(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_app_service_certificate_order__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_app_service_certificate_order__timeouts *)

type azurerm_app_service_certificate_order__certificates = {
  certificate_name : string;  (** certificate_name *)
  key_vault_id : string;  (** key_vault_id *)
  key_vault_secret_name : string;  (** key_vault_secret_name *)
  provisioning_state : string;  (** provisioning_state *)
}
[@@deriving yojson_of]

type azurerm_app_service_certificate_order = {
  auto_renew : bool option; [@option]  (** auto_renew *)
  key_size : float option; [@option]  (** key_size *)
  location : string;  (** location *)
  name : string;  (** name *)
  product_type : string option; [@option]  (** product_type *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  validity_in_years : float option; [@option]
      (** validity_in_years *)
  timeouts : azurerm_app_service_certificate_order__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_certificate_order *)

let azurerm_app_service_certificate_order ?auto_renew ?key_size
    ?product_type ?tags ?validity_in_years ?timeouts ~location ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_app_service_certificate_order" in
  let __resource =
    {
      auto_renew;
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

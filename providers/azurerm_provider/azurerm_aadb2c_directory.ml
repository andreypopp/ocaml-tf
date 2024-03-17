(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_aadb2c_directory__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_aadb2c_directory__timeouts *)

type azurerm_aadb2c_directory = {
  country_code : string prop option; [@option]
      (** Country code of the B2C tenant. See https://aka.ms/B2CDataResidency for valid country codes. *)
  data_residency_location : string prop;
      (** Location in which the B2C tenant is hosted and data resides. See https://aka.ms/B2CDataResidency for more information. *)
  display_name : string prop option; [@option]
      (** The initial display name of the B2C tenant. *)
  domain_name : string prop;
      (** Domain name of the B2C tenant, including onmicrosoft.com suffix. *)
  id : string prop option; [@option]  (** id *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;
      (** Billing SKU for the B2C tenant. See https://aka.ms/b2cBilling for more information. *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_aadb2c_directory__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_aadb2c_directory *)

let azurerm_aadb2c_directory ?country_code ?display_name ?id ?tags
    ?timeouts ~data_residency_location ~domain_name
    ~resource_group_name ~sku_name __resource_id =
  let __resource_type = "azurerm_aadb2c_directory" in
  let __resource =
    {
      country_code;
      data_residency_location;
      display_name;
      domain_name;
      id;
      resource_group_name;
      sku_name;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_aadb2c_directory __resource);
  ()

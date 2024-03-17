(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_aadb2c_directory__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_aadb2c_directory__timeouts *)

type azurerm_aadb2c_directory = {
  data_residency_location : string;
      (** Location in which the B2C tenant is hosted and data resides. See https://aka.ms/B2CDataResidency for more information. *)
  domain_name : string;
      (** Domain name of the B2C tenant, including onmicrosoft.com suffix. *)
  resource_group_name : string;  (** resource_group_name *)
  sku_name : string;
      (** Billing SKU for the B2C tenant. See https://aka.ms/b2cBilling for more information. *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_aadb2c_directory__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_aadb2c_directory *)

let azurerm_aadb2c_directory ?tags ?timeouts ~data_residency_location
    ~domain_name ~resource_group_name ~sku_name __resource_id =
  let __resource_type = "azurerm_aadb2c_directory" in
  let __resource =
    {
      data_residency_location;
      domain_name;
      resource_group_name;
      sku_name;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_aadb2c_directory __resource);
  ()

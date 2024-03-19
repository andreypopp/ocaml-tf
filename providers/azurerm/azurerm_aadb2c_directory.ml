(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_aadb2c_directory *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_aadb2c_directory ?country_code ?display_name ?id ?tags
    ?timeouts ~data_residency_location ~domain_name
    ~resource_group_name ~sku_name () : azurerm_aadb2c_directory =
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

type t = {
  billing_type : string prop;
  country_code : string prop;
  data_residency_location : string prop;
  display_name : string prop;
  domain_name : string prop;
  effective_start_date : string prop;
  id : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
  tenant_id : string prop;
}

let register ?tf_module ?country_code ?display_name ?id ?tags
    ?timeouts ~data_residency_location ~domain_name
    ~resource_group_name ~sku_name __resource_id =
  let __resource_type = "azurerm_aadb2c_directory" in
  let __resource =
    azurerm_aadb2c_directory ?country_code ?display_name ?id ?tags
      ?timeouts ~data_residency_location ~domain_name
      ~resource_group_name ~sku_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_aadb2c_directory __resource);
  let __resource_attributes =
    ({
       billing_type =
         Prop.computed __resource_type __resource_id "billing_type";
       country_code =
         Prop.computed __resource_type __resource_id "country_code";
       data_residency_location =
         Prop.computed __resource_type __resource_id
           "data_residency_location";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       effective_start_date =
         Prop.computed __resource_type __resource_id
           "effective_start_date";
       id = Prop.computed __resource_type __resource_id "id";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       sku_name =
         Prop.computed __resource_type __resource_id "sku_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tenant_id =
         Prop.computed __resource_type __resource_id "tenant_id";
     }
      : t)
  in
  __resource_attributes

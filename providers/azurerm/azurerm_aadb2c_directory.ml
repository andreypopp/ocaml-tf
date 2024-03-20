(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?country_code ?display_name ?id ?tags ?timeouts
    ~data_residency_location ~domain_name ~resource_group_name
    ~sku_name __id =
  let __type = "azurerm_aadb2c_directory" in
  let __attrs =
    ({
       billing_type = Prop.computed __type __id "billing_type";
       country_code = Prop.computed __type __id "country_code";
       data_residency_location =
         Prop.computed __type __id "data_residency_location";
       display_name = Prop.computed __type __id "display_name";
       domain_name = Prop.computed __type __id "domain_name";
       effective_start_date =
         Prop.computed __type __id "effective_start_date";
       id = Prop.computed __type __id "id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       tags = Prop.computed __type __id "tags";
       tenant_id = Prop.computed __type __id "tenant_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_aadb2c_directory
        (azurerm_aadb2c_directory ?country_code ?display_name ?id
           ?tags ?timeouts ~data_residency_location ~domain_name
           ~resource_group_name ~sku_name ());
    attrs = __attrs;
  }

let register ?tf_module ?country_code ?display_name ?id ?tags
    ?timeouts ~data_residency_location ~domain_name
    ~resource_group_name ~sku_name __id =
  let (r : _ Tf_core.resource) =
    make ?country_code ?display_name ?id ?tags ?timeouts
      ~data_residency_location ~domain_name ~resource_group_name
      ~sku_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

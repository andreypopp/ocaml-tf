(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_dedicated_host__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_dedicated_host__timeouts *)

type azurerm_dedicated_host = {
  auto_replace_on_failure : bool prop option; [@option]
      (** auto_replace_on_failure *)
  dedicated_host_group_id : string prop;
      (** dedicated_host_group_id *)
  id : string prop option; [@option]  (** id *)
  license_type : string prop option; [@option]  (** license_type *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  platform_fault_domain : float prop;  (** platform_fault_domain *)
  sku_name : string prop;  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_dedicated_host__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dedicated_host *)

type t = {
  auto_replace_on_failure : bool prop;
  dedicated_host_group_id : string prop;
  id : string prop;
  license_type : string prop;
  location : string prop;
  name : string prop;
  platform_fault_domain : float prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

let azurerm_dedicated_host ?auto_replace_on_failure ?id ?license_type
    ?tags ?timeouts ~dedicated_host_group_id ~location ~name
    ~platform_fault_domain ~sku_name __resource_id =
  let __resource_type = "azurerm_dedicated_host" in
  let __resource =
    ({
       auto_replace_on_failure;
       dedicated_host_group_id;
       id;
       license_type;
       location;
       name;
       platform_fault_domain;
       sku_name;
       tags;
       timeouts;
     }
      : azurerm_dedicated_host)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_dedicated_host __resource);
  let __resource_attributes =
    ({
       auto_replace_on_failure =
         Prop.computed __resource_type __resource_id
           "auto_replace_on_failure";
       dedicated_host_group_id =
         Prop.computed __resource_type __resource_id
           "dedicated_host_group_id";
       id = Prop.computed __resource_type __resource_id "id";
       license_type =
         Prop.computed __resource_type __resource_id "license_type";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       platform_fault_domain =
         Prop.computed __resource_type __resource_id
           "platform_fault_domain";
       sku_name =
         Prop.computed __resource_type __resource_id "sku_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes

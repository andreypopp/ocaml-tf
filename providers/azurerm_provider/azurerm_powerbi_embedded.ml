(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_powerbi_embedded__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_powerbi_embedded__timeouts *)

type azurerm_powerbi_embedded = {
  administrators : string prop list;  (** administrators *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  mode : string prop option; [@option]  (** mode *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_powerbi_embedded__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_powerbi_embedded *)

type t = {
  administrators : string list prop;
  id : string prop;
  location : string prop;
  mode : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

let azurerm_powerbi_embedded ?id ?mode ?tags ?timeouts
    ~administrators ~location ~name ~resource_group_name ~sku_name
    __resource_id =
  let __resource_type = "azurerm_powerbi_embedded" in
  let __resource =
    ({
       administrators;
       id;
       location;
       mode;
       name;
       resource_group_name;
       sku_name;
       tags;
       timeouts;
     }
      : azurerm_powerbi_embedded)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_powerbi_embedded __resource);
  let __resource_attributes =
    ({
       administrators =
         Prop.computed __resource_type __resource_id "administrators";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       mode = Prop.computed __resource_type __resource_id "mode";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       sku_name =
         Prop.computed __resource_type __resource_id "sku_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes

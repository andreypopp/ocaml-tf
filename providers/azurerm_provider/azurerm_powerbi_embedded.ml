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

let azurerm_powerbi_embedded ?id ?mode ?tags ?timeouts
    ~administrators ~location ~name ~resource_group_name ~sku_name
    __resource_id =
  let __resource_type = "azurerm_powerbi_embedded" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_powerbi_embedded __resource);
  ()

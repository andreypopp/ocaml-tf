(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_powerbi_embedded__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_powerbi_embedded__timeouts *)

type azurerm_powerbi_embedded = {
  administrators : string list;  (** administrators *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  mode : string option; [@option]  (** mode *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  sku_name : string;  (** sku_name *)
  tags : (string * string) list option; [@option]  (** tags *)
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

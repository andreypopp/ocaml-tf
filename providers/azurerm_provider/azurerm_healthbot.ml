(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_healthbot__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_healthbot__timeouts *)

type azurerm_healthbot = {
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  sku_name : string;  (** sku_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_healthbot__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_healthbot *)

let azurerm_healthbot ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku_name __resource_id =
  let __resource_type = "azurerm_healthbot" in
  let __resource =
    { location; name; resource_group_name; sku_name; tags; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_healthbot __resource);
  ()

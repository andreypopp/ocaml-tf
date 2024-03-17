(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_nat_gateway__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_nat_gateway__timeouts *)

type azurerm_nat_gateway = {
  id : string prop option; [@option]  (** id *)
  idle_timeout_in_minutes : float prop option; [@option]
      (** idle_timeout_in_minutes *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop option; [@option]  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zones : string prop list option; [@option]  (** zones *)
  timeouts : azurerm_nat_gateway__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_nat_gateway *)

let azurerm_nat_gateway ?id ?idle_timeout_in_minutes ?sku_name ?tags
    ?zones ?timeouts ~location ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_nat_gateway" in
  let __resource =
    {
      id;
      idle_timeout_in_minutes;
      location;
      name;
      resource_group_name;
      sku_name;
      tags;
      zones;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_nat_gateway __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_nat_gateway__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_nat_gateway__timeouts *)

type azurerm_nat_gateway = {
  idle_timeout_in_minutes : float option; [@option]
      (** idle_timeout_in_minutes *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  sku_name : string option; [@option]  (** sku_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  zones : string list option; [@option]  (** zones *)
  timeouts : azurerm_nat_gateway__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_nat_gateway *)

let azurerm_nat_gateway ?idle_timeout_in_minutes ?sku_name ?tags
    ?zones ?timeouts ~location ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_nat_gateway" in
  let __resource =
    {
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

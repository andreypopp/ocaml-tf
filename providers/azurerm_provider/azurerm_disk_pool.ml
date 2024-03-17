(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_disk_pool__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_disk_pool__timeouts *)

type azurerm_disk_pool = {
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  sku_name : string;  (** sku_name *)
  subnet_id : string;  (** subnet_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  zones : string list;  (** zones *)
  timeouts : azurerm_disk_pool__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_disk_pool *)

let azurerm_disk_pool ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku_name ~subnet_id ~zones __resource_id =
  let __resource_type = "azurerm_disk_pool" in
  let __resource =
    {
      location;
      name;
      resource_group_name;
      sku_name;
      subnet_id;
      tags;
      zones;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_disk_pool __resource);
  ()

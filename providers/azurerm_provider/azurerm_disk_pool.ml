(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_disk_pool__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_disk_pool__timeouts *)

type azurerm_disk_pool = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  subnet_id : string prop;  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zones : string prop list;  (** zones *)
  timeouts : azurerm_disk_pool__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_disk_pool *)

let azurerm_disk_pool ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku_name ~subnet_id ~zones __resource_id =
  let __resource_type = "azurerm_disk_pool" in
  let __resource =
    {
      id;
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

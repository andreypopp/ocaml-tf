(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_maps_creator__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_maps_creator__timeouts *)

type azurerm_maps_creator = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  maps_account_id : string prop;  (** maps_account_id *)
  name : string prop;  (** name *)
  storage_units : float prop;  (** storage_units *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_maps_creator__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_maps_creator *)

let azurerm_maps_creator ?id ?tags ?timeouts ~location
    ~maps_account_id ~name ~storage_units __resource_id =
  let __resource_type = "azurerm_maps_creator" in
  let __resource =
    {
      id;
      location;
      maps_account_id;
      name;
      storage_units;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_maps_creator __resource);
  ()

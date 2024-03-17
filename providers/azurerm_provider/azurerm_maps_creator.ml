(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_maps_creator__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_maps_creator__timeouts *)

type azurerm_maps_creator = {
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  maps_account_id : string;  (** maps_account_id *)
  name : string;  (** name *)
  storage_units : float;  (** storage_units *)
  tags : (string * string) list option; [@option]  (** tags *)
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

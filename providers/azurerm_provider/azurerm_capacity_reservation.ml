(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_capacity_reservation__sku = {
  capacity : float;  (** capacity *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_capacity_reservation__sku *)

type azurerm_capacity_reservation__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_capacity_reservation__timeouts *)

type azurerm_capacity_reservation = {
  capacity_reservation_group_id : string;
      (** capacity_reservation_group_id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  zone : string option; [@option]  (** zone *)
  sku : azurerm_capacity_reservation__sku list;
  timeouts : azurerm_capacity_reservation__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_capacity_reservation *)

let azurerm_capacity_reservation ?tags ?zone ?timeouts
    ~capacity_reservation_group_id ~name ~sku __resource_id =
  let __resource_type = "azurerm_capacity_reservation" in
  let __resource =
    {
      capacity_reservation_group_id;
      name;
      tags;
      zone;
      sku;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_capacity_reservation __resource);
  ()

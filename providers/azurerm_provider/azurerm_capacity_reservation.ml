(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_capacity_reservation__sku = {
  capacity : float prop;  (** capacity *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_capacity_reservation__sku *)

type azurerm_capacity_reservation__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_capacity_reservation__timeouts *)

type azurerm_capacity_reservation = {
  capacity_reservation_group_id : string prop;
      (** capacity_reservation_group_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zone : string prop option; [@option]  (** zone *)
  sku : azurerm_capacity_reservation__sku list;
  timeouts : azurerm_capacity_reservation__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_capacity_reservation *)

let azurerm_capacity_reservation ?id ?tags ?zone ?timeouts
    ~capacity_reservation_group_id ~name ~sku __resource_id =
  let __resource_type = "azurerm_capacity_reservation" in
  let __resource =
    {
      capacity_reservation_group_id;
      id;
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

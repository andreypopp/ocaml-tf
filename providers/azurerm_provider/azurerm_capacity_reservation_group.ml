(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_capacity_reservation_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_capacity_reservation_group__timeouts *)

type azurerm_capacity_reservation_group = {
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  zones : string list option; [@option]  (** zones *)
  timeouts : azurerm_capacity_reservation_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_capacity_reservation_group *)

let azurerm_capacity_reservation_group ?tags ?zones ?timeouts
    ~location ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_capacity_reservation_group" in
  let __resource =
    { location; name; resource_group_name; tags; zones; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_capacity_reservation_group __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_capacity_reservation_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_capacity_reservation_group__timeouts *)

type azurerm_capacity_reservation_group = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zones : string prop list option; [@option]  (** zones *)
  timeouts : azurerm_capacity_reservation_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_capacity_reservation_group *)

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  zones : string list prop;
}

let azurerm_capacity_reservation_group ?id ?tags ?zones ?timeouts
    ~location ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_capacity_reservation_group" in
  let __resource =
    ({
       id;
       location;
       name;
       resource_group_name;
       tags;
       zones;
       timeouts;
     }
      : azurerm_capacity_reservation_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_capacity_reservation_group __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       zones = Prop.computed __resource_type __resource_id "zones";
     }
      : t)
  in
  __resource_attributes

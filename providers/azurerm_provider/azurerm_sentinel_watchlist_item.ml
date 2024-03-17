(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sentinel_watchlist_item__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_watchlist_item__timeouts *)

type azurerm_sentinel_watchlist_item = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  properties : (string * string prop) list;  (** properties *)
  watchlist_id : string prop;  (** watchlist_id *)
  timeouts : azurerm_sentinel_watchlist_item__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_watchlist_item *)

type t = {
  id : string prop;
  name : string prop;
  properties : (string * string) list prop;
  watchlist_id : string prop;
}

let azurerm_sentinel_watchlist_item ?id ?name ?timeouts ~properties
    ~watchlist_id __resource_id =
  let __resource_type = "azurerm_sentinel_watchlist_item" in
  let __resource =
    ({ id; name; properties; watchlist_id; timeouts }
      : azurerm_sentinel_watchlist_item)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_watchlist_item __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       properties =
         Prop.computed __resource_type __resource_id "properties";
       watchlist_id =
         Prop.computed __resource_type __resource_id "watchlist_id";
     }
      : t)
  in
  __resource_attributes

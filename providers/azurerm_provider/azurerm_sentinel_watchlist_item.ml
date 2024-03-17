(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sentinel_watchlist_item__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_watchlist_item__timeouts *)

type azurerm_sentinel_watchlist_item = {
  properties : (string * string) list;  (** properties *)
  watchlist_id : string;  (** watchlist_id *)
  timeouts : azurerm_sentinel_watchlist_item__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_watchlist_item *)

let azurerm_sentinel_watchlist_item ?timeouts ~properties
    ~watchlist_id __resource_id =
  let __resource_type = "azurerm_sentinel_watchlist_item" in
  let __resource = { properties; watchlist_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_watchlist_item __resource);
  ()

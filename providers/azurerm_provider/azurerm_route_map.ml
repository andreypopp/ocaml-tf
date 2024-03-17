(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_route_map__rule__action__parameter = {
  as_path : string list option; [@option]  (** as_path *)
  community : string list option; [@option]  (** community *)
  route_prefix : string list option; [@option]  (** route_prefix *)
}
[@@deriving yojson_of]
(** azurerm_route_map__rule__action__parameter *)

type azurerm_route_map__rule__action = {
  type_ : string; [@key "type"]  (** type *)
  parameter : azurerm_route_map__rule__action__parameter list;
}
[@@deriving yojson_of]
(** azurerm_route_map__rule__action *)

type azurerm_route_map__rule__match_criterion = {
  as_path : string list option; [@option]  (** as_path *)
  community : string list option; [@option]  (** community *)
  match_condition : string;  (** match_condition *)
  route_prefix : string list option; [@option]  (** route_prefix *)
}
[@@deriving yojson_of]
(** azurerm_route_map__rule__match_criterion *)

type azurerm_route_map__rule = {
  name : string;  (** name *)
  next_step_if_matched : string option; [@option]
      (** next_step_if_matched *)
  action : azurerm_route_map__rule__action list;
  match_criterion : azurerm_route_map__rule__match_criterion list;
}
[@@deriving yojson_of]
(** azurerm_route_map__rule *)

type azurerm_route_map__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_route_map__timeouts *)

type azurerm_route_map = {
  name : string;  (** name *)
  virtual_hub_id : string;  (** virtual_hub_id *)
  rule : azurerm_route_map__rule list;
  timeouts : azurerm_route_map__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_route_map *)

let azurerm_route_map ?timeouts ~name ~virtual_hub_id ~rule
    __resource_id =
  let __resource_type = "azurerm_route_map" in
  let __resource = { name; virtual_hub_id; rule; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_route_map __resource);
  ()

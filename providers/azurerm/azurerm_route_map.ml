(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_route_map__rule__action__parameter = {
  as_path : string prop list option; [@option]  (** as_path *)
  community : string prop list option; [@option]  (** community *)
  route_prefix : string prop list option; [@option]
      (** route_prefix *)
}
[@@deriving yojson_of]
(** azurerm_route_map__rule__action__parameter *)

type azurerm_route_map__rule__action = {
  type_ : string prop; [@key "type"]  (** type *)
  parameter : azurerm_route_map__rule__action__parameter list;
}
[@@deriving yojson_of]
(** azurerm_route_map__rule__action *)

type azurerm_route_map__rule__match_criterion = {
  as_path : string prop list option; [@option]  (** as_path *)
  community : string prop list option; [@option]  (** community *)
  match_condition : string prop;  (** match_condition *)
  route_prefix : string prop list option; [@option]
      (** route_prefix *)
}
[@@deriving yojson_of]
(** azurerm_route_map__rule__match_criterion *)

type azurerm_route_map__rule = {
  name : string prop;  (** name *)
  next_step_if_matched : string prop option; [@option]
      (** next_step_if_matched *)
  action : azurerm_route_map__rule__action list;
  match_criterion : azurerm_route_map__rule__match_criterion list;
}
[@@deriving yojson_of]
(** azurerm_route_map__rule *)

type azurerm_route_map__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_route_map__timeouts *)

type azurerm_route_map = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  virtual_hub_id : string prop;  (** virtual_hub_id *)
  rule : azurerm_route_map__rule list;
  timeouts : azurerm_route_map__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_route_map *)

type t = {
  id : string prop;
  name : string prop;
  virtual_hub_id : string prop;
}

let azurerm_route_map ?id ?timeouts ~name ~virtual_hub_id ~rule
    __resource_id =
  let __resource_type = "azurerm_route_map" in
  let __resource =
    ({ id; name; virtual_hub_id; rule; timeouts }
      : azurerm_route_map)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_route_map __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       virtual_hub_id =
         Prop.computed __resource_type __resource_id "virtual_hub_id";
     }
      : t)
  in
  __resource_attributes

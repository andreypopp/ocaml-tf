(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_route_filter__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_route_filter__timeouts *)

type azurerm_route_filter__rule = {
  access : string prop;  (** access *)
  communities : string prop list;  (** communities *)
  name : string prop;  (** name *)
  rule_type : string prop;  (** rule_type *)
}
[@@deriving yojson_of]

type azurerm_route_filter = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  rule : azurerm_route_filter__rule list option; [@option]
      (** rule *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_route_filter__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_route_filter *)

let azurerm_route_filter ?id ?rule ?tags ?timeouts ~location ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_route_filter" in
  let __resource =
    { id; location; name; resource_group_name; rule; tags; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_route_filter __resource);
  ()

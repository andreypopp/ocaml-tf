(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_custom_provider__action = {
  endpoint : string;  (** endpoint *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_custom_provider__action *)

type azurerm_custom_provider__resource_type = {
  endpoint : string;  (** endpoint *)
  name : string;  (** name *)
  routing_type : string option; [@option]  (** routing_type *)
}
[@@deriving yojson_of]
(** azurerm_custom_provider__resource_type *)

type azurerm_custom_provider__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_custom_provider__timeouts *)

type azurerm_custom_provider__validation = {
  specification : string;  (** specification *)
}
[@@deriving yojson_of]
(** azurerm_custom_provider__validation *)

type azurerm_custom_provider = {
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  action : azurerm_custom_provider__action list;
  resource_type : azurerm_custom_provider__resource_type list;
  timeouts : azurerm_custom_provider__timeouts option;
  validation : azurerm_custom_provider__validation list;
}
[@@deriving yojson_of]
(** azurerm_custom_provider *)

let azurerm_custom_provider ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~action ~resource_type ~validation
    __resource_id =
  let __resource_type = "azurerm_custom_provider" in
  let __resource =
    {
      id;
      location;
      name;
      resource_group_name;
      tags;
      action;
      resource_type;
      timeouts;
      validation;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_custom_provider __resource);
  ()

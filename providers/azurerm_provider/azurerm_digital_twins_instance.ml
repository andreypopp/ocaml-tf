(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_digital_twins_instance__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_digital_twins_instance__identity *)

type azurerm_digital_twins_instance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_digital_twins_instance__timeouts *)

type azurerm_digital_twins_instance = {
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  identity : azurerm_digital_twins_instance__identity list;
  timeouts : azurerm_digital_twins_instance__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_digital_twins_instance *)

let azurerm_digital_twins_instance ?tags ?timeouts ~location ~name
    ~resource_group_name ~identity __resource_id =
  let __resource_type = "azurerm_digital_twins_instance" in
  let __resource =
    { location; name; resource_group_name; tags; identity; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_digital_twins_instance __resource);
  ()

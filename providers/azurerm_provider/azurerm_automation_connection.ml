(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_automation_connection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_connection__timeouts *)

type azurerm_automation_connection = {
  automation_account_name : string;  (** automation_account_name *)
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  type_ : string; [@key "type"]  (** type *)
  values : (string * string) list;  (** values *)
  timeouts : azurerm_automation_connection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_connection *)

let azurerm_automation_connection ?description ?timeouts
    ~automation_account_name ~name ~resource_group_name ~type_
    ~values __resource_id =
  let __resource_type = "azurerm_automation_connection" in
  let __resource =
    {
      automation_account_name;
      description;
      name;
      resource_group_name;
      type_;
      values;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_connection __resource);
  ()

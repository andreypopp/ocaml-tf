(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_connection__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_connection__timeouts *)

type azurerm_automation_connection = {
  automation_account_name : string prop;
      (** automation_account_name *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  type_ : string prop; [@key "type"]  (** type *)
  values : (string * string prop) list;  (** values *)
  timeouts : azurerm_automation_connection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_connection *)

let azurerm_automation_connection ?description ?id ?timeouts
    ~automation_account_name ~name ~resource_group_name ~type_
    ~values __resource_id =
  let __resource_type = "azurerm_automation_connection" in
  let __resource =
    {
      automation_account_name;
      description;
      id;
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

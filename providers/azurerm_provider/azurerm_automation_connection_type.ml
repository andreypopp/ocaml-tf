(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_connection_type__field = {
  is_encrypted : bool option; [@option]  (** is_encrypted *)
  is_optional : bool option; [@option]  (** is_optional *)
  name : string;  (** name *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_automation_connection_type__field *)

type azurerm_automation_connection_type__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_automation_connection_type__timeouts *)

type azurerm_automation_connection_type = {
  automation_account_name : string;  (** automation_account_name *)
  id : string option; [@option]  (** id *)
  is_global : bool option; [@option]  (** is_global *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  field : azurerm_automation_connection_type__field list;
  timeouts : azurerm_automation_connection_type__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_connection_type *)

let azurerm_automation_connection_type ?id ?is_global ?timeouts
    ~automation_account_name ~name ~resource_group_name ~field
    __resource_id =
  let __resource_type = "azurerm_automation_connection_type" in
  let __resource =
    {
      automation_account_name;
      id;
      is_global;
      name;
      resource_group_name;
      field;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_connection_type __resource);
  ()

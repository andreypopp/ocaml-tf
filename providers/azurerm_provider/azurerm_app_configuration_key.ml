(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_app_configuration_key__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_app_configuration_key__timeouts *)

type azurerm_app_configuration_key = {
  configuration_store_id : string;  (** configuration_store_id *)
  key : string;  (** key *)
  label : string option; [@option]  (** label *)
  locked : bool option; [@option]  (** locked *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  value : string option; [@option]  (** value *)
  vault_key_reference : string option; [@option]
      (** vault_key_reference *)
  timeouts : azurerm_app_configuration_key__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_configuration_key *)

let azurerm_app_configuration_key ?label ?locked ?tags ?type_ ?value
    ?vault_key_reference ?timeouts ~configuration_store_id ~key
    __resource_id =
  let __resource_type = "azurerm_app_configuration_key" in
  let __resource =
    {
      configuration_store_id;
      key;
      label;
      locked;
      tags;
      type_;
      value;
      vault_key_reference;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_configuration_key __resource);
  ()

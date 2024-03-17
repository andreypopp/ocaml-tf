(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_global_schema__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_global_schema__timeouts *)

type azurerm_api_management_global_schema = {
  api_management_name : string;  (** api_management_name *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  resource_group_name : string;  (** resource_group_name *)
  schema_id : string;  (** schema_id *)
  type_ : string; [@key "type"]  (** type *)
  value : string;  (** value *)
  timeouts : azurerm_api_management_global_schema__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_global_schema *)

let azurerm_api_management_global_schema ?description ?id ?timeouts
    ~api_management_name ~resource_group_name ~schema_id ~type_
    ~value __resource_id =
  let __resource_type = "azurerm_api_management_global_schema" in
  let __resource =
    {
      api_management_name;
      description;
      id;
      resource_group_name;
      schema_id;
      type_;
      value;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_global_schema __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_api_schema__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api_schema__timeouts *)

type azurerm_api_management_api_schema = {
  api_management_name : string prop;  (** api_management_name *)
  api_name : string prop;  (** api_name *)
  components : string prop option; [@option]  (** components *)
  content_type : string prop;  (** content_type *)
  definitions : string prop option; [@option]  (** definitions *)
  id : string prop option; [@option]  (** id *)
  resource_group_name : string prop;  (** resource_group_name *)
  schema_id : string prop;  (** schema_id *)
  value : string prop option; [@option]  (** value *)
  timeouts : azurerm_api_management_api_schema__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_api_schema *)

let azurerm_api_management_api_schema ?components ?definitions ?id
    ?value ?timeouts ~api_management_name ~api_name ~content_type
    ~resource_group_name ~schema_id __resource_id =
  let __resource_type = "azurerm_api_management_api_schema" in
  let __resource =
    {
      api_management_name;
      api_name;
      components;
      content_type;
      definitions;
      id;
      resource_group_name;
      schema_id;
      value;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_api_schema __resource);
  ()

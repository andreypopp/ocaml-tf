(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_logic_app_integration_account_map__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_map__timeouts *)

type azurerm_logic_app_integration_account_map = {
  content : string;  (** content *)
  integration_account_name : string;  (** integration_account_name *)
  map_type : string;  (** map_type *)
  metadata : (string * string) list option; [@option]
      (** metadata *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  timeouts :
    azurerm_logic_app_integration_account_map__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_map *)

let azurerm_logic_app_integration_account_map ?metadata ?timeouts
    ~content ~integration_account_name ~map_type ~name
    ~resource_group_name __resource_id =
  let __resource_type =
    "azurerm_logic_app_integration_account_map"
  in
  let __resource =
    {
      content;
      integration_account_name;
      map_type;
      metadata;
      name;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logic_app_integration_account_map __resource);
  ()
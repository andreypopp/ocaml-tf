(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_logic_app_integration_account_assembly__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_assembly__timeouts *)

type azurerm_logic_app_integration_account_assembly = {
  assembly_name : string;  (** assembly_name *)
  assembly_version : string option; [@option]
      (** assembly_version *)
  content : string option; [@option]  (** content *)
  content_link_uri : string option; [@option]
      (** content_link_uri *)
  integration_account_name : string;  (** integration_account_name *)
  metadata : (string * string) list option; [@option]
      (** metadata *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  timeouts :
    azurerm_logic_app_integration_account_assembly__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_assembly *)

let azurerm_logic_app_integration_account_assembly ?assembly_version
    ?content ?content_link_uri ?metadata ?timeouts ~assembly_name
    ~integration_account_name ~name ~resource_group_name
    __resource_id =
  let __resource_type =
    "azurerm_logic_app_integration_account_assembly"
  in
  let __resource =
    {
      assembly_name;
      assembly_version;
      content;
      content_link_uri;
      integration_account_name;
      metadata;
      name;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logic_app_integration_account_assembly
       __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_logic_app_integration_account_assembly__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_assembly__timeouts *)

type azurerm_logic_app_integration_account_assembly = {
  assembly_name : string prop;  (** assembly_name *)
  assembly_version : string prop option; [@option]
      (** assembly_version *)
  content : string prop option; [@option]  (** content *)
  content_link_uri : string prop option; [@option]
      (** content_link_uri *)
  id : string prop option; [@option]  (** id *)
  integration_account_name : string prop;
      (** integration_account_name *)
  metadata : (string * string prop) list option; [@option]
      (** metadata *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts :
    azurerm_logic_app_integration_account_assembly__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_assembly *)

let azurerm_logic_app_integration_account_assembly ?assembly_version
    ?content ?content_link_uri ?id ?metadata ?timeouts ~assembly_name
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
      id;
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

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

type t = {
  assembly_name : string prop;
  assembly_version : string prop;
  content : string prop;
  content_link_uri : string prop;
  id : string prop;
  integration_account_name : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  resource_group_name : string prop;
}

let azurerm_logic_app_integration_account_assembly ?assembly_version
    ?content ?content_link_uri ?id ?metadata ?timeouts ~assembly_name
    ~integration_account_name ~name ~resource_group_name
    __resource_id =
  let __resource_type =
    "azurerm_logic_app_integration_account_assembly"
  in
  let __resource =
    ({
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
      : azurerm_logic_app_integration_account_assembly)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logic_app_integration_account_assembly
       __resource);
  let __resource_attributes =
    ({
       assembly_name =
         Prop.computed __resource_type __resource_id "assembly_name";
       assembly_version =
         Prop.computed __resource_type __resource_id
           "assembly_version";
       content =
         Prop.computed __resource_type __resource_id "content";
       content_link_uri =
         Prop.computed __resource_type __resource_id
           "content_link_uri";
       id = Prop.computed __resource_type __resource_id "id";
       integration_account_name =
         Prop.computed __resource_type __resource_id
           "integration_account_name";
       metadata =
         Prop.computed __resource_type __resource_id "metadata";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_management_group_template_deployment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_management_group_template_deployment__timeouts *)

type azurerm_management_group_template_deployment = {
  debug_level : string option; [@option]  (** debug_level *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  management_group_id : string;  (** management_group_id *)
  name : string;  (** name *)
  parameters_content : string option; [@option]
      (** parameters_content *)
  tags : (string * string) list option; [@option]  (** tags *)
  template_content : string option; [@option]
      (** template_content *)
  template_spec_version_id : string option; [@option]
      (** template_spec_version_id *)
  timeouts :
    azurerm_management_group_template_deployment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_management_group_template_deployment *)

let azurerm_management_group_template_deployment ?debug_level ?id
    ?parameters_content ?tags ?template_content
    ?template_spec_version_id ?timeouts ~location
    ~management_group_id ~name __resource_id =
  let __resource_type =
    "azurerm_management_group_template_deployment"
  in
  let __resource =
    {
      debug_level;
      id;
      location;
      management_group_id;
      name;
      parameters_content;
      tags;
      template_content;
      template_spec_version_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_management_group_template_deployment
       __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_resource_group_template_deployment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_resource_group_template_deployment__timeouts *)

type azurerm_resource_group_template_deployment = {
  debug_level : string prop option; [@option]  (** debug_level *)
  deployment_mode : string prop;  (** deployment_mode *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  parameters_content : string prop option; [@option]
      (** parameters_content *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  template_content : string prop option; [@option]
      (** template_content *)
  template_spec_version_id : string prop option; [@option]
      (** template_spec_version_id *)
  timeouts :
    azurerm_resource_group_template_deployment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_resource_group_template_deployment *)

let azurerm_resource_group_template_deployment ?debug_level ?id
    ?parameters_content ?tags ?template_content
    ?template_spec_version_id ?timeouts ~deployment_mode ~name
    ~resource_group_name __resource_id =
  let __resource_type =
    "azurerm_resource_group_template_deployment"
  in
  let __resource =
    {
      debug_level;
      deployment_mode;
      id;
      name;
      parameters_content;
      resource_group_name;
      tags;
      template_content;
      template_spec_version_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_resource_group_template_deployment __resource);
  ()

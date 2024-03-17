(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_resource_group_template_deployment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_resource_group_template_deployment__timeouts *)

type azurerm_resource_group_template_deployment = {
  debug_level : string option; [@option]  (** debug_level *)
  deployment_mode : string;  (** deployment_mode *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  template_spec_version_id : string option; [@option]
      (** template_spec_version_id *)
  timeouts :
    azurerm_resource_group_template_deployment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_resource_group_template_deployment *)

let azurerm_resource_group_template_deployment ?debug_level ?tags
    ?template_spec_version_id ?timeouts ~deployment_mode ~name
    ~resource_group_name __resource_id =
  let __resource_type =
    "azurerm_resource_group_template_deployment"
  in
  let __resource =
    {
      debug_level;
      deployment_mode;
      name;
      resource_group_name;
      tags;
      template_spec_version_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_resource_group_template_deployment __resource);
  ()

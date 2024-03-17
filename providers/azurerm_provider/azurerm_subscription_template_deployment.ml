(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_subscription_template_deployment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_subscription_template_deployment__timeouts *)

type azurerm_subscription_template_deployment = {
  debug_level : string option; [@option]  (** debug_level *)
  location : string;  (** location *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  template_spec_version_id : string option; [@option]
      (** template_spec_version_id *)
  timeouts :
    azurerm_subscription_template_deployment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_subscription_template_deployment *)

let azurerm_subscription_template_deployment ?debug_level ?tags
    ?template_spec_version_id ?timeouts ~location ~name __resource_id
    =
  let __resource_type = "azurerm_subscription_template_deployment" in
  let __resource =
    {
      debug_level;
      location;
      name;
      tags;
      template_spec_version_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_subscription_template_deployment __resource);
  ()

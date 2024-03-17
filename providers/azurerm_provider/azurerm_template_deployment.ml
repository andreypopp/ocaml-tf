(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_template_deployment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_template_deployment__timeouts *)

type azurerm_template_deployment = {
  deployment_mode : string;  (** deployment_mode *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  parameters_body : string option; [@option]  (** parameters_body *)
  resource_group_name : string;  (** resource_group_name *)
  template_body : string option; [@option]  (** template_body *)
  timeouts : azurerm_template_deployment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_template_deployment *)

let azurerm_template_deployment ?id ?parameters ?parameters_body
    ?template_body ?timeouts ~deployment_mode ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_template_deployment" in
  let __resource =
    {
      deployment_mode;
      id;
      name;
      parameters;
      parameters_body;
      resource_group_name;
      template_body;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_template_deployment __resource);
  ()

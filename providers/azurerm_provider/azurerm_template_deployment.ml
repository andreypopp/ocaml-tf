(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_template_deployment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_template_deployment__timeouts *)

type azurerm_template_deployment = {
  deployment_mode : string prop;  (** deployment_mode *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  parameters_body : string prop option; [@option]
      (** parameters_body *)
  resource_group_name : string prop;  (** resource_group_name *)
  template_body : string prop option; [@option]  (** template_body *)
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

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

type t = {
  deployment_mode : string prop;
  id : string prop;
  name : string prop;
  outputs : (string * string) list prop;
  parameters : (string * string) list prop;
  parameters_body : string prop;
  resource_group_name : string prop;
  template_body : string prop;
}

let azurerm_template_deployment ?id ?parameters ?parameters_body
    ?template_body ?timeouts ~deployment_mode ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_template_deployment" in
  let __resource =
    ({
       deployment_mode;
       id;
       name;
       parameters;
       parameters_body;
       resource_group_name;
       template_body;
       timeouts;
     }
      : azurerm_template_deployment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_template_deployment __resource);
  let __resource_attributes =
    ({
       deployment_mode =
         Prop.computed __resource_type __resource_id
           "deployment_mode";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       outputs =
         Prop.computed __resource_type __resource_id "outputs";
       parameters =
         Prop.computed __resource_type __resource_id "parameters";
       parameters_body =
         Prop.computed __resource_type __resource_id
           "parameters_body";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       template_body =
         Prop.computed __resource_type __resource_id "template_body";
     }
      : t)
  in
  __resource_attributes

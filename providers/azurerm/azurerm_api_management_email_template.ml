(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_api_management_email_template = {
  api_management_name : string prop;  (** api_management_name *)
  body : string prop;  (** body *)
  id : string prop option; [@option]  (** id *)
  resource_group_name : string prop;  (** resource_group_name *)
  subject : string prop;  (** subject *)
  template_name : string prop;  (** template_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_email_template *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_email_template ?id ?timeouts
    ~api_management_name ~body ~resource_group_name ~subject
    ~template_name () : azurerm_api_management_email_template =
  {
    api_management_name;
    body;
    id;
    resource_group_name;
    subject;
    template_name;
    timeouts;
  }

type t = {
  api_management_name : string prop;
  body : string prop;
  description : string prop;
  id : string prop;
  resource_group_name : string prop;
  subject : string prop;
  template_name : string prop;
  title : string prop;
}

let register ?tf_module ?id ?timeouts ~api_management_name ~body
    ~resource_group_name ~subject ~template_name __resource_id =
  let __resource_type = "azurerm_api_management_email_template" in
  let __resource =
    azurerm_api_management_email_template ?id ?timeouts
      ~api_management_name ~body ~resource_group_name ~subject
      ~template_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_email_template __resource);
  let __resource_attributes =
    ({
       api_management_name =
         Prop.computed __resource_type __resource_id
           "api_management_name";
       body = Prop.computed __resource_type __resource_id "body";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       subject =
         Prop.computed __resource_type __resource_id "subject";
       template_name =
         Prop.computed __resource_type __resource_id "template_name";
       title = Prop.computed __resource_type __resource_id "title";
     }
      : t)
  in
  __resource_attributes

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_email_template__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_email_template__timeouts *)

type azurerm_api_management_email_template = {
  api_management_name : string prop;  (** api_management_name *)
  body : string prop;  (** body *)
  id : string prop option; [@option]  (** id *)
  resource_group_name : string prop;  (** resource_group_name *)
  subject : string prop;  (** subject *)
  template_name : string prop;  (** template_name *)
  timeouts : azurerm_api_management_email_template__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_email_template *)

let azurerm_api_management_email_template ?id ?timeouts
    ~api_management_name ~body ~resource_group_name ~subject
    ~template_name __resource_id =
  let __resource_type = "azurerm_api_management_email_template" in
  let __resource =
    {
      api_management_name;
      body;
      id;
      resource_group_name;
      subject;
      template_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_email_template __resource);
  ()

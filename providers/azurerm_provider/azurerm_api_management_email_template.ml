(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_email_template__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_email_template__timeouts *)

type azurerm_api_management_email_template = {
  api_management_name : string;  (** api_management_name *)
  body : string;  (** body *)
  resource_group_name : string;  (** resource_group_name *)
  subject : string;  (** subject *)
  template_name : string;  (** template_name *)
  timeouts : azurerm_api_management_email_template__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_email_template *)

let azurerm_api_management_email_template ?timeouts
    ~api_management_name ~body ~resource_group_name ~subject
    ~template_name __resource_id =
  let __resource_type = "azurerm_api_management_email_template" in
  let __resource =
    {
      api_management_name;
      body;
      resource_group_name;
      subject;
      template_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_email_template __resource);
  ()

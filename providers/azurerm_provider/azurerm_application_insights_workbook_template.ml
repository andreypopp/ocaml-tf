(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_application_insights_workbook_template__galleries = {
  category : string;  (** category *)
  name : string;  (** name *)
  order : float option; [@option]  (** order *)
  resource_type : string option; [@option]  (** resource_type *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_application_insights_workbook_template__galleries *)

type azurerm_application_insights_workbook_template__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_application_insights_workbook_template__timeouts *)

type azurerm_application_insights_workbook_template = {
  author : string option; [@option]  (** author *)
  localized : string option; [@option]  (** localized *)
  location : string;  (** location *)
  name : string;  (** name *)
  priority : float option; [@option]  (** priority *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  template_data : string;  (** template_data *)
  galleries :
    azurerm_application_insights_workbook_template__galleries list;
  timeouts :
    azurerm_application_insights_workbook_template__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_application_insights_workbook_template *)

let azurerm_application_insights_workbook_template ?author ?localized
    ?priority ?tags ?timeouts ~location ~name ~resource_group_name
    ~template_data ~galleries __resource_id =
  let __resource_type =
    "azurerm_application_insights_workbook_template"
  in
  let __resource =
    {
      author;
      localized;
      location;
      name;
      priority;
      resource_group_name;
      tags;
      template_data;
      galleries;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_application_insights_workbook_template
       __resource);
  ()

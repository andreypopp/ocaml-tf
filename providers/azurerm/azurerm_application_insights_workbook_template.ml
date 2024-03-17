(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_application_insights_workbook_template__galleries = {
  category : string prop;  (** category *)
  name : string prop;  (** name *)
  order : float prop option; [@option]  (** order *)
  resource_type : string prop option; [@option]  (** resource_type *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_application_insights_workbook_template__galleries *)

type azurerm_application_insights_workbook_template__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_application_insights_workbook_template__timeouts *)

type azurerm_application_insights_workbook_template = {
  author : string prop option; [@option]  (** author *)
  id : string prop option; [@option]  (** id *)
  localized : string prop option; [@option]  (** localized *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  priority : float prop option; [@option]  (** priority *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  template_data : string prop;  (** template_data *)
  galleries :
    azurerm_application_insights_workbook_template__galleries list;
  timeouts :
    azurerm_application_insights_workbook_template__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_application_insights_workbook_template *)

type t = {
  author : string prop;
  id : string prop;
  localized : string prop;
  location : string prop;
  name : string prop;
  priority : float prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  template_data : string prop;
}

let azurerm_application_insights_workbook_template ?author ?id
    ?localized ?priority ?tags ?timeouts ~location ~name
    ~resource_group_name ~template_data ~galleries __resource_id =
  let __resource_type =
    "azurerm_application_insights_workbook_template"
  in
  let __resource =
    ({
       author;
       id;
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
      : azurerm_application_insights_workbook_template)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_application_insights_workbook_template
       __resource);
  let __resource_attributes =
    ({
       author = Prop.computed __resource_type __resource_id "author";
       id = Prop.computed __resource_type __resource_id "id";
       localized =
         Prop.computed __resource_type __resource_id "localized";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       priority =
         Prop.computed __resource_type __resource_id "priority";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       template_data =
         Prop.computed __resource_type __resource_id "template_data";
     }
      : t)
  in
  __resource_attributes

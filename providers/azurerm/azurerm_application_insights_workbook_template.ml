(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type galleries = {
  category : string prop;  (** category *)
  name : string prop;  (** name *)
  order : float prop option; [@option]  (** order *)
  resource_type : string prop option; [@option]  (** resource_type *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** galleries *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  galleries : galleries list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_application_insights_workbook_template *)

let galleries ?order ?resource_type ?type_ ~category ~name () :
    galleries =
  { category; name; order; resource_type; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_application_insights_workbook_template ?author ?id
    ?localized ?priority ?tags ?timeouts ~location ~name
    ~resource_group_name ~template_data ~galleries () :
    azurerm_application_insights_workbook_template =
  {
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

let make ?author ?id ?localized ?priority ?tags ?timeouts ~location
    ~name ~resource_group_name ~template_data ~galleries __id =
  let __type = "azurerm_application_insights_workbook_template" in
  let __attrs =
    ({
       author = Prop.computed __type __id "author";
       id = Prop.computed __type __id "id";
       localized = Prop.computed __type __id "localized";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       priority = Prop.computed __type __id "priority";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       template_data = Prop.computed __type __id "template_data";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_application_insights_workbook_template
        (azurerm_application_insights_workbook_template ?author ?id
           ?localized ?priority ?tags ?timeouts ~location ~name
           ~resource_group_name ~template_data ~galleries ());
    attrs = __attrs;
  }

let register ?tf_module ?author ?id ?localized ?priority ?tags
    ?timeouts ~location ~name ~resource_group_name ~template_data
    ~galleries __id =
  let (r : _ Tf_core.resource) =
    make ?author ?id ?localized ?priority ?tags ?timeouts ~location
      ~name ~resource_group_name ~template_data ~galleries __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

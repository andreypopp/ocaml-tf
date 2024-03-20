(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?timeouts ~api_management_name ~body
    ~resource_group_name ~subject ~template_name __id =
  let __type = "azurerm_api_management_email_template" in
  let __attrs =
    ({
       api_management_name =
         Prop.computed __type __id "api_management_name";
       body = Prop.computed __type __id "body";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       subject = Prop.computed __type __id "subject";
       template_name = Prop.computed __type __id "template_name";
       title = Prop.computed __type __id "title";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_email_template
        (azurerm_api_management_email_template ?id ?timeouts
           ~api_management_name ~body ~resource_group_name ~subject
           ~template_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~api_management_name ~body
    ~resource_group_name ~subject ~template_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~api_management_name ~body
      ~resource_group_name ~subject ~template_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

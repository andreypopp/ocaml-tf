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

type azurerm_subscription_template_deployment = {
  debug_level : string prop option; [@option]  (** debug_level *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  parameters_content : string prop option; [@option]
      (** parameters_content *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  template_content : string prop option; [@option]
      (** template_content *)
  template_spec_version_id : string prop option; [@option]
      (** template_spec_version_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_subscription_template_deployment *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_subscription_template_deployment ?debug_level ?id
    ?parameters_content ?tags ?template_content
    ?template_spec_version_id ?timeouts ~location ~name () :
    azurerm_subscription_template_deployment =
  {
    debug_level;
    id;
    location;
    name;
    parameters_content;
    tags;
    template_content;
    template_spec_version_id;
    timeouts;
  }

type t = {
  debug_level : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  output_content : string prop;
  parameters_content : string prop;
  tags : (string * string) list prop;
  template_content : string prop;
  template_spec_version_id : string prop;
}

let make ?debug_level ?id ?parameters_content ?tags ?template_content
    ?template_spec_version_id ?timeouts ~location ~name __id =
  let __type = "azurerm_subscription_template_deployment" in
  let __attrs =
    ({
       debug_level = Prop.computed __type __id "debug_level";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       output_content = Prop.computed __type __id "output_content";
       parameters_content =
         Prop.computed __type __id "parameters_content";
       tags = Prop.computed __type __id "tags";
       template_content =
         Prop.computed __type __id "template_content";
       template_spec_version_id =
         Prop.computed __type __id "template_spec_version_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_subscription_template_deployment
        (azurerm_subscription_template_deployment ?debug_level ?id
           ?parameters_content ?tags ?template_content
           ?template_spec_version_id ?timeouts ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?debug_level ?id ?parameters_content ?tags
    ?template_content ?template_spec_version_id ?timeouts ~location
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?debug_level ?id ?parameters_content ?tags ?template_content
      ?template_spec_version_id ?timeouts ~location ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

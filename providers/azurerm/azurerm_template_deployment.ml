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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_template_deployment *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_template_deployment ?id ?parameters ?parameters_body
    ?template_body ?timeouts ~deployment_mode ~name
    ~resource_group_name () : azurerm_template_deployment =
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

let make ?id ?parameters ?parameters_body ?template_body ?timeouts
    ~deployment_mode ~name ~resource_group_name __id =
  let __type = "azurerm_template_deployment" in
  let __attrs =
    ({
       deployment_mode = Prop.computed __type __id "deployment_mode";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       outputs = Prop.computed __type __id "outputs";
       parameters = Prop.computed __type __id "parameters";
       parameters_body = Prop.computed __type __id "parameters_body";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       template_body = Prop.computed __type __id "template_body";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_template_deployment
        (azurerm_template_deployment ?id ?parameters ?parameters_body
           ?template_body ?timeouts ~deployment_mode ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?parameters ?parameters_body
    ?template_body ?timeouts ~deployment_mode ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?parameters ?parameters_body ?template_body ?timeouts
      ~deployment_mode ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

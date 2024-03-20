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

type azurerm_data_factory_linked_service_web = {
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  authentication_type : string prop;  (** authentication_type *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  integration_runtime_name : string prop option; [@option]
      (** integration_runtime_name *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  password : string prop option; [@option]  (** password *)
  url : string prop;  (** url *)
  username : string prop option; [@option]  (** username *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_web *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_linked_service_web ?additional_properties
    ?annotations ?description ?id ?integration_runtime_name
    ?parameters ?password ?username ?timeouts ~authentication_type
    ~data_factory_id ~name ~url () :
    azurerm_data_factory_linked_service_web =
  {
    additional_properties;
    annotations;
    authentication_type;
    data_factory_id;
    description;
    id;
    integration_runtime_name;
    name;
    parameters;
    password;
    url;
    username;
    timeouts;
  }

type t = {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  authentication_type : string prop;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  password : string prop;
  url : string prop;
  username : string prop;
}

let make ?additional_properties ?annotations ?description ?id
    ?integration_runtime_name ?parameters ?password ?username
    ?timeouts ~authentication_type ~data_factory_id ~name ~url __id =
  let __type = "azurerm_data_factory_linked_service_web" in
  let __attrs =
    ({
       additional_properties =
         Prop.computed __type __id "additional_properties";
       annotations = Prop.computed __type __id "annotations";
       authentication_type =
         Prop.computed __type __id "authentication_type";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       integration_runtime_name =
         Prop.computed __type __id "integration_runtime_name";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       password = Prop.computed __type __id "password";
       url = Prop.computed __type __id "url";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_linked_service_web
        (azurerm_data_factory_linked_service_web
           ?additional_properties ?annotations ?description ?id
           ?integration_runtime_name ?parameters ?password ?username
           ?timeouts ~authentication_type ~data_factory_id ~name ~url
           ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_properties ?annotations
    ?description ?id ?integration_runtime_name ?parameters ?password
    ?username ?timeouts ~authentication_type ~data_factory_id ~name
    ~url __id =
  let (r : _ Tf_core.resource) =
    make ?additional_properties ?annotations ?description ?id
      ?integration_runtime_name ?parameters ?password ?username
      ?timeouts ~authentication_type ~data_factory_id ~name ~url __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

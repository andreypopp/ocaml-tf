(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type key_vault_key = {
  linked_service_name : string prop;  (** linked_service_name *)
  secret_name : string prop;  (** secret_name *)
}
[@@deriving yojson_of]
(** key_vault_key *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_data_factory_linked_service_azure_function = {
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  integration_runtime_name : string prop option; [@option]
      (** integration_runtime_name *)
  key : string prop option; [@option]  (** key *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  url : string prop;  (** url *)
  key_vault_key : key_vault_key list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_azure_function *)

let key_vault_key ~linked_service_name ~secret_name () :
    key_vault_key =
  { linked_service_name; secret_name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_linked_service_azure_function
    ?additional_properties ?annotations ?description ?id
    ?integration_runtime_name ?key ?parameters ?timeouts
    ~data_factory_id ~name ~url ~key_vault_key () :
    azurerm_data_factory_linked_service_azure_function =
  {
    additional_properties;
    annotations;
    data_factory_id;
    description;
    id;
    integration_runtime_name;
    key;
    name;
    parameters;
    url;
    key_vault_key;
    timeouts;
  }

type t = {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  key : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  url : string prop;
}

let make ?additional_properties ?annotations ?description ?id
    ?integration_runtime_name ?key ?parameters ?timeouts
    ~data_factory_id ~name ~url ~key_vault_key __id =
  let __type =
    "azurerm_data_factory_linked_service_azure_function"
  in
  let __attrs =
    ({
       additional_properties =
         Prop.computed __type __id "additional_properties";
       annotations = Prop.computed __type __id "annotations";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       integration_runtime_name =
         Prop.computed __type __id "integration_runtime_name";
       key = Prop.computed __type __id "key";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_linked_service_azure_function
        (azurerm_data_factory_linked_service_azure_function
           ?additional_properties ?annotations ?description ?id
           ?integration_runtime_name ?key ?parameters ?timeouts
           ~data_factory_id ~name ~url ~key_vault_key ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_properties ?annotations
    ?description ?id ?integration_runtime_name ?key ?parameters
    ?timeouts ~data_factory_id ~name ~url ~key_vault_key __id =
  let (r : _ Tf_core.resource) =
    make ?additional_properties ?annotations ?description ?id
      ?integration_runtime_name ?key ?parameters ?timeouts
      ~data_factory_id ~name ~url ~key_vault_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

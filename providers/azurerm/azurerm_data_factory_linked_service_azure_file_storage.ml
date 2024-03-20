(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type key_vault_password = {
  linked_service_name : string prop;  (** linked_service_name *)
  secret_name : string prop;  (** secret_name *)
}
[@@deriving yojson_of]
(** key_vault_password *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_data_factory_linked_service_azure_file_storage = {
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  connection_string : string prop;  (** connection_string *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  file_share : string prop option; [@option]  (** file_share *)
  host : string prop option; [@option]  (** host *)
  id : string prop option; [@option]  (** id *)
  integration_runtime_name : string prop option; [@option]
      (** integration_runtime_name *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  password : string prop option; [@option]  (** password *)
  user_id : string prop option; [@option]  (** user_id *)
  key_vault_password : key_vault_password list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_azure_file_storage *)

let key_vault_password ~linked_service_name ~secret_name () :
    key_vault_password =
  { linked_service_name; secret_name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_linked_service_azure_file_storage
    ?additional_properties ?annotations ?description ?file_share
    ?host ?id ?integration_runtime_name ?parameters ?password
    ?user_id ?timeouts ~connection_string ~data_factory_id ~name
    ~key_vault_password () :
    azurerm_data_factory_linked_service_azure_file_storage =
  {
    additional_properties;
    annotations;
    connection_string;
    data_factory_id;
    description;
    file_share;
    host;
    id;
    integration_runtime_name;
    name;
    parameters;
    password;
    user_id;
    key_vault_password;
    timeouts;
  }

type t = {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  connection_string : string prop;
  data_factory_id : string prop;
  description : string prop;
  file_share : string prop;
  host : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  password : string prop;
  user_id : string prop;
}

let make ?additional_properties ?annotations ?description ?file_share
    ?host ?id ?integration_runtime_name ?parameters ?password
    ?user_id ?timeouts ~connection_string ~data_factory_id ~name
    ~key_vault_password __id =
  let __type =
    "azurerm_data_factory_linked_service_azure_file_storage"
  in
  let __attrs =
    ({
       additional_properties =
         Prop.computed __type __id "additional_properties";
       annotations = Prop.computed __type __id "annotations";
       connection_string =
         Prop.computed __type __id "connection_string";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       description = Prop.computed __type __id "description";
       file_share = Prop.computed __type __id "file_share";
       host = Prop.computed __type __id "host";
       id = Prop.computed __type __id "id";
       integration_runtime_name =
         Prop.computed __type __id "integration_runtime_name";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       password = Prop.computed __type __id "password";
       user_id = Prop.computed __type __id "user_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_linked_service_azure_file_storage
        (azurerm_data_factory_linked_service_azure_file_storage
           ?additional_properties ?annotations ?description
           ?file_share ?host ?id ?integration_runtime_name
           ?parameters ?password ?user_id ?timeouts
           ~connection_string ~data_factory_id ~name
           ~key_vault_password ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_properties ?annotations
    ?description ?file_share ?host ?id ?integration_runtime_name
    ?parameters ?password ?user_id ?timeouts ~connection_string
    ~data_factory_id ~name ~key_vault_password __id =
  let (r : _ Tf_core.resource) =
    make ?additional_properties ?annotations ?description ?file_share
      ?host ?id ?integration_runtime_name ?parameters ?password
      ?user_id ?timeouts ~connection_string ~data_factory_id ~name
      ~key_vault_password __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

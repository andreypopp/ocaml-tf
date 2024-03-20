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

type azurerm_data_factory_linked_service_sftp = {
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  authentication_type : string prop;  (** authentication_type *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  host : string prop;  (** host *)
  host_key_fingerprint : string prop option; [@option]
      (** host_key_fingerprint *)
  id : string prop option; [@option]  (** id *)
  integration_runtime_name : string prop option; [@option]
      (** integration_runtime_name *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  password : string prop;  (** password *)
  port : float prop;  (** port *)
  skip_host_key_validation : bool prop option; [@option]
      (** skip_host_key_validation *)
  username : string prop;  (** username *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_sftp *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_linked_service_sftp ?additional_properties
    ?annotations ?description ?host_key_fingerprint ?id
    ?integration_runtime_name ?parameters ?skip_host_key_validation
    ?timeouts ~authentication_type ~data_factory_id ~host ~name
    ~password ~port ~username () :
    azurerm_data_factory_linked_service_sftp =
  {
    additional_properties;
    annotations;
    authentication_type;
    data_factory_id;
    description;
    host;
    host_key_fingerprint;
    id;
    integration_runtime_name;
    name;
    parameters;
    password;
    port;
    skip_host_key_validation;
    username;
    timeouts;
  }

type t = {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  authentication_type : string prop;
  data_factory_id : string prop;
  description : string prop;
  host : string prop;
  host_key_fingerprint : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  password : string prop;
  port : float prop;
  skip_host_key_validation : bool prop;
  username : string prop;
}

let make ?additional_properties ?annotations ?description
    ?host_key_fingerprint ?id ?integration_runtime_name ?parameters
    ?skip_host_key_validation ?timeouts ~authentication_type
    ~data_factory_id ~host ~name ~password ~port ~username __id =
  let __type = "azurerm_data_factory_linked_service_sftp" in
  let __attrs =
    ({
       additional_properties =
         Prop.computed __type __id "additional_properties";
       annotations = Prop.computed __type __id "annotations";
       authentication_type =
         Prop.computed __type __id "authentication_type";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       description = Prop.computed __type __id "description";
       host = Prop.computed __type __id "host";
       host_key_fingerprint =
         Prop.computed __type __id "host_key_fingerprint";
       id = Prop.computed __type __id "id";
       integration_runtime_name =
         Prop.computed __type __id "integration_runtime_name";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       password = Prop.computed __type __id "password";
       port = Prop.computed __type __id "port";
       skip_host_key_validation =
         Prop.computed __type __id "skip_host_key_validation";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_linked_service_sftp
        (azurerm_data_factory_linked_service_sftp
           ?additional_properties ?annotations ?description
           ?host_key_fingerprint ?id ?integration_runtime_name
           ?parameters ?skip_host_key_validation ?timeouts
           ~authentication_type ~data_factory_id ~host ~name
           ~password ~port ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_properties ?annotations
    ?description ?host_key_fingerprint ?id ?integration_runtime_name
    ?parameters ?skip_host_key_validation ?timeouts
    ~authentication_type ~data_factory_id ~host ~name ~password ~port
    ~username __id =
  let (r : _ Tf_core.resource) =
    make ?additional_properties ?annotations ?description
      ?host_key_fingerprint ?id ?integration_runtime_name ?parameters
      ?skip_host_key_validation ?timeouts ~authentication_type
      ~data_factory_id ~host ~name ~password ~port ~username __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

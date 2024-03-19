(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?additional_properties ?annotations
    ?description ?host_key_fingerprint ?id ?integration_runtime_name
    ?parameters ?skip_host_key_validation ?timeouts
    ~authentication_type ~data_factory_id ~host ~name ~password ~port
    ~username __resource_id =
  let __resource_type = "azurerm_data_factory_linked_service_sftp" in
  let __resource =
    azurerm_data_factory_linked_service_sftp ?additional_properties
      ?annotations ?description ?host_key_fingerprint ?id
      ?integration_runtime_name ?parameters ?skip_host_key_validation
      ?timeouts ~authentication_type ~data_factory_id ~host ~name
      ~password ~port ~username ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_linked_service_sftp __resource);
  let __resource_attributes =
    ({
       additional_properties =
         Prop.computed __resource_type __resource_id
           "additional_properties";
       annotations =
         Prop.computed __resource_type __resource_id "annotations";
       authentication_type =
         Prop.computed __resource_type __resource_id
           "authentication_type";
       data_factory_id =
         Prop.computed __resource_type __resource_id
           "data_factory_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       host = Prop.computed __resource_type __resource_id "host";
       host_key_fingerprint =
         Prop.computed __resource_type __resource_id
           "host_key_fingerprint";
       id = Prop.computed __resource_type __resource_id "id";
       integration_runtime_name =
         Prop.computed __resource_type __resource_id
           "integration_runtime_name";
       name = Prop.computed __resource_type __resource_id "name";
       parameters =
         Prop.computed __resource_type __resource_id "parameters";
       password =
         Prop.computed __resource_type __resource_id "password";
       port = Prop.computed __resource_type __resource_id "port";
       skip_host_key_validation =
         Prop.computed __resource_type __resource_id
           "skip_host_key_validation";
       username =
         Prop.computed __resource_type __resource_id "username";
     }
      : t)
  in
  __resource_attributes

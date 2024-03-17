(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_linked_service_sftp__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_sftp__timeouts *)

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
  timeouts :
    azurerm_data_factory_linked_service_sftp__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_sftp *)

let azurerm_data_factory_linked_service_sftp ?additional_properties
    ?annotations ?description ?host_key_fingerprint ?id
    ?integration_runtime_name ?parameters ?skip_host_key_validation
    ?timeouts ~authentication_type ~data_factory_id ~host ~name
    ~password ~port ~username __resource_id =
  let __resource_type = "azurerm_data_factory_linked_service_sftp" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_linked_service_sftp __resource);
  ()

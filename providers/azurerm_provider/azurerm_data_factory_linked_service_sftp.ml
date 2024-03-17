(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_linked_service_sftp__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_sftp__timeouts *)

type azurerm_data_factory_linked_service_sftp = {
  additional_properties : (string * string) list option; [@option]
      (** additional_properties *)
  annotations : string list option; [@option]  (** annotations *)
  authentication_type : string;  (** authentication_type *)
  data_factory_id : string;  (** data_factory_id *)
  description : string option; [@option]  (** description *)
  host : string;  (** host *)
  host_key_fingerprint : string option; [@option]
      (** host_key_fingerprint *)
  id : string option; [@option]  (** id *)
  integration_runtime_name : string option; [@option]
      (** integration_runtime_name *)
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  password : string;  (** password *)
  port : float;  (** port *)
  skip_host_key_validation : bool option; [@option]
      (** skip_host_key_validation *)
  username : string;  (** username *)
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

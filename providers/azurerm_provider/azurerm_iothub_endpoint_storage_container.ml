(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_iothub_endpoint_storage_container__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iothub_endpoint_storage_container__timeouts *)

type azurerm_iothub_endpoint_storage_container = {
  authentication_type : string option; [@option]
      (** authentication_type *)
  batch_frequency_in_seconds : float option; [@option]
      (** batch_frequency_in_seconds *)
  connection_string : string option; [@option]
      (** connection_string *)
  container_name : string;  (** container_name *)
  encoding : string option; [@option]  (** encoding *)
  endpoint_uri : string option; [@option]  (** endpoint_uri *)
  file_name_format : string option; [@option]
      (** file_name_format *)
  identity_id : string option; [@option]  (** identity_id *)
  iothub_id : string;  (** iothub_id *)
  max_chunk_size_in_bytes : float option; [@option]
      (** max_chunk_size_in_bytes *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  timeouts :
    azurerm_iothub_endpoint_storage_container__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_endpoint_storage_container *)

let azurerm_iothub_endpoint_storage_container ?authentication_type
    ?batch_frequency_in_seconds ?connection_string ?encoding
    ?endpoint_uri ?file_name_format ?identity_id
    ?max_chunk_size_in_bytes ?timeouts ~container_name ~iothub_id
    ~name ~resource_group_name __resource_id =
  let __resource_type =
    "azurerm_iothub_endpoint_storage_container"
  in
  let __resource =
    {
      authentication_type;
      batch_frequency_in_seconds;
      connection_string;
      container_name;
      encoding;
      endpoint_uri;
      file_name_format;
      identity_id;
      iothub_id;
      max_chunk_size_in_bytes;
      name;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iothub_endpoint_storage_container __resource);
  ()

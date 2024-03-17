(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_iothub_file_upload__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iothub_file_upload__timeouts *)

type azurerm_iothub_file_upload = {
  authentication_type : string option; [@option]
      (** authentication_type *)
  connection_string : string;  (** connection_string *)
  container_name : string;  (** container_name *)
  default_ttl : string option; [@option]  (** default_ttl *)
  identity_id : string option; [@option]  (** identity_id *)
  iothub_id : string;  (** iothub_id *)
  lock_duration : string option; [@option]  (** lock_duration *)
  max_delivery_count : float option; [@option]
      (** max_delivery_count *)
  notifications_enabled : bool option; [@option]
      (** notifications_enabled *)
  sas_ttl : string option; [@option]  (** sas_ttl *)
  timeouts : azurerm_iothub_file_upload__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_file_upload *)

let azurerm_iothub_file_upload ?authentication_type ?default_ttl
    ?identity_id ?lock_duration ?max_delivery_count
    ?notifications_enabled ?sas_ttl ?timeouts ~connection_string
    ~container_name ~iothub_id __resource_id =
  let __resource_type = "azurerm_iothub_file_upload" in
  let __resource =
    {
      authentication_type;
      connection_string;
      container_name;
      default_ttl;
      identity_id;
      iothub_id;
      lock_duration;
      max_delivery_count;
      notifications_enabled;
      sas_ttl;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iothub_file_upload __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_spring_cloud_configuration_service__repository = {
  ca_certificate_id : string option; [@option]
      (** ca_certificate_id *)
  host_key : string option; [@option]  (** host_key *)
  host_key_algorithm : string option; [@option]
      (** host_key_algorithm *)
  label : string;  (** label *)
  name : string;  (** name *)
  password : string option; [@option]  (** password *)
  patterns : string list;  (** patterns *)
  private_key : string option; [@option]  (** private_key *)
  search_paths : string list option; [@option]  (** search_paths *)
  strict_host_key_checking : bool option; [@option]
      (** strict_host_key_checking *)
  uri : string;  (** uri *)
  username : string option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_configuration_service__repository *)

type azurerm_spring_cloud_configuration_service__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_configuration_service__timeouts *)

type azurerm_spring_cloud_configuration_service = {
  generation : string option; [@option]  (** generation *)
  name : string;  (** name *)
  refresh_interval_in_seconds : float option; [@option]
      (** refresh_interval_in_seconds *)
  spring_cloud_service_id : string;  (** spring_cloud_service_id *)
  repository :
    azurerm_spring_cloud_configuration_service__repository list;
  timeouts :
    azurerm_spring_cloud_configuration_service__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_configuration_service *)

let azurerm_spring_cloud_configuration_service ?generation
    ?refresh_interval_in_seconds ?timeouts ~name
    ~spring_cloud_service_id ~repository __resource_id =
  let __resource_type =
    "azurerm_spring_cloud_configuration_service"
  in
  let __resource =
    {
      generation;
      name;
      refresh_interval_in_seconds;
      spring_cloud_service_id;
      repository;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_configuration_service __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_spring_cloud_configuration_service__repository = {
  ca_certificate_id : string prop option; [@option]
      (** ca_certificate_id *)
  host_key : string prop option; [@option]  (** host_key *)
  host_key_algorithm : string prop option; [@option]
      (** host_key_algorithm *)
  label : string prop;  (** label *)
  name : string prop;  (** name *)
  password : string prop option; [@option]  (** password *)
  patterns : string prop list;  (** patterns *)
  private_key : string prop option; [@option]  (** private_key *)
  search_paths : string prop list option; [@option]
      (** search_paths *)
  strict_host_key_checking : bool prop option; [@option]
      (** strict_host_key_checking *)
  uri : string prop;  (** uri *)
  username : string prop option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_configuration_service__repository *)

type azurerm_spring_cloud_configuration_service__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_configuration_service__timeouts *)

type azurerm_spring_cloud_configuration_service = {
  generation : string prop option; [@option]  (** generation *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  refresh_interval_in_seconds : float prop option; [@option]
      (** refresh_interval_in_seconds *)
  spring_cloud_service_id : string prop;
      (** spring_cloud_service_id *)
  repository :
    azurerm_spring_cloud_configuration_service__repository list;
  timeouts :
    azurerm_spring_cloud_configuration_service__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_configuration_service *)

let azurerm_spring_cloud_configuration_service ?generation ?id
    ?refresh_interval_in_seconds ?timeouts ~name
    ~spring_cloud_service_id ~repository __resource_id =
  let __resource_type =
    "azurerm_spring_cloud_configuration_service"
  in
  let __resource =
    {
      generation;
      id;
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

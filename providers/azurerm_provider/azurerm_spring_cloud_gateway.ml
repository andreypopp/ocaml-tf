(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_spring_cloud_gateway__api_metadata = {
  description : string option; [@option]  (** description *)
  documentation_url : string option; [@option]
      (** documentation_url *)
  server_url : string option; [@option]  (** server_url *)
  title : string option; [@option]  (** title *)
  version : string option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_gateway__api_metadata *)

type azurerm_spring_cloud_gateway__client_authorization = {
  certificate_ids : string list option; [@option]
      (** certificate_ids *)
  verification_enabled : bool option; [@option]
      (** verification_enabled *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_gateway__client_authorization *)

type azurerm_spring_cloud_gateway__cors = {
  allowed_headers : string list option; [@option]
      (** allowed_headers *)
  allowed_methods : string list option; [@option]
      (** allowed_methods *)
  allowed_origin_patterns : string list option; [@option]
      (** allowed_origin_patterns *)
  allowed_origins : string list option; [@option]
      (** allowed_origins *)
  credentials_allowed : bool option; [@option]
      (** credentials_allowed *)
  exposed_headers : string list option; [@option]
      (** exposed_headers *)
  max_age_seconds : float option; [@option]  (** max_age_seconds *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_gateway__cors *)

type azurerm_spring_cloud_gateway__local_response_cache_per_instance = {
  size : string option; [@option]  (** size *)
  time_to_live : string option; [@option]  (** time_to_live *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_gateway__local_response_cache_per_instance *)

type azurerm_spring_cloud_gateway__local_response_cache_per_route = {
  size : string option; [@option]  (** size *)
  time_to_live : string option; [@option]  (** time_to_live *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_gateway__local_response_cache_per_route *)

type azurerm_spring_cloud_gateway__quota = {
  cpu : string option; [@option]  (** cpu *)
  memory : string option; [@option]  (** memory *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_gateway__quota *)

type azurerm_spring_cloud_gateway__sso = {
  client_id : string option; [@option]  (** client_id *)
  client_secret : string option; [@option]  (** client_secret *)
  issuer_uri : string option; [@option]  (** issuer_uri *)
  scope : string list option; [@option]  (** scope *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_gateway__sso *)

type azurerm_spring_cloud_gateway__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_gateway__timeouts *)

type azurerm_spring_cloud_gateway = {
  application_performance_monitoring_ids : string list option;
      [@option]
      (** application_performance_monitoring_ids *)
  application_performance_monitoring_types : string list option;
      [@option]
      (** application_performance_monitoring_types *)
  environment_variables : (string * string) list option; [@option]
      (** environment_variables *)
  https_only : bool option; [@option]  (** https_only *)
  instance_count : float option; [@option]  (** instance_count *)
  name : string;  (** name *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  sensitive_environment_variables : (string * string) list option;
      [@option]
      (** sensitive_environment_variables *)
  spring_cloud_service_id : string;  (** spring_cloud_service_id *)
  api_metadata : azurerm_spring_cloud_gateway__api_metadata list;
  client_authorization :
    azurerm_spring_cloud_gateway__client_authorization list;
  cors : azurerm_spring_cloud_gateway__cors list;
  local_response_cache_per_instance :
    azurerm_spring_cloud_gateway__local_response_cache_per_instance
    list;
  local_response_cache_per_route :
    azurerm_spring_cloud_gateway__local_response_cache_per_route list;
  quota : azurerm_spring_cloud_gateway__quota list;
  sso : azurerm_spring_cloud_gateway__sso list;
  timeouts : azurerm_spring_cloud_gateway__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_gateway *)

let azurerm_spring_cloud_gateway
    ?application_performance_monitoring_ids
    ?application_performance_monitoring_types ?environment_variables
    ?https_only ?instance_count ?public_network_access_enabled
    ?sensitive_environment_variables ?timeouts ~name
    ~spring_cloud_service_id ~api_metadata ~client_authorization
    ~cors ~local_response_cache_per_instance
    ~local_response_cache_per_route ~quota ~sso __resource_id =
  let __resource_type = "azurerm_spring_cloud_gateway" in
  let __resource =
    {
      application_performance_monitoring_ids;
      application_performance_monitoring_types;
      environment_variables;
      https_only;
      instance_count;
      name;
      public_network_access_enabled;
      sensitive_environment_variables;
      spring_cloud_service_id;
      api_metadata;
      client_authorization;
      cors;
      local_response_cache_per_instance;
      local_response_cache_per_route;
      quota;
      sso;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_gateway __resource);
  ()

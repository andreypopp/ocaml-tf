(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type api_metadata = {
  description : string prop option; [@option]  (** description *)
  documentation_url : string prop option; [@option]
      (** documentation_url *)
  server_url : string prop option; [@option]  (** server_url *)
  title : string prop option; [@option]  (** title *)
  version : string prop option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** api_metadata *)

type client_authorization = {
  certificate_ids : string prop list option; [@option]
      (** certificate_ids *)
  verification_enabled : bool prop option; [@option]
      (** verification_enabled *)
}
[@@deriving yojson_of]
(** client_authorization *)

type cors = {
  allowed_headers : string prop list option; [@option]
      (** allowed_headers *)
  allowed_methods : string prop list option; [@option]
      (** allowed_methods *)
  allowed_origin_patterns : string prop list option; [@option]
      (** allowed_origin_patterns *)
  allowed_origins : string prop list option; [@option]
      (** allowed_origins *)
  credentials_allowed : bool prop option; [@option]
      (** credentials_allowed *)
  exposed_headers : string prop list option; [@option]
      (** exposed_headers *)
  max_age_seconds : float prop option; [@option]
      (** max_age_seconds *)
}
[@@deriving yojson_of]
(** cors *)

type local_response_cache_per_instance = {
  size : string prop option; [@option]  (** size *)
  time_to_live : string prop option; [@option]  (** time_to_live *)
}
[@@deriving yojson_of]
(** local_response_cache_per_instance *)

type local_response_cache_per_route = {
  size : string prop option; [@option]  (** size *)
  time_to_live : string prop option; [@option]  (** time_to_live *)
}
[@@deriving yojson_of]
(** local_response_cache_per_route *)

type quota = {
  cpu : string prop option; [@option]  (** cpu *)
  memory : string prop option; [@option]  (** memory *)
}
[@@deriving yojson_of]
(** quota *)

type sso = {
  client_id : string prop option; [@option]  (** client_id *)
  client_secret : string prop option; [@option]  (** client_secret *)
  issuer_uri : string prop option; [@option]  (** issuer_uri *)
  scope : string prop list option; [@option]  (** scope *)
}
[@@deriving yojson_of]
(** sso *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_spring_cloud_gateway = {
  application_performance_monitoring_ids : string prop list option;
      [@option]
      (** application_performance_monitoring_ids *)
  application_performance_monitoring_types : string prop list option;
      [@option]
      (** application_performance_monitoring_types *)
  environment_variables : (string * string prop) list option;
      [@option]
      (** environment_variables *)
  https_only : bool prop option; [@option]  (** https_only *)
  id : string prop option; [@option]  (** id *)
  instance_count : float prop option; [@option]
      (** instance_count *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  sensitive_environment_variables :
    (string * string prop) list option;
      [@option]
      (** sensitive_environment_variables *)
  spring_cloud_service_id : string prop;
      (** spring_cloud_service_id *)
  api_metadata : api_metadata list;
  client_authorization : client_authorization list;
  cors : cors list;
  local_response_cache_per_instance :
    local_response_cache_per_instance list;
  local_response_cache_per_route :
    local_response_cache_per_route list;
  quota : quota list;
  sso : sso list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_gateway *)

let api_metadata ?description ?documentation_url ?server_url ?title
    ?version () : api_metadata =
  { description; documentation_url; server_url; title; version }

let client_authorization ?certificate_ids ?verification_enabled () :
    client_authorization =
  { certificate_ids; verification_enabled }

let cors ?allowed_headers ?allowed_methods ?allowed_origin_patterns
    ?allowed_origins ?credentials_allowed ?exposed_headers
    ?max_age_seconds () : cors =
  {
    allowed_headers;
    allowed_methods;
    allowed_origin_patterns;
    allowed_origins;
    credentials_allowed;
    exposed_headers;
    max_age_seconds;
  }

let local_response_cache_per_instance ?size ?time_to_live () :
    local_response_cache_per_instance =
  { size; time_to_live }

let local_response_cache_per_route ?size ?time_to_live () :
    local_response_cache_per_route =
  { size; time_to_live }

let quota ?cpu ?memory () : quota = { cpu; memory }

let sso ?client_id ?client_secret ?issuer_uri ?scope () : sso =
  { client_id; client_secret; issuer_uri; scope }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_gateway
    ?application_performance_monitoring_ids
    ?application_performance_monitoring_types ?environment_variables
    ?https_only ?id ?instance_count ?public_network_access_enabled
    ?sensitive_environment_variables ?timeouts ~name
    ~spring_cloud_service_id ~api_metadata ~client_authorization
    ~cors ~local_response_cache_per_instance
    ~local_response_cache_per_route ~quota ~sso () :
    azurerm_spring_cloud_gateway =
  {
    application_performance_monitoring_ids;
    application_performance_monitoring_types;
    environment_variables;
    https_only;
    id;
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

type t = {
  application_performance_monitoring_ids : string list prop;
  application_performance_monitoring_types : string list prop;
  environment_variables : (string * string) list prop;
  https_only : bool prop;
  id : string prop;
  instance_count : float prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  sensitive_environment_variables : (string * string) list prop;
  spring_cloud_service_id : string prop;
  url : string prop;
}

let register ?tf_module ?application_performance_monitoring_ids
    ?application_performance_monitoring_types ?environment_variables
    ?https_only ?id ?instance_count ?public_network_access_enabled
    ?sensitive_environment_variables ?timeouts ~name
    ~spring_cloud_service_id ~api_metadata ~client_authorization
    ~cors ~local_response_cache_per_instance
    ~local_response_cache_per_route ~quota ~sso __resource_id =
  let __resource_type = "azurerm_spring_cloud_gateway" in
  let __resource =
    azurerm_spring_cloud_gateway
      ?application_performance_monitoring_ids
      ?application_performance_monitoring_types
      ?environment_variables ?https_only ?id ?instance_count
      ?public_network_access_enabled ?sensitive_environment_variables
      ?timeouts ~name ~spring_cloud_service_id ~api_metadata
      ~client_authorization ~cors ~local_response_cache_per_instance
      ~local_response_cache_per_route ~quota ~sso ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_gateway __resource);
  let __resource_attributes =
    ({
       application_performance_monitoring_ids =
         Prop.computed __resource_type __resource_id
           "application_performance_monitoring_ids";
       application_performance_monitoring_types =
         Prop.computed __resource_type __resource_id
           "application_performance_monitoring_types";
       environment_variables =
         Prop.computed __resource_type __resource_id
           "environment_variables";
       https_only =
         Prop.computed __resource_type __resource_id "https_only";
       id = Prop.computed __resource_type __resource_id "id";
       instance_count =
         Prop.computed __resource_type __resource_id "instance_count";
       name = Prop.computed __resource_type __resource_id "name";
       public_network_access_enabled =
         Prop.computed __resource_type __resource_id
           "public_network_access_enabled";
       sensitive_environment_variables =
         Prop.computed __resource_type __resource_id
           "sensitive_environment_variables";
       spring_cloud_service_id =
         Prop.computed __resource_type __resource_id
           "spring_cloud_service_id";
       url = Prop.computed __resource_type __resource_id "url";
     }
      : t)
  in
  __resource_attributes

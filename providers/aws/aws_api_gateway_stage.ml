(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type access_log_settings = {
  destination_arn : string prop;  (** destination_arn *)
  format : string prop;  (** format *)
}
[@@deriving yojson_of]
(** access_log_settings *)

type canary_settings = {
  percent_traffic : float prop option; [@option]
      (** percent_traffic *)
  stage_variable_overrides : (string * string prop) list option;
      [@option]
      (** stage_variable_overrides *)
  use_stage_cache : bool prop option; [@option]
      (** use_stage_cache *)
}
[@@deriving yojson_of]
(** canary_settings *)

type aws_api_gateway_stage = {
  cache_cluster_enabled : bool prop option; [@option]
      (** cache_cluster_enabled *)
  cache_cluster_size : string prop option; [@option]
      (** cache_cluster_size *)
  client_certificate_id : string prop option; [@option]
      (** client_certificate_id *)
  deployment_id : string prop;  (** deployment_id *)
  description : string prop option; [@option]  (** description *)
  documentation_version : string prop option; [@option]
      (** documentation_version *)
  id : string prop option; [@option]  (** id *)
  rest_api_id : string prop;  (** rest_api_id *)
  stage_name : string prop;  (** stage_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  variables : (string * string prop) list option; [@option]
      (** variables *)
  xray_tracing_enabled : bool prop option; [@option]
      (** xray_tracing_enabled *)
  access_log_settings : access_log_settings list;
  canary_settings : canary_settings list;
}
[@@deriving yojson_of]
(** aws_api_gateway_stage *)

let access_log_settings ~destination_arn ~format () :
    access_log_settings =
  { destination_arn; format }

let canary_settings ?percent_traffic ?stage_variable_overrides
    ?use_stage_cache () : canary_settings =
  { percent_traffic; stage_variable_overrides; use_stage_cache }

let aws_api_gateway_stage ?cache_cluster_enabled ?cache_cluster_size
    ?client_certificate_id ?description ?documentation_version ?id
    ?tags ?tags_all ?variables ?xray_tracing_enabled ~deployment_id
    ~rest_api_id ~stage_name ~access_log_settings ~canary_settings ()
    : aws_api_gateway_stage =
  {
    cache_cluster_enabled;
    cache_cluster_size;
    client_certificate_id;
    deployment_id;
    description;
    documentation_version;
    id;
    rest_api_id;
    stage_name;
    tags;
    tags_all;
    variables;
    xray_tracing_enabled;
    access_log_settings;
    canary_settings;
  }

type t = {
  arn : string prop;
  cache_cluster_enabled : bool prop;
  cache_cluster_size : string prop;
  client_certificate_id : string prop;
  deployment_id : string prop;
  description : string prop;
  documentation_version : string prop;
  execution_arn : string prop;
  id : string prop;
  invoke_url : string prop;
  rest_api_id : string prop;
  stage_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  variables : (string * string) list prop;
  web_acl_arn : string prop;
  xray_tracing_enabled : bool prop;
}

let register ?tf_module ?cache_cluster_enabled ?cache_cluster_size
    ?client_certificate_id ?description ?documentation_version ?id
    ?tags ?tags_all ?variables ?xray_tracing_enabled ~deployment_id
    ~rest_api_id ~stage_name ~access_log_settings ~canary_settings
    __resource_id =
  let __resource_type = "aws_api_gateway_stage" in
  let __resource =
    aws_api_gateway_stage ?cache_cluster_enabled ?cache_cluster_size
      ?client_certificate_id ?description ?documentation_version ?id
      ?tags ?tags_all ?variables ?xray_tracing_enabled ~deployment_id
      ~rest_api_id ~stage_name ~access_log_settings ~canary_settings
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_stage __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       cache_cluster_enabled =
         Prop.computed __resource_type __resource_id
           "cache_cluster_enabled";
       cache_cluster_size =
         Prop.computed __resource_type __resource_id
           "cache_cluster_size";
       client_certificate_id =
         Prop.computed __resource_type __resource_id
           "client_certificate_id";
       deployment_id =
         Prop.computed __resource_type __resource_id "deployment_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       documentation_version =
         Prop.computed __resource_type __resource_id
           "documentation_version";
       execution_arn =
         Prop.computed __resource_type __resource_id "execution_arn";
       id = Prop.computed __resource_type __resource_id "id";
       invoke_url =
         Prop.computed __resource_type __resource_id "invoke_url";
       rest_api_id =
         Prop.computed __resource_type __resource_id "rest_api_id";
       stage_name =
         Prop.computed __resource_type __resource_id "stage_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       variables =
         Prop.computed __resource_type __resource_id "variables";
       web_acl_arn =
         Prop.computed __resource_type __resource_id "web_acl_arn";
       xray_tracing_enabled =
         Prop.computed __resource_type __resource_id
           "xray_tracing_enabled";
     }
      : t)
  in
  __resource_attributes

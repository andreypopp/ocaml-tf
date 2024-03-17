(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_stage__access_log_settings = {
  destination_arn : string prop;  (** destination_arn *)
  format : string prop;  (** format *)
}
[@@deriving yojson_of]
(** aws_api_gateway_stage__access_log_settings *)

type aws_api_gateway_stage__canary_settings = {
  percent_traffic : float prop option; [@option]
      (** percent_traffic *)
  stage_variable_overrides : (string * string prop) list option;
      [@option]
      (** stage_variable_overrides *)
  use_stage_cache : bool prop option; [@option]
      (** use_stage_cache *)
}
[@@deriving yojson_of]
(** aws_api_gateway_stage__canary_settings *)

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
  access_log_settings :
    aws_api_gateway_stage__access_log_settings list;
  canary_settings : aws_api_gateway_stage__canary_settings list;
}
[@@deriving yojson_of]
(** aws_api_gateway_stage *)

let aws_api_gateway_stage ?cache_cluster_enabled ?cache_cluster_size
    ?client_certificate_id ?description ?documentation_version ?id
    ?tags ?tags_all ?variables ?xray_tracing_enabled ~deployment_id
    ~rest_api_id ~stage_name ~access_log_settings ~canary_settings
    __resource_id =
  let __resource_type = "aws_api_gateway_stage" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_stage __resource);
  ()

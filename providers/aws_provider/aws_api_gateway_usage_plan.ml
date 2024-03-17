(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_usage_plan__api_stages__throttle = {
  burst_limit : float option; [@option]  (** burst_limit *)
  path : string;  (** path *)
  rate_limit : float option; [@option]  (** rate_limit *)
}
[@@deriving yojson_of]
(** aws_api_gateway_usage_plan__api_stages__throttle *)

type aws_api_gateway_usage_plan__api_stages = {
  api_id : string;  (** api_id *)
  stage : string;  (** stage *)
  throttle : aws_api_gateway_usage_plan__api_stages__throttle list;
}
[@@deriving yojson_of]
(** aws_api_gateway_usage_plan__api_stages *)

type aws_api_gateway_usage_plan__quota_settings = {
  limit : float;  (** limit *)
  offset : float option; [@option]  (** offset *)
  period : string;  (** period *)
}
[@@deriving yojson_of]
(** aws_api_gateway_usage_plan__quota_settings *)

type aws_api_gateway_usage_plan__throttle_settings = {
  burst_limit : float option; [@option]  (** burst_limit *)
  rate_limit : float option; [@option]  (** rate_limit *)
}
[@@deriving yojson_of]
(** aws_api_gateway_usage_plan__throttle_settings *)

type aws_api_gateway_usage_plan = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  product_code : string option; [@option]  (** product_code *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  api_stages : aws_api_gateway_usage_plan__api_stages list;
  quota_settings : aws_api_gateway_usage_plan__quota_settings list;
  throttle_settings :
    aws_api_gateway_usage_plan__throttle_settings list;
}
[@@deriving yojson_of]
(** aws_api_gateway_usage_plan *)

let aws_api_gateway_usage_plan ?description ?id ?product_code ?tags
    ?tags_all ~name ~api_stages ~quota_settings ~throttle_settings
    __resource_id =
  let __resource_type = "aws_api_gateway_usage_plan" in
  let __resource =
    {
      description;
      id;
      name;
      product_code;
      tags;
      tags_all;
      api_stages;
      quota_settings;
      throttle_settings;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_usage_plan __resource);
  ()

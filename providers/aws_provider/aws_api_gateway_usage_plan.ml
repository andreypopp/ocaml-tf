(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_usage_plan__api_stages__throttle = {
  burst_limit : float prop option; [@option]  (** burst_limit *)
  path : string prop;  (** path *)
  rate_limit : float prop option; [@option]  (** rate_limit *)
}
[@@deriving yojson_of]
(** aws_api_gateway_usage_plan__api_stages__throttle *)

type aws_api_gateway_usage_plan__api_stages = {
  api_id : string prop;  (** api_id *)
  stage : string prop;  (** stage *)
  throttle : aws_api_gateway_usage_plan__api_stages__throttle list;
}
[@@deriving yojson_of]
(** aws_api_gateway_usage_plan__api_stages *)

type aws_api_gateway_usage_plan__quota_settings = {
  limit : float prop;  (** limit *)
  offset : float prop option; [@option]  (** offset *)
  period : string prop;  (** period *)
}
[@@deriving yojson_of]
(** aws_api_gateway_usage_plan__quota_settings *)

type aws_api_gateway_usage_plan__throttle_settings = {
  burst_limit : float prop option; [@option]  (** burst_limit *)
  rate_limit : float prop option; [@option]  (** rate_limit *)
}
[@@deriving yojson_of]
(** aws_api_gateway_usage_plan__throttle_settings *)

type aws_api_gateway_usage_plan = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  product_code : string prop option; [@option]  (** product_code *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
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

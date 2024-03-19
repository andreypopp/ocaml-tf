(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type api_stages__throttle = {
  burst_limit : float prop option; [@option]  (** burst_limit *)
  path : string prop;  (** path *)
  rate_limit : float prop option; [@option]  (** rate_limit *)
}
[@@deriving yojson_of]
(** api_stages__throttle *)

type api_stages = {
  api_id : string prop;  (** api_id *)
  stage : string prop;  (** stage *)
  throttle : api_stages__throttle list;
}
[@@deriving yojson_of]
(** api_stages *)

type quota_settings = {
  limit : float prop;  (** limit *)
  offset : float prop option; [@option]  (** offset *)
  period : string prop;  (** period *)
}
[@@deriving yojson_of]
(** quota_settings *)

type throttle_settings = {
  burst_limit : float prop option; [@option]  (** burst_limit *)
  rate_limit : float prop option; [@option]  (** rate_limit *)
}
[@@deriving yojson_of]
(** throttle_settings *)

type aws_api_gateway_usage_plan = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  product_code : string prop option; [@option]  (** product_code *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  api_stages : api_stages list;
  quota_settings : quota_settings list;
  throttle_settings : throttle_settings list;
}
[@@deriving yojson_of]
(** aws_api_gateway_usage_plan *)

let api_stages__throttle ?burst_limit ?rate_limit ~path () :
    api_stages__throttle =
  { burst_limit; path; rate_limit }

let api_stages ~api_id ~stage ~throttle () : api_stages =
  { api_id; stage; throttle }

let quota_settings ?offset ~limit ~period () : quota_settings =
  { limit; offset; period }

let throttle_settings ?burst_limit ?rate_limit () : throttle_settings
    =
  { burst_limit; rate_limit }

let aws_api_gateway_usage_plan ?description ?id ?product_code ?tags
    ?tags_all ~name ~api_stages ~quota_settings ~throttle_settings ()
    : aws_api_gateway_usage_plan =
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

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  product_code : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?description ?id ?product_code ?tags
    ?tags_all ~name ~api_stages ~quota_settings ~throttle_settings
    __resource_id =
  let __resource_type = "aws_api_gateway_usage_plan" in
  let __resource =
    aws_api_gateway_usage_plan ?description ?id ?product_code ?tags
      ?tags_all ~name ~api_stages ~quota_settings ~throttle_settings
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_usage_plan __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       product_code =
         Prop.computed __resource_type __resource_id "product_code";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes

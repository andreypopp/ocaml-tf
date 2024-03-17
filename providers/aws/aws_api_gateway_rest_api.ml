(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_rest_api__endpoint_configuration = {
  types : string prop list;  (** types *)
  vpc_endpoint_ids : string prop list option; [@option]
      (** vpc_endpoint_ids *)
}
[@@deriving yojson_of]
(** aws_api_gateway_rest_api__endpoint_configuration *)

type aws_api_gateway_rest_api = {
  api_key_source : string prop option; [@option]
      (** api_key_source *)
  binary_media_types : string prop list option; [@option]
      (** binary_media_types *)
  body : string prop option; [@option]  (** body *)
  description : string prop option; [@option]  (** description *)
  disable_execute_api_endpoint : bool prop option; [@option]
      (** disable_execute_api_endpoint *)
  fail_on_warnings : bool prop option; [@option]
      (** fail_on_warnings *)
  id : string prop option; [@option]  (** id *)
  minimum_compression_size : string prop option; [@option]
      (** minimum_compression_size *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  policy : string prop option; [@option]  (** policy *)
  put_rest_api_mode : string prop option; [@option]
      (** put_rest_api_mode *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  endpoint_configuration :
    aws_api_gateway_rest_api__endpoint_configuration list;
}
[@@deriving yojson_of]
(** aws_api_gateway_rest_api *)

type t = {
  api_key_source : string prop;
  arn : string prop;
  binary_media_types : string list prop;
  body : string prop;
  created_date : string prop;
  description : string prop;
  disable_execute_api_endpoint : bool prop;
  execution_arn : string prop;
  fail_on_warnings : bool prop;
  id : string prop;
  minimum_compression_size : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  policy : string prop;
  put_rest_api_mode : string prop;
  root_resource_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_api_gateway_rest_api ?api_key_source ?binary_media_types
    ?body ?description ?disable_execute_api_endpoint
    ?fail_on_warnings ?id ?minimum_compression_size ?parameters
    ?policy ?put_rest_api_mode ?tags ?tags_all ~name
    ~endpoint_configuration __resource_id =
  let __resource_type = "aws_api_gateway_rest_api" in
  let __resource =
    ({
       api_key_source;
       binary_media_types;
       body;
       description;
       disable_execute_api_endpoint;
       fail_on_warnings;
       id;
       minimum_compression_size;
       name;
       parameters;
       policy;
       put_rest_api_mode;
       tags;
       tags_all;
       endpoint_configuration;
     }
      : aws_api_gateway_rest_api)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_rest_api __resource);
  let __resource_attributes =
    ({
       api_key_source =
         Prop.computed __resource_type __resource_id "api_key_source";
       arn = Prop.computed __resource_type __resource_id "arn";
       binary_media_types =
         Prop.computed __resource_type __resource_id
           "binary_media_types";
       body = Prop.computed __resource_type __resource_id "body";
       created_date =
         Prop.computed __resource_type __resource_id "created_date";
       description =
         Prop.computed __resource_type __resource_id "description";
       disable_execute_api_endpoint =
         Prop.computed __resource_type __resource_id
           "disable_execute_api_endpoint";
       execution_arn =
         Prop.computed __resource_type __resource_id "execution_arn";
       fail_on_warnings =
         Prop.computed __resource_type __resource_id
           "fail_on_warnings";
       id = Prop.computed __resource_type __resource_id "id";
       minimum_compression_size =
         Prop.computed __resource_type __resource_id
           "minimum_compression_size";
       name = Prop.computed __resource_type __resource_id "name";
       parameters =
         Prop.computed __resource_type __resource_id "parameters";
       policy = Prop.computed __resource_type __resource_id "policy";
       put_rest_api_mode =
         Prop.computed __resource_type __resource_id
           "put_rest_api_mode";
       root_resource_id =
         Prop.computed __resource_type __resource_id
           "root_resource_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes

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

let aws_api_gateway_rest_api ?api_key_source ?binary_media_types
    ?body ?description ?disable_execute_api_endpoint
    ?fail_on_warnings ?id ?minimum_compression_size ?parameters
    ?policy ?put_rest_api_mode ?tags ?tags_all ~name
    ~endpoint_configuration __resource_id =
  let __resource_type = "aws_api_gateway_rest_api" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_rest_api __resource);
  ()

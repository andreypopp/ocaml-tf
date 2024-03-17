(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_rest_api__endpoint_configuration = {
  types : string list;  (** types *)
  vpc_endpoint_ids : string list option; [@option]
      (** vpc_endpoint_ids *)
}
[@@deriving yojson_of]
(** aws_api_gateway_rest_api__endpoint_configuration *)

type aws_api_gateway_rest_api = {
  api_key_source : string option; [@option]  (** api_key_source *)
  binary_media_types : string list option; [@option]
      (** binary_media_types *)
  body : string option; [@option]  (** body *)
  description : string option; [@option]  (** description *)
  disable_execute_api_endpoint : bool option; [@option]
      (** disable_execute_api_endpoint *)
  fail_on_warnings : bool option; [@option]  (** fail_on_warnings *)
  id : string option; [@option]  (** id *)
  minimum_compression_size : string option; [@option]
      (** minimum_compression_size *)
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  policy : string option; [@option]  (** policy *)
  put_rest_api_mode : string option; [@option]
      (** put_rest_api_mode *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
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

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_api_gateway_rest_api__endpoint_configuration = {
  types : string list;  (** types *)
  vpc_endpoint_ids : string list option; [@option]
      (** vpc_endpoint_ids *)
}
[@@deriving yojson_of]
(** aws_api_gateway_rest_api__endpoint_configuration *)

type aws_api_gateway_rest_api = {
  body : string option; [@option]  (** body *)
  fail_on_warnings : bool option; [@option]  (** fail_on_warnings *)
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  put_rest_api_mode : string option; [@option]
      (** put_rest_api_mode *)
  tags : (string * string) list option; [@option]  (** tags *)
  endpoint_configuration :
    aws_api_gateway_rest_api__endpoint_configuration list;
}
[@@deriving yojson_of]
(** aws_api_gateway_rest_api *)

let aws_api_gateway_rest_api ?body ?fail_on_warnings ?parameters
    ?put_rest_api_mode ?tags ~name ~endpoint_configuration
    __resource_id =
  let __resource_type = "aws_api_gateway_rest_api" in
  let __resource =
    {
      body;
      fail_on_warnings;
      name;
      parameters;
      put_rest_api_mode;
      tags;
      endpoint_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_rest_api __resource);
  ()

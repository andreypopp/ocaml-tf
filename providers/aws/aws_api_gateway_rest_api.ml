(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type endpoint_configuration = {
  types : string prop list;  (** types *)
  vpc_endpoint_ids : string prop list option; [@option]
      (** vpc_endpoint_ids *)
}
[@@deriving yojson_of]
(** endpoint_configuration *)

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
  endpoint_configuration : endpoint_configuration list;
}
[@@deriving yojson_of]
(** aws_api_gateway_rest_api *)

let endpoint_configuration ?vpc_endpoint_ids ~types () :
    endpoint_configuration =
  { types; vpc_endpoint_ids }

let aws_api_gateway_rest_api ?api_key_source ?binary_media_types
    ?body ?description ?disable_execute_api_endpoint
    ?fail_on_warnings ?id ?minimum_compression_size ?parameters
    ?policy ?put_rest_api_mode ?tags ?tags_all ~name
    ~endpoint_configuration () : aws_api_gateway_rest_api =
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

let make ?api_key_source ?binary_media_types ?body ?description
    ?disable_execute_api_endpoint ?fail_on_warnings ?id
    ?minimum_compression_size ?parameters ?policy ?put_rest_api_mode
    ?tags ?tags_all ~name ~endpoint_configuration __id =
  let __type = "aws_api_gateway_rest_api" in
  let __attrs =
    ({
       api_key_source = Prop.computed __type __id "api_key_source";
       arn = Prop.computed __type __id "arn";
       binary_media_types =
         Prop.computed __type __id "binary_media_types";
       body = Prop.computed __type __id "body";
       created_date = Prop.computed __type __id "created_date";
       description = Prop.computed __type __id "description";
       disable_execute_api_endpoint =
         Prop.computed __type __id "disable_execute_api_endpoint";
       execution_arn = Prop.computed __type __id "execution_arn";
       fail_on_warnings =
         Prop.computed __type __id "fail_on_warnings";
       id = Prop.computed __type __id "id";
       minimum_compression_size =
         Prop.computed __type __id "minimum_compression_size";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       policy = Prop.computed __type __id "policy";
       put_rest_api_mode =
         Prop.computed __type __id "put_rest_api_mode";
       root_resource_id =
         Prop.computed __type __id "root_resource_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_rest_api
        (aws_api_gateway_rest_api ?api_key_source ?binary_media_types
           ?body ?description ?disable_execute_api_endpoint
           ?fail_on_warnings ?id ?minimum_compression_size
           ?parameters ?policy ?put_rest_api_mode ?tags ?tags_all
           ~name ~endpoint_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?api_key_source ?binary_media_types ?body
    ?description ?disable_execute_api_endpoint ?fail_on_warnings ?id
    ?minimum_compression_size ?parameters ?policy ?put_rest_api_mode
    ?tags ?tags_all ~name ~endpoint_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?api_key_source ?binary_media_types ?body ?description
      ?disable_execute_api_endpoint ?fail_on_warnings ?id
      ?minimum_compression_size ?parameters ?policy
      ?put_rest_api_mode ?tags ?tags_all ~name
      ~endpoint_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

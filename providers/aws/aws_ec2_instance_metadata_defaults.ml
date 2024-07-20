(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_instance_metadata_defaults = {
  http_endpoint : string prop option; [@option]
  http_put_response_hop_limit : float prop option; [@option]
  http_tokens : string prop option; [@option]
  instance_metadata_tags : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_instance_metadata_defaults) -> ()

let yojson_of_aws_ec2_instance_metadata_defaults =
  (function
   | {
       http_endpoint = v_http_endpoint;
       http_put_response_hop_limit = v_http_put_response_hop_limit;
       http_tokens = v_http_tokens;
       instance_metadata_tags = v_instance_metadata_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_instance_metadata_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_metadata_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_tokens with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_tokens", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_put_response_hop_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "http_put_response_hop_limit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_endpoint", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ec2_instance_metadata_defaults ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_instance_metadata_defaults

[@@@deriving.end]

let aws_ec2_instance_metadata_defaults ?http_endpoint
    ?http_put_response_hop_limit ?http_tokens ?instance_metadata_tags
    () : aws_ec2_instance_metadata_defaults =
  {
    http_endpoint;
    http_put_response_hop_limit;
    http_tokens;
    instance_metadata_tags;
  }

type t = {
  tf_name : string;
  http_endpoint : string prop;
  http_put_response_hop_limit : float prop;
  http_tokens : string prop;
  id : string prop;
  instance_metadata_tags : string prop;
}

let make ?http_endpoint ?http_put_response_hop_limit ?http_tokens
    ?instance_metadata_tags __id =
  let __type = "aws_ec2_instance_metadata_defaults" in
  let __attrs =
    ({
       tf_name = __id;
       http_endpoint = Prop.computed __type __id "http_endpoint";
       http_put_response_hop_limit =
         Prop.computed __type __id "http_put_response_hop_limit";
       http_tokens = Prop.computed __type __id "http_tokens";
       id = Prop.computed __type __id "id";
       instance_metadata_tags =
         Prop.computed __type __id "instance_metadata_tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_instance_metadata_defaults
        (aws_ec2_instance_metadata_defaults ?http_endpoint
           ?http_put_response_hop_limit ?http_tokens
           ?instance_metadata_tags ());
    attrs = __attrs;
  }

let register ?tf_module ?http_endpoint ?http_put_response_hop_limit
    ?http_tokens ?instance_metadata_tags __id =
  let (r : _ Tf_core.resource) =
    make ?http_endpoint ?http_put_response_hop_limit ?http_tokens
      ?instance_metadata_tags __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

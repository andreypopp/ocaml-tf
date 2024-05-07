(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudwatch_event_api_destination = {
  connection_arn : string prop;
  description : string prop option; [@option]
  http_method : string prop;
  id : string prop option; [@option]
  invocation_endpoint : string prop;
  invocation_rate_limit_per_second : float prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudwatch_event_api_destination) -> ()

let yojson_of_aws_cloudwatch_event_api_destination =
  (function
   | {
       connection_arn = v_connection_arn;
       description = v_description;
       http_method = v_http_method;
       id = v_id;
       invocation_endpoint = v_invocation_endpoint;
       invocation_rate_limit_per_second =
         v_invocation_rate_limit_per_second;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_invocation_rate_limit_per_second with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "invocation_rate_limit_per_second", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_invocation_endpoint
         in
         ("invocation_endpoint", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_http_method in
         ("http_method", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connection_arn
         in
         ("connection_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_cloudwatch_event_api_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudwatch_event_api_destination

[@@@deriving.end]

let aws_cloudwatch_event_api_destination ?description ?id
    ?invocation_rate_limit_per_second ~connection_arn ~http_method
    ~invocation_endpoint ~name () :
    aws_cloudwatch_event_api_destination =
  {
    connection_arn;
    description;
    http_method;
    id;
    invocation_endpoint;
    invocation_rate_limit_per_second;
    name;
  }

type t = {
  tf_name : string;
  arn : string prop;
  connection_arn : string prop;
  description : string prop;
  http_method : string prop;
  id : string prop;
  invocation_endpoint : string prop;
  invocation_rate_limit_per_second : float prop;
  name : string prop;
}

let make ?description ?id ?invocation_rate_limit_per_second
    ~connection_arn ~http_method ~invocation_endpoint ~name __id =
  let __type = "aws_cloudwatch_event_api_destination" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       connection_arn = Prop.computed __type __id "connection_arn";
       description = Prop.computed __type __id "description";
       http_method = Prop.computed __type __id "http_method";
       id = Prop.computed __type __id "id";
       invocation_endpoint =
         Prop.computed __type __id "invocation_endpoint";
       invocation_rate_limit_per_second =
         Prop.computed __type __id "invocation_rate_limit_per_second";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_event_api_destination
        (aws_cloudwatch_event_api_destination ?description ?id
           ?invocation_rate_limit_per_second ~connection_arn
           ~http_method ~invocation_endpoint ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id
    ?invocation_rate_limit_per_second ~connection_arn ~http_method
    ~invocation_endpoint ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?invocation_rate_limit_per_second
      ~connection_arn ~http_method ~invocation_endpoint ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudwatch_event_api_destination = {
  connection_arn : string prop;  (** connection_arn *)
  description : string prop option; [@option]  (** description *)
  http_method : string prop;  (** http_method *)
  id : string prop option; [@option]  (** id *)
  invocation_endpoint : string prop;  (** invocation_endpoint *)
  invocation_rate_limit_per_second : float prop option; [@option]
      (** invocation_rate_limit_per_second *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_api_destination *)

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

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let aws_cloudwatch_event_api_destination ?description ?id
    ?invocation_rate_limit_per_second ~connection_arn ~http_method
    ~invocation_endpoint ~name __resource_id =
  let __resource_type = "aws_cloudwatch_event_api_destination" in
  let __resource =
    ({
       connection_arn;
       description;
       http_method;
       id;
       invocation_endpoint;
       invocation_rate_limit_per_second;
       name;
     }
      : aws_cloudwatch_event_api_destination)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_event_api_destination __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       connection_arn =
         Prop.computed __resource_type __resource_id "connection_arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       http_method =
         Prop.computed __resource_type __resource_id "http_method";
       id = Prop.computed __resource_type __resource_id "id";
       invocation_endpoint =
         Prop.computed __resource_type __resource_id
           "invocation_endpoint";
       invocation_rate_limit_per_second =
         Prop.computed __resource_type __resource_id
           "invocation_rate_limit_per_second";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes

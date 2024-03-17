(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_event_api_destination = {
  connection_arn : string;  (** connection_arn *)
  description : string option; [@option]  (** description *)
  http_method : string;  (** http_method *)
  invocation_endpoint : string;  (** invocation_endpoint *)
  invocation_rate_limit_per_second : float option; [@option]
      (** invocation_rate_limit_per_second *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_api_destination *)

let aws_cloudwatch_event_api_destination ?description
    ?invocation_rate_limit_per_second ~connection_arn ~http_method
    ~invocation_endpoint ~name __resource_id =
  let __resource_type = "aws_cloudwatch_event_api_destination" in
  let __resource =
    {
      connection_arn;
      description;
      http_method;
      invocation_endpoint;
      invocation_rate_limit_per_second;
      name;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_event_api_destination __resource);
  ()

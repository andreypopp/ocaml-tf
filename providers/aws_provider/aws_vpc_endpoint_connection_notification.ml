(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_vpc_endpoint_connection_notification = {
  connection_events : string list;  (** connection_events *)
  connection_notification_arn : string;
      (** connection_notification_arn *)
  vpc_endpoint_id : string option; [@option]  (** vpc_endpoint_id *)
  vpc_endpoint_service_id : string option; [@option]
      (** vpc_endpoint_service_id *)
}
[@@deriving yojson_of]
(** aws_vpc_endpoint_connection_notification *)

let aws_vpc_endpoint_connection_notification ?vpc_endpoint_id
    ?vpc_endpoint_service_id ~connection_events
    ~connection_notification_arn __resource_id =
  let __resource_type = "aws_vpc_endpoint_connection_notification" in
  let __resource =
    {
      connection_events;
      connection_notification_arn;
      vpc_endpoint_id;
      vpc_endpoint_service_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_endpoint_connection_notification __resource);
  ()

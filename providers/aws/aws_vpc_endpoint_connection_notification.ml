(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_endpoint_connection_notification = {
  connection_events : string prop list;  (** connection_events *)
  connection_notification_arn : string prop;
      (** connection_notification_arn *)
  id : string prop option; [@option]  (** id *)
  vpc_endpoint_id : string prop option; [@option]
      (** vpc_endpoint_id *)
  vpc_endpoint_service_id : string prop option; [@option]
      (** vpc_endpoint_service_id *)
}
[@@deriving yojson_of]
(** aws_vpc_endpoint_connection_notification *)

type t = {
  connection_events : string list prop;
  connection_notification_arn : string prop;
  id : string prop;
  notification_type : string prop;
  state : string prop;
  vpc_endpoint_id : string prop;
  vpc_endpoint_service_id : string prop;
}

let aws_vpc_endpoint_connection_notification ?id ?vpc_endpoint_id
    ?vpc_endpoint_service_id ~connection_events
    ~connection_notification_arn __resource_id =
  let __resource_type = "aws_vpc_endpoint_connection_notification" in
  let __resource =
    ({
       connection_events;
       connection_notification_arn;
       id;
       vpc_endpoint_id;
       vpc_endpoint_service_id;
     }
      : aws_vpc_endpoint_connection_notification)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_endpoint_connection_notification __resource);
  let __resource_attributes =
    ({
       connection_events =
         Prop.computed __resource_type __resource_id
           "connection_events";
       connection_notification_arn =
         Prop.computed __resource_type __resource_id
           "connection_notification_arn";
       id = Prop.computed __resource_type __resource_id "id";
       notification_type =
         Prop.computed __resource_type __resource_id
           "notification_type";
       state = Prop.computed __resource_type __resource_id "state";
       vpc_endpoint_id =
         Prop.computed __resource_type __resource_id
           "vpc_endpoint_id";
       vpc_endpoint_service_id =
         Prop.computed __resource_type __resource_id
           "vpc_endpoint_service_id";
     }
      : t)
  in
  __resource_attributes

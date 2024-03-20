(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let aws_vpc_endpoint_connection_notification ?id ?vpc_endpoint_id
    ?vpc_endpoint_service_id ~connection_events
    ~connection_notification_arn () :
    aws_vpc_endpoint_connection_notification =
  {
    connection_events;
    connection_notification_arn;
    id;
    vpc_endpoint_id;
    vpc_endpoint_service_id;
  }

type t = {
  connection_events : string list prop;
  connection_notification_arn : string prop;
  id : string prop;
  notification_type : string prop;
  state : string prop;
  vpc_endpoint_id : string prop;
  vpc_endpoint_service_id : string prop;
}

let make ?id ?vpc_endpoint_id ?vpc_endpoint_service_id
    ~connection_events ~connection_notification_arn __id =
  let __type = "aws_vpc_endpoint_connection_notification" in
  let __attrs =
    ({
       connection_events =
         Prop.computed __type __id "connection_events";
       connection_notification_arn =
         Prop.computed __type __id "connection_notification_arn";
       id = Prop.computed __type __id "id";
       notification_type =
         Prop.computed __type __id "notification_type";
       state = Prop.computed __type __id "state";
       vpc_endpoint_id = Prop.computed __type __id "vpc_endpoint_id";
       vpc_endpoint_service_id =
         Prop.computed __type __id "vpc_endpoint_service_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_endpoint_connection_notification
        (aws_vpc_endpoint_connection_notification ?id
           ?vpc_endpoint_id ?vpc_endpoint_service_id
           ~connection_events ~connection_notification_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?vpc_endpoint_id ?vpc_endpoint_service_id
    ~connection_events ~connection_notification_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ?vpc_endpoint_id ?vpc_endpoint_service_id
      ~connection_events ~connection_notification_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

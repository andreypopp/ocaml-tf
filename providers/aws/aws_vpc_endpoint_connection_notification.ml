(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_vpc_endpoint_connection_notification = {
  connection_events : string prop list;
  connection_notification_arn : string prop;
  id : string prop option; [@option]
  vpc_endpoint_id : string prop option; [@option]
  vpc_endpoint_service_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpc_endpoint_connection_notification) -> ()

let yojson_of_aws_vpc_endpoint_connection_notification =
  (function
   | {
       connection_events = v_connection_events;
       connection_notification_arn = v_connection_notification_arn;
       id = v_id;
       vpc_endpoint_id = v_vpc_endpoint_id;
       vpc_endpoint_service_id = v_vpc_endpoint_service_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vpc_endpoint_service_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_endpoint_service_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_vpc_endpoint_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_endpoint_id", arg in
             bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string
             v_connection_notification_arn
         in
         ("connection_notification_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_connection_events
         in
         ("connection_events", arg) :: bnds
       in
       `Assoc bnds
    : aws_vpc_endpoint_connection_notification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc_endpoint_connection_notification

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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

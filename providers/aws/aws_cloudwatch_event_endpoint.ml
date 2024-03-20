(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type event_bus = {
  event_bus_arn : string prop;  (** event_bus_arn *)
}
[@@deriving yojson_of]
(** event_bus *)

type replication_config = {
  state : string prop option; [@option]  (** state *)
}
[@@deriving yojson_of]
(** replication_config *)

type routing_config__failover_config__primary = {
  health_check : string prop option; [@option]  (** health_check *)
}
[@@deriving yojson_of]
(** routing_config__failover_config__primary *)

type routing_config__failover_config__secondary = {
  route : string prop option; [@option]  (** route *)
}
[@@deriving yojson_of]
(** routing_config__failover_config__secondary *)

type routing_config__failover_config = {
  primary : routing_config__failover_config__primary list;
  secondary : routing_config__failover_config__secondary list;
}
[@@deriving yojson_of]
(** routing_config__failover_config *)

type routing_config = {
  failover_config : routing_config__failover_config list;
}
[@@deriving yojson_of]
(** routing_config *)

type aws_cloudwatch_event_endpoint = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  role_arn : string prop option; [@option]  (** role_arn *)
  event_bus : event_bus list;
  replication_config : replication_config list;
  routing_config : routing_config list;
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_endpoint *)

let event_bus ~event_bus_arn () : event_bus = { event_bus_arn }
let replication_config ?state () : replication_config = { state }

let routing_config__failover_config__primary ?health_check () :
    routing_config__failover_config__primary =
  { health_check }

let routing_config__failover_config__secondary ?route () :
    routing_config__failover_config__secondary =
  { route }

let routing_config__failover_config ~primary ~secondary () :
    routing_config__failover_config =
  { primary; secondary }

let routing_config ~failover_config () : routing_config =
  { failover_config }

let aws_cloudwatch_event_endpoint ?description ?id ?role_arn ~name
    ~event_bus ~replication_config ~routing_config () :
    aws_cloudwatch_event_endpoint =
  {
    description;
    id;
    name;
    role_arn;
    event_bus;
    replication_config;
    routing_config;
  }

type t = {
  arn : string prop;
  description : string prop;
  endpoint_url : string prop;
  id : string prop;
  name : string prop;
  role_arn : string prop;
}

let make ?description ?id ?role_arn ~name ~event_bus
    ~replication_config ~routing_config __id =
  let __type = "aws_cloudwatch_event_endpoint" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       endpoint_url = Prop.computed __type __id "endpoint_url";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       role_arn = Prop.computed __type __id "role_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_event_endpoint
        (aws_cloudwatch_event_endpoint ?description ?id ?role_arn
           ~name ~event_bus ~replication_config ~routing_config ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?role_arn ~name ~event_bus
    ~replication_config ~routing_config __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?role_arn ~name ~event_bus
      ~replication_config ~routing_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type event_bus = { event_bus_arn : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : event_bus) -> ()

let yojson_of_event_bus =
  (function
   | { event_bus_arn = v_event_bus_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_event_bus_arn in
         ("event_bus_arn", arg) :: bnds
       in
       `Assoc bnds
    : event_bus -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_bus

[@@@deriving.end]

type replication_config = { state : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : replication_config) -> ()

let yojson_of_replication_config =
  (function
   | { state = v_state } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : replication_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_replication_config

[@@@deriving.end]

type routing_config__failover_config__primary = {
  health_check : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing_config__failover_config__primary) -> ()

let yojson_of_routing_config__failover_config__primary =
  (function
   | { health_check = v_health_check } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_health_check with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "health_check", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : routing_config__failover_config__primary ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing_config__failover_config__primary

[@@@deriving.end]

type routing_config__failover_config__secondary = {
  route : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing_config__failover_config__secondary) -> ()

let yojson_of_routing_config__failover_config__secondary =
  (function
   | { route = v_route } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_route with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "route", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : routing_config__failover_config__secondary ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing_config__failover_config__secondary

[@@@deriving.end]

type routing_config__failover_config = {
  primary : routing_config__failover_config__primary list;
  secondary : routing_config__failover_config__secondary list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing_config__failover_config) -> ()

let yojson_of_routing_config__failover_config =
  (function
   | { primary = v_primary; secondary = v_secondary } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_routing_config__failover_config__secondary
             v_secondary
         in
         ("secondary", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_routing_config__failover_config__primary
             v_primary
         in
         ("primary", arg) :: bnds
       in
       `Assoc bnds
    : routing_config__failover_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing_config__failover_config

[@@@deriving.end]

type routing_config = {
  failover_config : routing_config__failover_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing_config) -> ()

let yojson_of_routing_config =
  (function
   | { failover_config = v_failover_config } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_routing_config__failover_config
             v_failover_config
         in
         ("failover_config", arg) :: bnds
       in
       `Assoc bnds
    : routing_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing_config

[@@@deriving.end]

type aws_cloudwatch_event_endpoint = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  role_arn : string prop option; [@option]
  event_bus : event_bus list;
  replication_config : replication_config list;
  routing_config : routing_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudwatch_event_endpoint) -> ()

let yojson_of_aws_cloudwatch_event_endpoint =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       role_arn = v_role_arn;
       event_bus = v_event_bus;
       replication_config = v_replication_config;
       routing_config = v_routing_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_routing_config v_routing_config
         in
         ("routing_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_replication_config
             v_replication_config
         in
         ("replication_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_event_bus v_event_bus in
         ("event_bus", arg) :: bnds
       in
       let bnds =
         match v_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cloudwatch_event_endpoint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudwatch_event_endpoint

[@@@deriving.end]

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

let aws_cloudwatch_event_endpoint ?description ?id ?role_arn
    ?(replication_config = []) ~name ~event_bus ~routing_config () :
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
  tf_name : string;
  arn : string prop;
  description : string prop;
  endpoint_url : string prop;
  id : string prop;
  name : string prop;
  role_arn : string prop;
}

let make ?description ?id ?role_arn ?(replication_config = []) ~name
    ~event_bus ~routing_config __id =
  let __type = "aws_cloudwatch_event_endpoint" in
  let __attrs =
    ({
       tf_name = __id;
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
           ~replication_config ~name ~event_bus ~routing_config ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?role_arn
    ?(replication_config = []) ~name ~event_bus ~routing_config __id
    =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?role_arn ~replication_config ~name
      ~event_bus ~routing_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

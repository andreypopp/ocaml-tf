(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type endpoint_configuration = {
  client_ip_preservation_enabled : bool prop option; [@option]
  endpoint_id : string prop option; [@option]
  weight : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoint_configuration) -> ()

let yojson_of_endpoint_configuration =
  (function
   | {
       client_ip_preservation_enabled =
         v_client_ip_preservation_enabled;
       endpoint_id = v_endpoint_id;
       weight = v_weight;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_weight with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "weight", arg in
             bnd :: bnds
       in
       let bnds =
         match v_endpoint_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_ip_preservation_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "client_ip_preservation_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : endpoint_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoint_configuration

[@@@deriving.end]

type port_override = {
  endpoint_port : float prop;
  listener_port : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : port_override) -> ()

let yojson_of_port_override =
  (function
   | {
       endpoint_port = v_endpoint_port;
       listener_port = v_listener_port;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_listener_port in
         ("listener_port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_endpoint_port in
         ("endpoint_port", arg) :: bnds
       in
       `Assoc bnds
    : port_override -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_port_override

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_globalaccelerator_endpoint_group = {
  endpoint_group_region : string prop option; [@option]
  health_check_interval_seconds : float prop option; [@option]
  health_check_path : string prop option; [@option]
  health_check_port : float prop option; [@option]
  health_check_protocol : string prop option; [@option]
  id : string prop option; [@option]
  listener_arn : string prop;
  threshold_count : float prop option; [@option]
  traffic_dial_percentage : float prop option; [@option]
  endpoint_configuration : endpoint_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  port_override : port_override list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_globalaccelerator_endpoint_group) -> ()

let yojson_of_aws_globalaccelerator_endpoint_group =
  (function
   | {
       endpoint_group_region = v_endpoint_group_region;
       health_check_interval_seconds =
         v_health_check_interval_seconds;
       health_check_path = v_health_check_path;
       health_check_port = v_health_check_port;
       health_check_protocol = v_health_check_protocol;
       id = v_id;
       listener_arn = v_listener_arn;
       threshold_count = v_threshold_count;
       traffic_dial_percentage = v_traffic_dial_percentage;
       endpoint_configuration = v_endpoint_configuration;
       port_override = v_port_override;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_port_override then bnds
         else
           let arg =
             (yojson_of_list yojson_of_port_override) v_port_override
           in
           let bnd = "port_override", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_endpoint_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_endpoint_configuration)
               v_endpoint_configuration
           in
           let bnd = "endpoint_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_traffic_dial_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "traffic_dial_percentage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_threshold_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "threshold_count", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_listener_arn in
         ("listener_arn", arg) :: bnds
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
         match v_health_check_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "health_check_protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_health_check_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "health_check_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_health_check_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "health_check_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_health_check_interval_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "health_check_interval_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_endpoint_group_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint_group_region", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_globalaccelerator_endpoint_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_globalaccelerator_endpoint_group

[@@@deriving.end]

let endpoint_configuration ?client_ip_preservation_enabled
    ?endpoint_id ?weight () : endpoint_configuration =
  { client_ip_preservation_enabled; endpoint_id; weight }

let port_override ~endpoint_port ~listener_port () : port_override =
  { endpoint_port; listener_port }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_globalaccelerator_endpoint_group ?endpoint_group_region
    ?health_check_interval_seconds ?health_check_path
    ?health_check_port ?health_check_protocol ?id ?threshold_count
    ?traffic_dial_percentage ?timeouts ~listener_arn
    ~endpoint_configuration ~port_override () :
    aws_globalaccelerator_endpoint_group =
  {
    endpoint_group_region;
    health_check_interval_seconds;
    health_check_path;
    health_check_port;
    health_check_protocol;
    id;
    listener_arn;
    threshold_count;
    traffic_dial_percentage;
    endpoint_configuration;
    port_override;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  endpoint_group_region : string prop;
  health_check_interval_seconds : float prop;
  health_check_path : string prop;
  health_check_port : float prop;
  health_check_protocol : string prop;
  id : string prop;
  listener_arn : string prop;
  threshold_count : float prop;
  traffic_dial_percentage : float prop;
}

let make ?endpoint_group_region ?health_check_interval_seconds
    ?health_check_path ?health_check_port ?health_check_protocol ?id
    ?threshold_count ?traffic_dial_percentage ?timeouts ~listener_arn
    ~endpoint_configuration ~port_override __id =
  let __type = "aws_globalaccelerator_endpoint_group" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       endpoint_group_region =
         Prop.computed __type __id "endpoint_group_region";
       health_check_interval_seconds =
         Prop.computed __type __id "health_check_interval_seconds";
       health_check_path =
         Prop.computed __type __id "health_check_path";
       health_check_port =
         Prop.computed __type __id "health_check_port";
       health_check_protocol =
         Prop.computed __type __id "health_check_protocol";
       id = Prop.computed __type __id "id";
       listener_arn = Prop.computed __type __id "listener_arn";
       threshold_count = Prop.computed __type __id "threshold_count";
       traffic_dial_percentage =
         Prop.computed __type __id "traffic_dial_percentage";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_globalaccelerator_endpoint_group
        (aws_globalaccelerator_endpoint_group ?endpoint_group_region
           ?health_check_interval_seconds ?health_check_path
           ?health_check_port ?health_check_protocol ?id
           ?threshold_count ?traffic_dial_percentage ?timeouts
           ~listener_arn ~endpoint_configuration ~port_override ());
    attrs = __attrs;
  }

let register ?tf_module ?endpoint_group_region
    ?health_check_interval_seconds ?health_check_path
    ?health_check_port ?health_check_protocol ?id ?threshold_count
    ?traffic_dial_percentage ?timeouts ~listener_arn
    ~endpoint_configuration ~port_override __id =
  let (r : _ Tf_core.resource) =
    make ?endpoint_group_region ?health_check_interval_seconds
      ?health_check_path ?health_check_port ?health_check_protocol
      ?id ?threshold_count ?traffic_dial_percentage ?timeouts
      ~listener_arn ~endpoint_configuration ~port_override __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

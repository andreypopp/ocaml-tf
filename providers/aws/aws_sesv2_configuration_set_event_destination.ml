(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type event_destination__cloud_watch_destination__dimension_configuration = {
  default_dimension_value : string prop;
  dimension_name : string prop;
  dimension_value_source : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       event_destination__cloud_watch_destination__dimension_configuration) ->
  ()

let yojson_of_event_destination__cloud_watch_destination__dimension_configuration
    =
  (function
   | {
       default_dimension_value = v_default_dimension_value;
       dimension_name = v_dimension_name;
       dimension_value_source = v_dimension_value_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_dimension_value_source
         in
         ("dimension_value_source", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_dimension_name
         in
         ("dimension_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_default_dimension_value
         in
         ("default_dimension_value", arg) :: bnds
       in
       `Assoc bnds
    : event_destination__cloud_watch_destination__dimension_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_event_destination__cloud_watch_destination__dimension_configuration

[@@@deriving.end]

type event_destination__cloud_watch_destination = {
  dimension_configuration :
    event_destination__cloud_watch_destination__dimension_configuration
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : event_destination__cloud_watch_destination) -> ()

let yojson_of_event_destination__cloud_watch_destination =
  (function
   | { dimension_configuration = v_dimension_configuration } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_event_destination__cloud_watch_destination__dimension_configuration
             v_dimension_configuration
         in
         ("dimension_configuration", arg) :: bnds
       in
       `Assoc bnds
    : event_destination__cloud_watch_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_destination__cloud_watch_destination

[@@@deriving.end]

type event_destination__kinesis_firehose_destination = {
  delivery_stream_arn : string prop;
  iam_role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : event_destination__kinesis_firehose_destination) -> ()

let yojson_of_event_destination__kinesis_firehose_destination =
  (function
   | {
       delivery_stream_arn = v_delivery_stream_arn;
       iam_role_arn = v_iam_role_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_iam_role_arn in
         ("iam_role_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_delivery_stream_arn
         in
         ("delivery_stream_arn", arg) :: bnds
       in
       `Assoc bnds
    : event_destination__kinesis_firehose_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_destination__kinesis_firehose_destination

[@@@deriving.end]

type event_destination__pinpoint_destination = {
  application_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : event_destination__pinpoint_destination) -> ()

let yojson_of_event_destination__pinpoint_destination =
  (function
   | { application_arn = v_application_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_arn
         in
         ("application_arn", arg) :: bnds
       in
       `Assoc bnds
    : event_destination__pinpoint_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_destination__pinpoint_destination

[@@@deriving.end]

type event_destination__sns_destination = { topic_arn : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : event_destination__sns_destination) -> ()

let yojson_of_event_destination__sns_destination =
  (function
   | { topic_arn = v_topic_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topic_arn in
         ("topic_arn", arg) :: bnds
       in
       `Assoc bnds
    : event_destination__sns_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_destination__sns_destination

[@@@deriving.end]

type event_destination = {
  enabled : bool prop option; [@option]
  matching_event_types : string prop list;
  cloud_watch_destination :
    event_destination__cloud_watch_destination list;
  kinesis_firehose_destination :
    event_destination__kinesis_firehose_destination list;
  pinpoint_destination :
    event_destination__pinpoint_destination list;
  sns_destination : event_destination__sns_destination list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : event_destination) -> ()

let yojson_of_event_destination =
  (function
   | {
       enabled = v_enabled;
       matching_event_types = v_matching_event_types;
       cloud_watch_destination = v_cloud_watch_destination;
       kinesis_firehose_destination = v_kinesis_firehose_destination;
       pinpoint_destination = v_pinpoint_destination;
       sns_destination = v_sns_destination;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_event_destination__sns_destination
             v_sns_destination
         in
         ("sns_destination", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_event_destination__pinpoint_destination
             v_pinpoint_destination
         in
         ("pinpoint_destination", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_event_destination__kinesis_firehose_destination
             v_kinesis_firehose_destination
         in
         ("kinesis_firehose_destination", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_event_destination__cloud_watch_destination
             v_cloud_watch_destination
         in
         ("cloud_watch_destination", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_matching_event_types
         in
         ("matching_event_types", arg) :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : event_destination -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_destination

[@@@deriving.end]

type aws_sesv2_configuration_set_event_destination = {
  configuration_set_name : string prop;
  event_destination_name : string prop;
  id : string prop option; [@option]
  event_destination : event_destination list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sesv2_configuration_set_event_destination) -> ()

let yojson_of_aws_sesv2_configuration_set_event_destination =
  (function
   | {
       configuration_set_name = v_configuration_set_name;
       event_destination_name = v_event_destination_name;
       id = v_id;
       event_destination = v_event_destination;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_event_destination
             v_event_destination
         in
         ("event_destination", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_event_destination_name
         in
         ("event_destination_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_configuration_set_name
         in
         ("configuration_set_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_sesv2_configuration_set_event_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sesv2_configuration_set_event_destination

[@@@deriving.end]

let event_destination__cloud_watch_destination__dimension_configuration
    ~default_dimension_value ~dimension_name ~dimension_value_source
    () :
    event_destination__cloud_watch_destination__dimension_configuration
    =
  { default_dimension_value; dimension_name; dimension_value_source }

let event_destination__cloud_watch_destination
    ~dimension_configuration () :
    event_destination__cloud_watch_destination =
  { dimension_configuration }

let event_destination__kinesis_firehose_destination
    ~delivery_stream_arn ~iam_role_arn () :
    event_destination__kinesis_firehose_destination =
  { delivery_stream_arn; iam_role_arn }

let event_destination__pinpoint_destination ~application_arn () :
    event_destination__pinpoint_destination =
  { application_arn }

let event_destination__sns_destination ~topic_arn () :
    event_destination__sns_destination =
  { topic_arn }

let event_destination ?enabled ?(cloud_watch_destination = [])
    ?(kinesis_firehose_destination = []) ?(pinpoint_destination = [])
    ?(sns_destination = []) ~matching_event_types () :
    event_destination =
  {
    enabled;
    matching_event_types;
    cloud_watch_destination;
    kinesis_firehose_destination;
    pinpoint_destination;
    sns_destination;
  }

let aws_sesv2_configuration_set_event_destination ?id
    ~configuration_set_name ~event_destination_name
    ~event_destination () :
    aws_sesv2_configuration_set_event_destination =
  {
    configuration_set_name;
    event_destination_name;
    id;
    event_destination;
  }

type t = {
  tf_name : string;
  configuration_set_name : string prop;
  event_destination_name : string prop;
  id : string prop;
}

let make ?id ~configuration_set_name ~event_destination_name
    ~event_destination __id =
  let __type = "aws_sesv2_configuration_set_event_destination" in
  let __attrs =
    ({
       tf_name = __id;
       configuration_set_name =
         Prop.computed __type __id "configuration_set_name";
       event_destination_name =
         Prop.computed __type __id "event_destination_name";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sesv2_configuration_set_event_destination
        (aws_sesv2_configuration_set_event_destination ?id
           ~configuration_set_name ~event_destination_name
           ~event_destination ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~configuration_set_name
    ~event_destination_name ~event_destination __id =
  let (r : _ Tf_core.resource) =
    make ?id ~configuration_set_name ~event_destination_name
      ~event_destination __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

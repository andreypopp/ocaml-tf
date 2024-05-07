(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudwatch_destination = {
  default_value : string prop;
  dimension_name : string prop;
  value_source : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudwatch_destination) -> ()

let yojson_of_cloudwatch_destination =
  (function
   | {
       default_value = v_default_value;
       dimension_name = v_dimension_name;
       value_source = v_value_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value_source in
         ("value_source", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_dimension_name
         in
         ("dimension_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_default_value in
         ("default_value", arg) :: bnds
       in
       `Assoc bnds
    : cloudwatch_destination -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudwatch_destination

[@@@deriving.end]

type kinesis_destination = {
  role_arn : string prop;
  stream_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kinesis_destination) -> ()

let yojson_of_kinesis_destination =
  (function
   | { role_arn = v_role_arn; stream_arn = v_stream_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stream_arn in
         ("stream_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       `Assoc bnds
    : kinesis_destination -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kinesis_destination

[@@@deriving.end]

type sns_destination = { topic_arn : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : sns_destination) -> ()

let yojson_of_sns_destination =
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
    : sns_destination -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sns_destination

[@@@deriving.end]

type aws_ses_event_destination = {
  configuration_set_name : string prop;
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  matching_types : string prop list;
  name : string prop;
  cloudwatch_destination : cloudwatch_destination list;
  kinesis_destination : kinesis_destination list;
  sns_destination : sns_destination list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ses_event_destination) -> ()

let yojson_of_aws_ses_event_destination =
  (function
   | {
       configuration_set_name = v_configuration_set_name;
       enabled = v_enabled;
       id = v_id;
       matching_types = v_matching_types;
       name = v_name;
       cloudwatch_destination = v_cloudwatch_destination;
       kinesis_destination = v_kinesis_destination;
       sns_destination = v_sns_destination;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_sns_destination v_sns_destination
         in
         ("sns_destination", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_kinesis_destination
             v_kinesis_destination
         in
         ("kinesis_destination", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cloudwatch_destination
             v_cloudwatch_destination
         in
         ("cloudwatch_destination", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_matching_types
         in
         ("matching_types", arg) :: bnds
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_configuration_set_name
         in
         ("configuration_set_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_ses_event_destination -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ses_event_destination

[@@@deriving.end]

let cloudwatch_destination ~default_value ~dimension_name
    ~value_source () : cloudwatch_destination =
  { default_value; dimension_name; value_source }

let kinesis_destination ~role_arn ~stream_arn () :
    kinesis_destination =
  { role_arn; stream_arn }

let sns_destination ~topic_arn () : sns_destination = { topic_arn }

let aws_ses_event_destination ?enabled ?id
    ?(kinesis_destination = []) ?(sns_destination = [])
    ~configuration_set_name ~matching_types ~name
    ~cloudwatch_destination () : aws_ses_event_destination =
  {
    configuration_set_name;
    enabled;
    id;
    matching_types;
    name;
    cloudwatch_destination;
    kinesis_destination;
    sns_destination;
  }

type t = {
  tf_name : string;
  arn : string prop;
  configuration_set_name : string prop;
  enabled : bool prop;
  id : string prop;
  matching_types : string list prop;
  name : string prop;
}

let make ?enabled ?id ?(kinesis_destination = [])
    ?(sns_destination = []) ~configuration_set_name ~matching_types
    ~name ~cloudwatch_destination __id =
  let __type = "aws_ses_event_destination" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       configuration_set_name =
         Prop.computed __type __id "configuration_set_name";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       matching_types = Prop.computed __type __id "matching_types";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ses_event_destination
        (aws_ses_event_destination ?enabled ?id ~kinesis_destination
           ~sns_destination ~configuration_set_name ~matching_types
           ~name ~cloudwatch_destination ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?(kinesis_destination = [])
    ?(sns_destination = []) ~configuration_set_name ~matching_types
    ~name ~cloudwatch_destination __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ~kinesis_destination ~sns_destination
      ~configuration_set_name ~matching_types ~name
      ~cloudwatch_destination __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

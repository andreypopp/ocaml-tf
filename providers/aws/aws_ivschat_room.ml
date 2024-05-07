(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type message_review_handler = {
  fallback_result : string prop option; [@option]
  uri : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : message_review_handler) -> ()

let yojson_of_message_review_handler =
  (function
   | { fallback_result = v_fallback_result; uri = v_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fallback_result with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fallback_result", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : message_review_handler -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_message_review_handler

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

type aws_ivschat_room = {
  id : string prop option; [@option]
  logging_configuration_identifiers : string prop list option;
      [@option]
  maximum_message_length : float prop option; [@option]
  maximum_message_rate_per_second : float prop option; [@option]
  name : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  message_review_handler : message_review_handler list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ivschat_room) -> ()

let yojson_of_aws_ivschat_room =
  (function
   | {
       id = v_id;
       logging_configuration_identifiers =
         v_logging_configuration_identifiers;
       maximum_message_length = v_maximum_message_length;
       maximum_message_rate_per_second =
         v_maximum_message_rate_per_second;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       message_review_handler = v_message_review_handler;
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
         let arg =
           yojson_of_list yojson_of_message_review_handler
             v_message_review_handler
         in
         ("message_review_handler", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_message_rate_per_second with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_message_rate_per_second", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_message_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_message_length", arg in
             bnd :: bnds
       in
       let bnds =
         match v_logging_configuration_identifiers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "logging_configuration_identifiers", arg in
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
       `Assoc bnds
    : aws_ivschat_room -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ivschat_room

[@@@deriving.end]

let message_review_handler ?fallback_result ?uri () :
    message_review_handler =
  { fallback_result; uri }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_ivschat_room ?id ?logging_configuration_identifiers
    ?maximum_message_length ?maximum_message_rate_per_second ?name
    ?tags ?tags_all ?(message_review_handler = []) ?timeouts () :
    aws_ivschat_room =
  {
    id;
    logging_configuration_identifiers;
    maximum_message_length;
    maximum_message_rate_per_second;
    name;
    tags;
    tags_all;
    message_review_handler;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  logging_configuration_identifiers : string list prop;
  maximum_message_length : float prop;
  maximum_message_rate_per_second : float prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?logging_configuration_identifiers
    ?maximum_message_length ?maximum_message_rate_per_second ?name
    ?tags ?tags_all ?(message_review_handler = []) ?timeouts __id =
  let __type = "aws_ivschat_room" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       logging_configuration_identifiers =
         Prop.computed __type __id
           "logging_configuration_identifiers";
       maximum_message_length =
         Prop.computed __type __id "maximum_message_length";
       maximum_message_rate_per_second =
         Prop.computed __type __id "maximum_message_rate_per_second";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ivschat_room
        (aws_ivschat_room ?id ?logging_configuration_identifiers
           ?maximum_message_length ?maximum_message_rate_per_second
           ?name ?tags ?tags_all ~message_review_handler ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?logging_configuration_identifiers
    ?maximum_message_length ?maximum_message_rate_per_second ?name
    ?tags ?tags_all ?(message_review_handler = []) ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?id ?logging_configuration_identifiers
      ?maximum_message_length ?maximum_message_rate_per_second ?name
      ?tags ?tags_all ~message_review_handler ?timeouts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

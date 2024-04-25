(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type destination_configuration__s3 = { bucket_name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : destination_configuration__s3) -> ()

let yojson_of_destination_configuration__s3 =
  (function
   | { bucket_name = v_bucket_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : destination_configuration__s3 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination_configuration__s3

[@@@deriving.end]

type destination_configuration = {
  s3 : destination_configuration__s3 list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination_configuration) -> ()

let yojson_of_destination_configuration =
  (function
   | { s3 = v_s3 } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_destination_configuration__s3
             v_s3
         in
         ("s3", arg) :: bnds
       in
       `Assoc bnds
    : destination_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination_configuration

[@@@deriving.end]

type thumbnail_configuration = {
  recording_mode : string prop option; [@option]
  target_interval_seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : thumbnail_configuration) -> ()

let yojson_of_thumbnail_configuration =
  (function
   | {
       recording_mode = v_recording_mode;
       target_interval_seconds = v_target_interval_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_target_interval_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "target_interval_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_recording_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "recording_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : thumbnail_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_thumbnail_configuration

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type aws_ivs_recording_configuration = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  recording_reconnect_window_seconds : float prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  destination_configuration : destination_configuration list;
  thumbnail_configuration : thumbnail_configuration list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ivs_recording_configuration) -> ()

let yojson_of_aws_ivs_recording_configuration =
  (function
   | {
       id = v_id;
       name = v_name;
       recording_reconnect_window_seconds =
         v_recording_reconnect_window_seconds;
       tags = v_tags;
       tags_all = v_tags_all;
       destination_configuration = v_destination_configuration;
       thumbnail_configuration = v_thumbnail_configuration;
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
           yojson_of_list yojson_of_thumbnail_configuration
             v_thumbnail_configuration
         in
         ("thumbnail_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_destination_configuration
             v_destination_configuration
         in
         ("destination_configuration", arg) :: bnds
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
         match v_recording_reconnect_window_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "recording_reconnect_window_seconds", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ivs_recording_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ivs_recording_configuration

[@@@deriving.end]

let destination_configuration__s3 ~bucket_name () :
    destination_configuration__s3 =
  { bucket_name }

let destination_configuration ~s3 () : destination_configuration =
  { s3 }

let thumbnail_configuration ?recording_mode ?target_interval_seconds
    () : thumbnail_configuration =
  { recording_mode; target_interval_seconds }

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ivs_recording_configuration ?id ?name
    ?recording_reconnect_window_seconds ?tags ?tags_all
    ?(thumbnail_configuration = []) ?timeouts
    ~destination_configuration () : aws_ivs_recording_configuration =
  {
    id;
    name;
    recording_reconnect_window_seconds;
    tags;
    tags_all;
    destination_configuration;
    thumbnail_configuration;
    timeouts;
  }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  recording_reconnect_window_seconds : float prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?name ?recording_reconnect_window_seconds ?tags
    ?tags_all ?(thumbnail_configuration = []) ?timeouts
    ~destination_configuration __id =
  let __type = "aws_ivs_recording_configuration" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       recording_reconnect_window_seconds =
         Prop.computed __type __id
           "recording_reconnect_window_seconds";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ivs_recording_configuration
        (aws_ivs_recording_configuration ?id ?name
           ?recording_reconnect_window_seconds ?tags ?tags_all
           ~thumbnail_configuration ?timeouts
           ~destination_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?recording_reconnect_window_seconds
    ?tags ?tags_all ?(thumbnail_configuration = []) ?timeouts
    ~destination_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?recording_reconnect_window_seconds ?tags
      ?tags_all ~thumbnail_configuration ?timeouts
      ~destination_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

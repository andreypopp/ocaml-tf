(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type data_sharing_preference = { opt_in : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : data_sharing_preference) -> ()

let yojson_of_data_sharing_preference =
  (function
   | { opt_in = v_opt_in } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_opt_in in
         ("opt_in", arg) :: bnds
       in
       `Assoc bnds
    : data_sharing_preference -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_sharing_preference

[@@@deriving.end]

type input__kinesis_video_stream = { arn : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : input__kinesis_video_stream) -> ()

let yojson_of_input__kinesis_video_stream =
  (function
   | { arn = v_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : input__kinesis_video_stream ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_input__kinesis_video_stream

[@@@deriving.end]

type input = {
  kinesis_video_stream : input__kinesis_video_stream list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : input) -> ()

let yojson_of_input =
  (function
   | { kinesis_video_stream = v_kinesis_video_stream } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_kinesis_video_stream then bnds
         else
           let arg =
             (yojson_of_list yojson_of_input__kinesis_video_stream)
               v_kinesis_video_stream
           in
           let bnd = "kinesis_video_stream", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : input -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_input

[@@@deriving.end]

type notification_channel = {
  sns_topic_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notification_channel) -> ()

let yojson_of_notification_channel =
  (function
   | { sns_topic_arn = v_sns_topic_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sns_topic_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sns_topic_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : notification_channel -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notification_channel

[@@@deriving.end]

type output__kinesis_data_stream = {
  arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output__kinesis_data_stream) -> ()

let yojson_of_output__kinesis_data_stream =
  (function
   | { arn = v_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : output__kinesis_data_stream ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__kinesis_data_stream

[@@@deriving.end]

type output__s3_destination = {
  bucket : string prop option; [@option]
  key_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output__s3_destination) -> ()

let yojson_of_output__s3_destination =
  (function
   | { bucket = v_bucket; key_prefix = v_key_prefix } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_key_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : output__s3_destination -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output__s3_destination

[@@@deriving.end]

type output = {
  kinesis_data_stream : output__kinesis_data_stream list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  s3_destination : output__s3_destination list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output) -> ()

let yojson_of_output =
  (function
   | {
       kinesis_data_stream = v_kinesis_data_stream;
       s3_destination = v_s3_destination;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_s3_destination then bnds
         else
           let arg =
             (yojson_of_list yojson_of_output__s3_destination)
               v_s3_destination
           in
           let bnd = "s3_destination", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kinesis_data_stream then bnds
         else
           let arg =
             (yojson_of_list yojson_of_output__kinesis_data_stream)
               v_kinesis_data_stream
           in
           let bnd = "kinesis_data_stream", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : output -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output

[@@@deriving.end]

type regions_of_interest__bounding_box = {
  height : float prop option; [@option]
  left : float prop option; [@option]
  top : float prop option; [@option]
  width : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : regions_of_interest__bounding_box) -> ()

let yojson_of_regions_of_interest__bounding_box =
  (function
   | {
       height = v_height;
       left = v_left;
       top = v_top;
       width = v_width;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_width with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "width", arg in
             bnd :: bnds
       in
       let bnds =
         match v_top with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "top", arg in
             bnd :: bnds
       in
       let bnds =
         match v_left with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "left", arg in
             bnd :: bnds
       in
       let bnds =
         match v_height with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "height", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : regions_of_interest__bounding_box ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_regions_of_interest__bounding_box

[@@@deriving.end]

type regions_of_interest__polygon = {
  x : float prop option; [@option]
  y : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : regions_of_interest__polygon) -> ()

let yojson_of_regions_of_interest__polygon =
  (function
   | { x = v_x; y = v_y } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_y with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "y", arg in
             bnd :: bnds
       in
       let bnds =
         match v_x with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "x", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : regions_of_interest__polygon ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_regions_of_interest__polygon

[@@@deriving.end]

type regions_of_interest = {
  bounding_box : regions_of_interest__bounding_box;
  polygon : regions_of_interest__polygon list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : regions_of_interest) -> ()

let yojson_of_regions_of_interest =
  (function
   | { bounding_box = v_bounding_box; polygon = v_polygon } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_polygon then bnds
         else
           let arg =
             (yojson_of_list yojson_of_regions_of_interest__polygon)
               v_polygon
           in
           let bnd = "polygon", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_regions_of_interest__bounding_box v_bounding_box
         in
         ("bounding_box", arg) :: bnds
       in
       `Assoc bnds
    : regions_of_interest -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_regions_of_interest

[@@@deriving.end]

type settings__connected_home = {
  labels : string prop list option; [@option]
  min_confidence : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : settings__connected_home) -> ()

let yojson_of_settings__connected_home =
  (function
   | { labels = v_labels; min_confidence = v_min_confidence } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_min_confidence with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_confidence", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : settings__connected_home -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__connected_home

[@@@deriving.end]

type settings__face_search = {
  collection_id : string prop;
  face_match_threshold : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : settings__face_search) -> ()

let yojson_of_settings__face_search =
  (function
   | {
       collection_id = v_collection_id;
       face_match_threshold = v_face_match_threshold;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_face_match_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "face_match_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_collection_id in
         ("collection_id", arg) :: bnds
       in
       `Assoc bnds
    : settings__face_search -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__face_search

[@@@deriving.end]

type settings = {
  connected_home : settings__connected_home list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  face_search : settings__face_search list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : settings) -> ()

let yojson_of_settings =
  (function
   | {
       connected_home = v_connected_home;
       face_search = v_face_search;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_face_search then bnds
         else
           let arg =
             (yojson_of_list yojson_of_settings__face_search)
               v_face_search
           in
           let bnd = "face_search", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_connected_home then bnds
         else
           let arg =
             (yojson_of_list yojson_of_settings__connected_home)
               v_connected_home
           in
           let bnd = "connected_home", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings

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

type aws_rekognition_stream_processor = {
  kms_key_id : string prop option; [@option]
  name : string prop;
  role_arn : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  data_sharing_preference : data_sharing_preference list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  input : input list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  notification_channel : notification_channel list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  output : output list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  regions_of_interest : regions_of_interest list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  settings : settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_rekognition_stream_processor) -> ()

let yojson_of_aws_rekognition_stream_processor =
  (function
   | {
       kms_key_id = v_kms_key_id;
       name = v_name;
       role_arn = v_role_arn;
       tags = v_tags;
       data_sharing_preference = v_data_sharing_preference;
       input = v_input;
       notification_channel = v_notification_channel;
       output = v_output;
       regions_of_interest = v_regions_of_interest;
       settings = v_settings;
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
         if Stdlib.( = ) [] v_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_settings) v_settings
           in
           let bnd = "settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_regions_of_interest then bnds
         else
           let arg =
             (yojson_of_list yojson_of_regions_of_interest)
               v_regions_of_interest
           in
           let bnd = "regions_of_interest", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_output then bnds
         else
           let arg = (yojson_of_list yojson_of_output) v_output in
           let bnd = "output", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_notification_channel then bnds
         else
           let arg =
             (yojson_of_list yojson_of_notification_channel)
               v_notification_channel
           in
           let bnd = "notification_channel", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_input then bnds
         else
           let arg = (yojson_of_list yojson_of_input) v_input in
           let bnd = "input", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_data_sharing_preference then bnds
         else
           let arg =
             (yojson_of_list yojson_of_data_sharing_preference)
               v_data_sharing_preference
           in
           let bnd = "data_sharing_preference", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_rekognition_stream_processor ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_rekognition_stream_processor

[@@@deriving.end]

let data_sharing_preference ~opt_in () : data_sharing_preference =
  { opt_in }

let input__kinesis_video_stream ~arn () : input__kinesis_video_stream
    =
  { arn }

let input ?(kinesis_video_stream = []) () : input =
  { kinesis_video_stream }

let notification_channel ?sns_topic_arn () : notification_channel =
  { sns_topic_arn }

let output__kinesis_data_stream ?arn () : output__kinesis_data_stream
    =
  { arn }

let output__s3_destination ?bucket ?key_prefix () :
    output__s3_destination =
  { bucket; key_prefix }

let output ?(kinesis_data_stream = []) ?(s3_destination = []) () :
    output =
  { kinesis_data_stream; s3_destination }

let regions_of_interest__bounding_box ?height ?left ?top ?width () :
    regions_of_interest__bounding_box =
  { height; left; top; width }

let regions_of_interest__polygon ?x ?y () :
    regions_of_interest__polygon =
  { x; y }

let regions_of_interest ?(polygon = []) ~bounding_box () :
    regions_of_interest =
  { bounding_box; polygon }

let settings__connected_home ?labels ?min_confidence () :
    settings__connected_home =
  { labels; min_confidence }

let settings__face_search ?face_match_threshold ~collection_id () :
    settings__face_search =
  { collection_id; face_match_threshold }

let settings ?(connected_home = []) ?(face_search = []) () : settings
    =
  { connected_home; face_search }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_rekognition_stream_processor ?kms_key_id ?tags
    ?(data_sharing_preference = []) ?(input = [])
    ?(notification_channel = []) ?(output = [])
    ?(regions_of_interest = []) ?(settings = []) ?timeouts ~name
    ~role_arn () : aws_rekognition_stream_processor =
  {
    kms_key_id;
    name;
    role_arn;
    tags;
    data_sharing_preference;
    input;
    notification_channel;
    output;
    regions_of_interest;
    settings;
    timeouts;
  }

type t = {
  tf_name : string;
  kms_key_id : string prop;
  name : string prop;
  role_arn : string prop;
  stream_processor_arn : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?kms_key_id ?tags ?(data_sharing_preference = [])
    ?(input = []) ?(notification_channel = []) ?(output = [])
    ?(regions_of_interest = []) ?(settings = []) ?timeouts ~name
    ~role_arn __id =
  let __type = "aws_rekognition_stream_processor" in
  let __attrs =
    ({
       tf_name = __id;
       kms_key_id = Prop.computed __type __id "kms_key_id";
       name = Prop.computed __type __id "name";
       role_arn = Prop.computed __type __id "role_arn";
       stream_processor_arn =
         Prop.computed __type __id "stream_processor_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_rekognition_stream_processor
        (aws_rekognition_stream_processor ?kms_key_id ?tags
           ~data_sharing_preference ~input ~notification_channel
           ~output ~regions_of_interest ~settings ?timeouts ~name
           ~role_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?kms_key_id ?tags
    ?(data_sharing_preference = []) ?(input = [])
    ?(notification_channel = []) ?(output = [])
    ?(regions_of_interest = []) ?(settings = []) ?timeouts ~name
    ~role_arn __id =
  let (r : _ Tf_core.resource) =
    make ?kms_key_id ?tags ~data_sharing_preference ~input
      ~notification_channel ~output ~regions_of_interest ~settings
      ?timeouts ~name ~role_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

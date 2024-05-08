(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type multiplex_settings = {
  maximum_video_buffer_delay_milliseconds : float prop option;
      [@option]
  transport_stream_bitrate : float prop;
  transport_stream_id : float prop;
  transport_stream_reserved_bitrate : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : multiplex_settings) -> ()

let yojson_of_multiplex_settings =
  (function
   | {
       maximum_video_buffer_delay_milliseconds =
         v_maximum_video_buffer_delay_milliseconds;
       transport_stream_bitrate = v_transport_stream_bitrate;
       transport_stream_id = v_transport_stream_id;
       transport_stream_reserved_bitrate =
         v_transport_stream_reserved_bitrate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_transport_stream_reserved_bitrate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "transport_stream_reserved_bitrate", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_transport_stream_id
         in
         ("transport_stream_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_transport_stream_bitrate
         in
         ("transport_stream_bitrate", arg) :: bnds
       in
       let bnds =
         match v_maximum_video_buffer_delay_milliseconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "maximum_video_buffer_delay_milliseconds", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : multiplex_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_multiplex_settings

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

type aws_medialive_multiplex = {
  availability_zones : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  id : string prop option; [@option]
  name : string prop;
  start_multiplex : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  multiplex_settings : multiplex_settings list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_medialive_multiplex) -> ()

let yojson_of_aws_medialive_multiplex =
  (function
   | {
       availability_zones = v_availability_zones;
       id = v_id;
       name = v_name;
       start_multiplex = v_start_multiplex;
       tags = v_tags;
       tags_all = v_tags_all;
       multiplex_settings = v_multiplex_settings;
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
         if [] = v_multiplex_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_multiplex_settings)
               v_multiplex_settings
           in
           let bnd = "multiplex_settings", arg in
           bnd :: bnds
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
         match v_start_multiplex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "start_multiplex", arg in
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
         if [] = v_availability_zones then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_availability_zones
           in
           let bnd = "availability_zones", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : aws_medialive_multiplex -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_medialive_multiplex

[@@@deriving.end]

let multiplex_settings ?maximum_video_buffer_delay_milliseconds
    ?transport_stream_reserved_bitrate ~transport_stream_bitrate
    ~transport_stream_id () : multiplex_settings =
  {
    maximum_video_buffer_delay_milliseconds;
    transport_stream_bitrate;
    transport_stream_id;
    transport_stream_reserved_bitrate;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_medialive_multiplex ?id ?start_multiplex ?tags ?tags_all
    ?(multiplex_settings = []) ?timeouts ~availability_zones ~name ()
    : aws_medialive_multiplex =
  {
    availability_zones;
    id;
    name;
    start_multiplex;
    tags;
    tags_all;
    multiplex_settings;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  availability_zones : string list prop;
  id : string prop;
  name : string prop;
  start_multiplex : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?start_multiplex ?tags ?tags_all
    ?(multiplex_settings = []) ?timeouts ~availability_zones ~name
    __id =
  let __type = "aws_medialive_multiplex" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       availability_zones =
         Prop.computed __type __id "availability_zones";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       start_multiplex = Prop.computed __type __id "start_multiplex";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_medialive_multiplex
        (aws_medialive_multiplex ?id ?start_multiplex ?tags ?tags_all
           ~multiplex_settings ?timeouts ~availability_zones ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?start_multiplex ?tags ?tags_all
    ?(multiplex_settings = []) ?timeouts ~availability_zones ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?start_multiplex ?tags ?tags_all ~multiplex_settings
      ?timeouts ~availability_zones ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

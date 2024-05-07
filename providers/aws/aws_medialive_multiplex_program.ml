(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type multiplex_program_settings__service_descriptor = {
  provider_name : string prop;
  service_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : multiplex_program_settings__service_descriptor) -> ()

let yojson_of_multiplex_program_settings__service_descriptor =
  (function
   | {
       provider_name = v_provider_name;
       service_name = v_service_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_name in
         ("service_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_provider_name in
         ("provider_name", arg) :: bnds
       in
       `Assoc bnds
    : multiplex_program_settings__service_descriptor ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_multiplex_program_settings__service_descriptor

[@@@deriving.end]

type multiplex_program_settings__video_settings__statmux_settings = {
  maximum_bitrate : float prop option; [@option]
  minimum_bitrate : float prop option; [@option]
  priority : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       multiplex_program_settings__video_settings__statmux_settings) ->
  ()

let yojson_of_multiplex_program_settings__video_settings__statmux_settings
    =
  (function
   | {
       maximum_bitrate = v_maximum_bitrate;
       minimum_bitrate = v_minimum_bitrate;
       priority = v_priority;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minimum_bitrate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minimum_bitrate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_bitrate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_bitrate", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : multiplex_program_settings__video_settings__statmux_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_multiplex_program_settings__video_settings__statmux_settings

[@@@deriving.end]

type multiplex_program_settings__video_settings = {
  constant_bitrate : float prop option; [@option]
  statmux_settings :
    multiplex_program_settings__video_settings__statmux_settings list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : multiplex_program_settings__video_settings) -> ()

let yojson_of_multiplex_program_settings__video_settings =
  (function
   | {
       constant_bitrate = v_constant_bitrate;
       statmux_settings = v_statmux_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_multiplex_program_settings__video_settings__statmux_settings
             v_statmux_settings
         in
         ("statmux_settings", arg) :: bnds
       in
       let bnds =
         match v_constant_bitrate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "constant_bitrate", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : multiplex_program_settings__video_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_multiplex_program_settings__video_settings

[@@@deriving.end]

type multiplex_program_settings = {
  preferred_channel_pipeline : string prop;
  program_number : float prop;
  service_descriptor :
    multiplex_program_settings__service_descriptor list;
  video_settings : multiplex_program_settings__video_settings list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : multiplex_program_settings) -> ()

let yojson_of_multiplex_program_settings =
  (function
   | {
       preferred_channel_pipeline = v_preferred_channel_pipeline;
       program_number = v_program_number;
       service_descriptor = v_service_descriptor;
       video_settings = v_video_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_multiplex_program_settings__video_settings
             v_video_settings
         in
         ("video_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_multiplex_program_settings__service_descriptor
             v_service_descriptor
         in
         ("service_descriptor", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_program_number in
         ("program_number", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_preferred_channel_pipeline
         in
         ("preferred_channel_pipeline", arg) :: bnds
       in
       `Assoc bnds
    : multiplex_program_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_multiplex_program_settings

[@@@deriving.end]

type aws_medialive_multiplex_program = {
  multiplex_id : string prop;
  program_name : string prop;
  multiplex_program_settings : multiplex_program_settings list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_medialive_multiplex_program) -> ()

let yojson_of_aws_medialive_multiplex_program =
  (function
   | {
       multiplex_id = v_multiplex_id;
       program_name = v_program_name;
       multiplex_program_settings = v_multiplex_program_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_multiplex_program_settings
             v_multiplex_program_settings
         in
         ("multiplex_program_settings", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_program_name in
         ("program_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_multiplex_id in
         ("multiplex_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_medialive_multiplex_program ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_medialive_multiplex_program

[@@@deriving.end]

let multiplex_program_settings__service_descriptor ~provider_name
    ~service_name () : multiplex_program_settings__service_descriptor
    =
  { provider_name; service_name }

let multiplex_program_settings__video_settings__statmux_settings
    ?maximum_bitrate ?minimum_bitrate ?priority () :
    multiplex_program_settings__video_settings__statmux_settings =
  { maximum_bitrate; minimum_bitrate; priority }

let multiplex_program_settings__video_settings ?constant_bitrate
    ?(statmux_settings = []) () :
    multiplex_program_settings__video_settings =
  { constant_bitrate; statmux_settings }

let multiplex_program_settings ?(service_descriptor = [])
    ?(video_settings = []) ~preferred_channel_pipeline
    ~program_number () : multiplex_program_settings =
  {
    preferred_channel_pipeline;
    program_number;
    service_descriptor;
    video_settings;
  }

let aws_medialive_multiplex_program
    ?(multiplex_program_settings = []) ~multiplex_id ~program_name ()
    : aws_medialive_multiplex_program =
  { multiplex_id; program_name; multiplex_program_settings }

type t = {
  tf_name : string;
  id : string prop;
  multiplex_id : string prop;
  program_name : string prop;
}

let make ?(multiplex_program_settings = []) ~multiplex_id
    ~program_name __id =
  let __type = "aws_medialive_multiplex_program" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       multiplex_id = Prop.computed __type __id "multiplex_id";
       program_name = Prop.computed __type __id "program_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_medialive_multiplex_program
        (aws_medialive_multiplex_program ~multiplex_program_settings
           ~multiplex_id ~program_name ());
    attrs = __attrs;
  }

let register ?tf_module ?(multiplex_program_settings = [])
    ~multiplex_id ~program_name __id =
  let (r : _ Tf_core.resource) =
    make ~multiplex_program_settings ~multiplex_id ~program_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

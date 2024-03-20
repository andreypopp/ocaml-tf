(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type output__audio_analyzer_preset = {
  audio_analysis_mode : string prop option; [@option]
      (** audio_analysis_mode *)
  audio_language : string prop option; [@option]
      (** audio_language *)
  experimental_options : (string * string prop) list option; [@option]
      (** experimental_options *)
}
[@@deriving yojson_of]
(** output__audio_analyzer_preset *)

type output__builtin_preset__preset_configuration = {
  complexity : string prop option; [@option]  (** complexity *)
  interleave_output : string prop option; [@option]
      (** interleave_output *)
  key_frame_interval_in_seconds : float prop option; [@option]
      (** key_frame_interval_in_seconds *)
  max_bitrate_bps : float prop option; [@option]
      (** max_bitrate_bps *)
  max_height : float prop option; [@option]  (** max_height *)
  max_layers : float prop option; [@option]  (** max_layers *)
  min_bitrate_bps : float prop option; [@option]
      (** min_bitrate_bps *)
  min_height : float prop option; [@option]  (** min_height *)
}
[@@deriving yojson_of]
(** output__builtin_preset__preset_configuration *)

type output__builtin_preset = {
  preset_name : string prop;  (** preset_name *)
  preset_configuration :
    output__builtin_preset__preset_configuration list;
}
[@@deriving yojson_of]
(** output__builtin_preset *)

type output__custom_preset__codec__aac_audio = {
  bitrate : float prop option; [@option]  (** bitrate *)
  channels : float prop option; [@option]  (** channels *)
  label : string prop option; [@option]  (** label *)
  profile : string prop option; [@option]  (** profile *)
  sampling_rate : float prop option; [@option]  (** sampling_rate *)
}
[@@deriving yojson_of]
(** output__custom_preset__codec__aac_audio *)

type output__custom_preset__codec__copy_audio = {
  label : string prop option; [@option]  (** label *)
}
[@@deriving yojson_of]
(** output__custom_preset__codec__copy_audio *)

type output__custom_preset__codec__copy_video = {
  label : string prop option; [@option]  (** label *)
}
[@@deriving yojson_of]
(** output__custom_preset__codec__copy_video *)

type output__custom_preset__codec__dd_audio = {
  bitrate : float prop option; [@option]  (** bitrate *)
  channels : float prop option; [@option]  (** channels *)
  label : string prop option; [@option]  (** label *)
  sampling_rate : float prop option; [@option]  (** sampling_rate *)
}
[@@deriving yojson_of]
(** output__custom_preset__codec__dd_audio *)

type output__custom_preset__codec__h264_video__layer = {
  adaptive_b_frame_enabled : bool prop option; [@option]
      (** adaptive_b_frame_enabled *)
  b_frames : float prop option; [@option]  (** b_frames *)
  bitrate : float prop;  (** bitrate *)
  buffer_window : string prop option; [@option]  (** buffer_window *)
  crf : float prop option; [@option]  (** crf *)
  entropy_mode : string prop option; [@option]  (** entropy_mode *)
  frame_rate : string prop option; [@option]  (** frame_rate *)
  height : string prop option; [@option]  (** height *)
  label : string prop option; [@option]  (** label *)
  level : string prop option; [@option]  (** level *)
  max_bitrate : float prop option; [@option]  (** max_bitrate *)
  profile : string prop option; [@option]  (** profile *)
  reference_frames : float prop option; [@option]
      (** reference_frames *)
  slices : float prop option; [@option]  (** slices *)
  width : string prop option; [@option]  (** width *)
}
[@@deriving yojson_of]
(** output__custom_preset__codec__h264_video__layer *)

type output__custom_preset__codec__h264_video = {
  complexity : string prop option; [@option]  (** complexity *)
  key_frame_interval : string prop option; [@option]
      (** key_frame_interval *)
  label : string prop option; [@option]  (** label *)
  rate_control_mode : string prop option; [@option]
      (** rate_control_mode *)
  scene_change_detection_enabled : bool prop option; [@option]
      (** scene_change_detection_enabled *)
  stretch_mode : string prop option; [@option]  (** stretch_mode *)
  sync_mode : string prop option; [@option]  (** sync_mode *)
  layer : output__custom_preset__codec__h264_video__layer list;
}
[@@deriving yojson_of]
(** output__custom_preset__codec__h264_video *)

type output__custom_preset__codec__h265_video__layer = {
  adaptive_b_frame_enabled : bool prop option; [@option]
      (** adaptive_b_frame_enabled *)
  b_frames : float prop option; [@option]  (** b_frames *)
  bitrate : float prop;  (** bitrate *)
  buffer_window : string prop option; [@option]  (** buffer_window *)
  crf : float prop option; [@option]  (** crf *)
  frame_rate : string prop option; [@option]  (** frame_rate *)
  height : string prop option; [@option]  (** height *)
  label : string prop option; [@option]  (** label *)
  level : string prop option; [@option]  (** level *)
  max_bitrate : float prop option; [@option]  (** max_bitrate *)
  profile : string prop option; [@option]  (** profile *)
  reference_frames : float prop option; [@option]
      (** reference_frames *)
  slices : float prop option; [@option]  (** slices *)
  width : string prop option; [@option]  (** width *)
}
[@@deriving yojson_of]
(** output__custom_preset__codec__h265_video__layer *)

type output__custom_preset__codec__h265_video = {
  complexity : string prop option; [@option]  (** complexity *)
  key_frame_interval : string prop option; [@option]
      (** key_frame_interval *)
  label : string prop option; [@option]  (** label *)
  scene_change_detection_enabled : bool prop option; [@option]
      (** scene_change_detection_enabled *)
  stretch_mode : string prop option; [@option]  (** stretch_mode *)
  sync_mode : string prop option; [@option]  (** sync_mode *)
  layer : output__custom_preset__codec__h265_video__layer list;
}
[@@deriving yojson_of]
(** output__custom_preset__codec__h265_video *)

type output__custom_preset__codec__jpg_image__layer = {
  height : string prop option; [@option]  (** height *)
  label : string prop option; [@option]  (** label *)
  quality : float prop option; [@option]  (** quality *)
  width : string prop option; [@option]  (** width *)
}
[@@deriving yojson_of]
(** output__custom_preset__codec__jpg_image__layer *)

type output__custom_preset__codec__jpg_image = {
  key_frame_interval : string prop option; [@option]
      (** key_frame_interval *)
  label : string prop option; [@option]  (** label *)
  range : string prop option; [@option]  (** range *)
  sprite_column : float prop option; [@option]  (** sprite_column *)
  start : string prop;  (** start *)
  step : string prop option; [@option]  (** step *)
  stretch_mode : string prop option; [@option]  (** stretch_mode *)
  sync_mode : string prop option; [@option]  (** sync_mode *)
  layer : output__custom_preset__codec__jpg_image__layer list;
}
[@@deriving yojson_of]
(** output__custom_preset__codec__jpg_image *)

type output__custom_preset__codec__png_image__layer = {
  height : string prop option; [@option]  (** height *)
  label : string prop option; [@option]  (** label *)
  width : string prop option; [@option]  (** width *)
}
[@@deriving yojson_of]
(** output__custom_preset__codec__png_image__layer *)

type output__custom_preset__codec__png_image = {
  key_frame_interval : string prop option; [@option]
      (** key_frame_interval *)
  label : string prop option; [@option]  (** label *)
  range : string prop option; [@option]  (** range *)
  start : string prop;  (** start *)
  step : string prop option; [@option]  (** step *)
  stretch_mode : string prop option; [@option]  (** stretch_mode *)
  sync_mode : string prop option; [@option]  (** sync_mode *)
  layer : output__custom_preset__codec__png_image__layer list;
}
[@@deriving yojson_of]
(** output__custom_preset__codec__png_image *)

type output__custom_preset__codec = {
  aac_audio : output__custom_preset__codec__aac_audio list;
  copy_audio : output__custom_preset__codec__copy_audio list;
  copy_video : output__custom_preset__codec__copy_video list;
  dd_audio : output__custom_preset__codec__dd_audio list;
  h264_video : output__custom_preset__codec__h264_video list;
  h265_video : output__custom_preset__codec__h265_video list;
  jpg_image : output__custom_preset__codec__jpg_image list;
  png_image : output__custom_preset__codec__png_image list;
}
[@@deriving yojson_of]
(** output__custom_preset__codec *)

type output__custom_preset__filter__crop_rectangle = {
  height : string prop option; [@option]  (** height *)
  left : string prop option; [@option]  (** left *)
  top : string prop option; [@option]  (** top *)
  width : string prop option; [@option]  (** width *)
}
[@@deriving yojson_of]
(** output__custom_preset__filter__crop_rectangle *)

type output__custom_preset__filter__deinterlace = {
  mode : string prop option; [@option]  (** mode *)
  parity : string prop option; [@option]  (** parity *)
}
[@@deriving yojson_of]
(** output__custom_preset__filter__deinterlace *)

type output__custom_preset__filter__fade_in = {
  duration : string prop;  (** duration *)
  fade_color : string prop;  (** fade_color *)
  start : string prop option; [@option]  (** start *)
}
[@@deriving yojson_of]
(** output__custom_preset__filter__fade_in *)

type output__custom_preset__filter__fade_out = {
  duration : string prop;  (** duration *)
  fade_color : string prop;  (** fade_color *)
  start : string prop option; [@option]  (** start *)
}
[@@deriving yojson_of]
(** output__custom_preset__filter__fade_out *)

type output__custom_preset__filter__overlay__audio = {
  audio_gain_level : float prop option; [@option]
      (** audio_gain_level *)
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  fade_in_duration : string prop option; [@option]
      (** fade_in_duration *)
  fade_out_duration : string prop option; [@option]
      (** fade_out_duration *)
  input_label : string prop;  (** input_label *)
  start : string prop option; [@option]  (** start *)
}
[@@deriving yojson_of]
(** output__custom_preset__filter__overlay__audio *)

type output__custom_preset__filter__overlay__video__crop_rectangle = {
  height : string prop option; [@option]  (** height *)
  left : string prop option; [@option]  (** left *)
  top : string prop option; [@option]  (** top *)
  width : string prop option; [@option]  (** width *)
}
[@@deriving yojson_of]
(** output__custom_preset__filter__overlay__video__crop_rectangle *)

type output__custom_preset__filter__overlay__video__position = {
  height : string prop option; [@option]  (** height *)
  left : string prop option; [@option]  (** left *)
  top : string prop option; [@option]  (** top *)
  width : string prop option; [@option]  (** width *)
}
[@@deriving yojson_of]
(** output__custom_preset__filter__overlay__video__position *)

type output__custom_preset__filter__overlay__video = {
  audio_gain_level : float prop option; [@option]
      (** audio_gain_level *)
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  fade_in_duration : string prop option; [@option]
      (** fade_in_duration *)
  fade_out_duration : string prop option; [@option]
      (** fade_out_duration *)
  input_label : string prop;  (** input_label *)
  opacity : float prop option; [@option]  (** opacity *)
  start : string prop option; [@option]  (** start *)
  crop_rectangle :
    output__custom_preset__filter__overlay__video__crop_rectangle
    list;
  position :
    output__custom_preset__filter__overlay__video__position list;
}
[@@deriving yojson_of]
(** output__custom_preset__filter__overlay__video *)

type output__custom_preset__filter__overlay = {
  audio : output__custom_preset__filter__overlay__audio list;
  video : output__custom_preset__filter__overlay__video list;
}
[@@deriving yojson_of]
(** output__custom_preset__filter__overlay *)

type output__custom_preset__filter = {
  rotation : string prop option; [@option]  (** rotation *)
  crop_rectangle :
    output__custom_preset__filter__crop_rectangle list;
  deinterlace : output__custom_preset__filter__deinterlace list;
  fade_in : output__custom_preset__filter__fade_in list;
  fade_out : output__custom_preset__filter__fade_out list;
  overlay : output__custom_preset__filter__overlay list;
}
[@@deriving yojson_of]
(** output__custom_preset__filter *)

type output__custom_preset__format__jpg = {
  filename_pattern : string prop;  (** filename_pattern *)
}
[@@deriving yojson_of]
(** output__custom_preset__format__jpg *)

type output__custom_preset__format__mp4__output_file = {
  labels : string prop list;  (** labels *)
}
[@@deriving yojson_of]
(** output__custom_preset__format__mp4__output_file *)

type output__custom_preset__format__mp4 = {
  filename_pattern : string prop;  (** filename_pattern *)
  output_file : output__custom_preset__format__mp4__output_file list;
}
[@@deriving yojson_of]
(** output__custom_preset__format__mp4 *)

type output__custom_preset__format__png = {
  filename_pattern : string prop;  (** filename_pattern *)
}
[@@deriving yojson_of]
(** output__custom_preset__format__png *)

type output__custom_preset__format__transport_stream__output_file = {
  labels : string prop list;  (** labels *)
}
[@@deriving yojson_of]
(** output__custom_preset__format__transport_stream__output_file *)

type output__custom_preset__format__transport_stream = {
  filename_pattern : string prop;  (** filename_pattern *)
  output_file :
    output__custom_preset__format__transport_stream__output_file list;
}
[@@deriving yojson_of]
(** output__custom_preset__format__transport_stream *)

type output__custom_preset__format = {
  jpg : output__custom_preset__format__jpg list;
  mp4 : output__custom_preset__format__mp4 list;
  png : output__custom_preset__format__png list;
  transport_stream :
    output__custom_preset__format__transport_stream list;
}
[@@deriving yojson_of]
(** output__custom_preset__format *)

type output__custom_preset = {
  experimental_options : (string * string prop) list option;
      [@option]
      (** experimental_options *)
  codec : output__custom_preset__codec list;
  filter : output__custom_preset__filter list;
  format : output__custom_preset__format list;
}
[@@deriving yojson_of]
(** output__custom_preset *)

type output__face_detector_preset = {
  analysis_resolution : string prop option; [@option]
      (** analysis_resolution *)
  blur_type : string prop option; [@option]  (** blur_type *)
  experimental_options : (string * string prop) list option;
      [@option]
      (** experimental_options *)
  face_redactor_mode : string prop option; [@option]
      (** face_redactor_mode *)
}
[@@deriving yojson_of]
(** output__face_detector_preset *)

type output__video_analyzer_preset = {
  audio_analysis_mode : string prop option; [@option]
      (** audio_analysis_mode *)
  audio_language : string prop option; [@option]
      (** audio_language *)
  experimental_options : (string * string prop) list option;
      [@option]
      (** experimental_options *)
  insights_type : string prop option; [@option]  (** insights_type *)
}
[@@deriving yojson_of]
(** output__video_analyzer_preset *)

type output = {
  on_error_action : string prop option; [@option]
      (** on_error_action *)
  relative_priority : string prop option; [@option]
      (** relative_priority *)
  audio_analyzer_preset : output__audio_analyzer_preset list;
  builtin_preset : output__builtin_preset list;
  custom_preset : output__custom_preset list;
  face_detector_preset : output__face_detector_preset list;
  video_analyzer_preset : output__video_analyzer_preset list;
}
[@@deriving yojson_of]
(** output *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_media_transform = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  media_services_account_name : string prop;
      (** media_services_account_name *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  output : output list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_media_transform *)

let output__audio_analyzer_preset ?audio_analysis_mode
    ?audio_language ?experimental_options () :
    output__audio_analyzer_preset =
  { audio_analysis_mode; audio_language; experimental_options }

let output__builtin_preset__preset_configuration ?complexity
    ?interleave_output ?key_frame_interval_in_seconds
    ?max_bitrate_bps ?max_height ?max_layers ?min_bitrate_bps
    ?min_height () : output__builtin_preset__preset_configuration =
  {
    complexity;
    interleave_output;
    key_frame_interval_in_seconds;
    max_bitrate_bps;
    max_height;
    max_layers;
    min_bitrate_bps;
    min_height;
  }

let output__builtin_preset ~preset_name ~preset_configuration () :
    output__builtin_preset =
  { preset_name; preset_configuration }

let output__custom_preset__codec__aac_audio ?bitrate ?channels ?label
    ?profile ?sampling_rate () :
    output__custom_preset__codec__aac_audio =
  { bitrate; channels; label; profile; sampling_rate }

let output__custom_preset__codec__copy_audio ?label () :
    output__custom_preset__codec__copy_audio =
  { label }

let output__custom_preset__codec__copy_video ?label () :
    output__custom_preset__codec__copy_video =
  { label }

let output__custom_preset__codec__dd_audio ?bitrate ?channels ?label
    ?sampling_rate () : output__custom_preset__codec__dd_audio =
  { bitrate; channels; label; sampling_rate }

let output__custom_preset__codec__h264_video__layer
    ?adaptive_b_frame_enabled ?b_frames ?buffer_window ?crf
    ?entropy_mode ?frame_rate ?height ?label ?level ?max_bitrate
    ?profile ?reference_frames ?slices ?width ~bitrate () :
    output__custom_preset__codec__h264_video__layer =
  {
    adaptive_b_frame_enabled;
    b_frames;
    bitrate;
    buffer_window;
    crf;
    entropy_mode;
    frame_rate;
    height;
    label;
    level;
    max_bitrate;
    profile;
    reference_frames;
    slices;
    width;
  }

let output__custom_preset__codec__h264_video ?complexity
    ?key_frame_interval ?label ?rate_control_mode
    ?scene_change_detection_enabled ?stretch_mode ?sync_mode ~layer
    () : output__custom_preset__codec__h264_video =
  {
    complexity;
    key_frame_interval;
    label;
    rate_control_mode;
    scene_change_detection_enabled;
    stretch_mode;
    sync_mode;
    layer;
  }

let output__custom_preset__codec__h265_video__layer
    ?adaptive_b_frame_enabled ?b_frames ?buffer_window ?crf
    ?frame_rate ?height ?label ?level ?max_bitrate ?profile
    ?reference_frames ?slices ?width ~bitrate () :
    output__custom_preset__codec__h265_video__layer =
  {
    adaptive_b_frame_enabled;
    b_frames;
    bitrate;
    buffer_window;
    crf;
    frame_rate;
    height;
    label;
    level;
    max_bitrate;
    profile;
    reference_frames;
    slices;
    width;
  }

let output__custom_preset__codec__h265_video ?complexity
    ?key_frame_interval ?label ?scene_change_detection_enabled
    ?stretch_mode ?sync_mode ~layer () :
    output__custom_preset__codec__h265_video =
  {
    complexity;
    key_frame_interval;
    label;
    scene_change_detection_enabled;
    stretch_mode;
    sync_mode;
    layer;
  }

let output__custom_preset__codec__jpg_image__layer ?height ?label
    ?quality ?width () :
    output__custom_preset__codec__jpg_image__layer =
  { height; label; quality; width }

let output__custom_preset__codec__jpg_image ?key_frame_interval
    ?label ?range ?sprite_column ?step ?stretch_mode ?sync_mode
    ~start ~layer () : output__custom_preset__codec__jpg_image =
  {
    key_frame_interval;
    label;
    range;
    sprite_column;
    start;
    step;
    stretch_mode;
    sync_mode;
    layer;
  }

let output__custom_preset__codec__png_image__layer ?height ?label
    ?width () : output__custom_preset__codec__png_image__layer =
  { height; label; width }

let output__custom_preset__codec__png_image ?key_frame_interval
    ?label ?range ?step ?stretch_mode ?sync_mode ~start ~layer () :
    output__custom_preset__codec__png_image =
  {
    key_frame_interval;
    label;
    range;
    start;
    step;
    stretch_mode;
    sync_mode;
    layer;
  }

let output__custom_preset__codec ~aac_audio ~copy_audio ~copy_video
    ~dd_audio ~h264_video ~h265_video ~jpg_image ~png_image () :
    output__custom_preset__codec =
  {
    aac_audio;
    copy_audio;
    copy_video;
    dd_audio;
    h264_video;
    h265_video;
    jpg_image;
    png_image;
  }

let output__custom_preset__filter__crop_rectangle ?height ?left ?top
    ?width () : output__custom_preset__filter__crop_rectangle =
  { height; left; top; width }

let output__custom_preset__filter__deinterlace ?mode ?parity () :
    output__custom_preset__filter__deinterlace =
  { mode; parity }

let output__custom_preset__filter__fade_in ?start ~duration
    ~fade_color () : output__custom_preset__filter__fade_in =
  { duration; fade_color; start }

let output__custom_preset__filter__fade_out ?start ~duration
    ~fade_color () : output__custom_preset__filter__fade_out =
  { duration; fade_color; start }

let output__custom_preset__filter__overlay__audio ?audio_gain_level
    ?end_ ?fade_in_duration ?fade_out_duration ?start ~input_label ()
    : output__custom_preset__filter__overlay__audio =
  {
    audio_gain_level;
    end_;
    fade_in_duration;
    fade_out_duration;
    input_label;
    start;
  }

let output__custom_preset__filter__overlay__video__crop_rectangle
    ?height ?left ?top ?width () :
    output__custom_preset__filter__overlay__video__crop_rectangle =
  { height; left; top; width }

let output__custom_preset__filter__overlay__video__position ?height
    ?left ?top ?width () :
    output__custom_preset__filter__overlay__video__position =
  { height; left; top; width }

let output__custom_preset__filter__overlay__video ?audio_gain_level
    ?end_ ?fade_in_duration ?fade_out_duration ?opacity ?start
    ~input_label ~crop_rectangle ~position () :
    output__custom_preset__filter__overlay__video =
  {
    audio_gain_level;
    end_;
    fade_in_duration;
    fade_out_duration;
    input_label;
    opacity;
    start;
    crop_rectangle;
    position;
  }

let output__custom_preset__filter__overlay ~audio ~video () :
    output__custom_preset__filter__overlay =
  { audio; video }

let output__custom_preset__filter ?rotation ~crop_rectangle
    ~deinterlace ~fade_in ~fade_out ~overlay () :
    output__custom_preset__filter =
  {
    rotation;
    crop_rectangle;
    deinterlace;
    fade_in;
    fade_out;
    overlay;
  }

let output__custom_preset__format__jpg ~filename_pattern () :
    output__custom_preset__format__jpg =
  { filename_pattern }

let output__custom_preset__format__mp4__output_file ~labels () :
    output__custom_preset__format__mp4__output_file =
  { labels }

let output__custom_preset__format__mp4 ~filename_pattern ~output_file
    () : output__custom_preset__format__mp4 =
  { filename_pattern; output_file }

let output__custom_preset__format__png ~filename_pattern () :
    output__custom_preset__format__png =
  { filename_pattern }

let output__custom_preset__format__transport_stream__output_file
    ~labels () :
    output__custom_preset__format__transport_stream__output_file =
  { labels }

let output__custom_preset__format__transport_stream ~filename_pattern
    ~output_file () : output__custom_preset__format__transport_stream
    =
  { filename_pattern; output_file }

let output__custom_preset__format ~jpg ~mp4 ~png ~transport_stream ()
    : output__custom_preset__format =
  { jpg; mp4; png; transport_stream }

let output__custom_preset ?experimental_options ~codec ~filter
    ~format () : output__custom_preset =
  { experimental_options; codec; filter; format }

let output__face_detector_preset ?analysis_resolution ?blur_type
    ?experimental_options ?face_redactor_mode () :
    output__face_detector_preset =
  {
    analysis_resolution;
    blur_type;
    experimental_options;
    face_redactor_mode;
  }

let output__video_analyzer_preset ?audio_analysis_mode
    ?audio_language ?experimental_options ?insights_type () :
    output__video_analyzer_preset =
  {
    audio_analysis_mode;
    audio_language;
    experimental_options;
    insights_type;
  }

let output ?on_error_action ?relative_priority ~audio_analyzer_preset
    ~builtin_preset ~custom_preset ~face_detector_preset
    ~video_analyzer_preset () : output =
  {
    on_error_action;
    relative_priority;
    audio_analyzer_preset;
    builtin_preset;
    custom_preset;
    face_detector_preset;
    video_analyzer_preset;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_media_transform ?description ?id ?timeouts
    ~media_services_account_name ~name ~resource_group_name ~output
    () : azurerm_media_transform =
  {
    description;
    id;
    media_services_account_name;
    name;
    resource_group_name;
    output;
    timeouts;
  }

type t = {
  description : string prop;
  id : string prop;
  media_services_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?description ?id ?timeouts ~media_services_account_name
    ~name ~resource_group_name ~output __id =
  let __type = "azurerm_media_transform" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       media_services_account_name =
         Prop.computed __type __id "media_services_account_name";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_media_transform
        (azurerm_media_transform ?description ?id ?timeouts
           ~media_services_account_name ~name ~resource_group_name
           ~output ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts
    ~media_services_account_name ~name ~resource_group_name ~output
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~media_services_account_name
      ~name ~resource_group_name ~output __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

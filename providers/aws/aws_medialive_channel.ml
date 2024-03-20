(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cdi_input_specification = {
  resolution : string prop;  (** resolution *)
}
[@@deriving yojson_of]
(** cdi_input_specification *)

type destinations__media_package_settings = {
  channel_id : string prop;  (** channel_id *)
}
[@@deriving yojson_of]
(** destinations__media_package_settings *)

type destinations__multiplex_settings = {
  multiplex_id : string prop;  (** multiplex_id *)
  program_name : string prop;  (** program_name *)
}
[@@deriving yojson_of]
(** destinations__multiplex_settings *)

type destinations__settings = {
  password_param : string prop option; [@option]
      (** password_param *)
  stream_name : string prop option; [@option]  (** stream_name *)
  url : string prop option; [@option]  (** url *)
  username : string prop option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** destinations__settings *)

type destinations = {
  id : string prop;  (** id *)
  media_package_settings : destinations__media_package_settings list;
  multiplex_settings : destinations__multiplex_settings list;
  settings : destinations__settings list;
}
[@@deriving yojson_of]
(** destinations *)

type encoder_settings__audio_descriptions__audio_normalization_settings = {
  algorithm : string prop option; [@option]  (** algorithm *)
  algorithm_control : string prop option; [@option]
      (** algorithm_control *)
  target_lkfs : float prop option; [@option]  (** target_lkfs *)
}
[@@deriving yojson_of]
(** encoder_settings__audio_descriptions__audio_normalization_settings *)

type encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_cbet_settings = {
  cbet_check_digit_string : string prop;
      (** cbet_check_digit_string *)
  cbet_stepaside : string prop;  (** cbet_stepaside *)
  csid : string prop;  (** csid *)
}
[@@deriving yojson_of]
(** encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_cbet_settings *)

type encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_naes_ii_nw_settings = {
  check_digit_string : string prop;  (** check_digit_string *)
  sid : float prop;  (** sid *)
}
[@@deriving yojson_of]
(** encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_naes_ii_nw_settings *)

type encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings = {
  nielsen_distribution_type : string prop option; [@option]
      (** nielsen_distribution_type *)
  nielsen_cbet_settings :
    encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_cbet_settings
    list;
  nielsen_naes_ii_nw_settings :
    encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_naes_ii_nw_settings
    list;
}
[@@deriving yojson_of]
(** encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings *)

type encoder_settings__audio_descriptions__audio_watermark_settings = {
  nielsen_watermarks_settings :
    encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings
    list;
}
[@@deriving yojson_of]
(** encoder_settings__audio_descriptions__audio_watermark_settings *)

type encoder_settings__audio_descriptions__codec_settings__aac_settings = {
  bitrate : float prop option; [@option]  (** bitrate *)
  coding_mode : string prop option; [@option]  (** coding_mode *)
  input_type : string prop option; [@option]  (** input_type *)
  profile : string prop option; [@option]  (** profile *)
  rate_control_mode : string prop option; [@option]
      (** rate_control_mode *)
  raw_format : string prop option; [@option]  (** raw_format *)
  sample_rate : float prop option; [@option]  (** sample_rate *)
  spec : string prop option; [@option]  (** spec *)
  vbr_quality : string prop option; [@option]  (** vbr_quality *)
}
[@@deriving yojson_of]
(** encoder_settings__audio_descriptions__codec_settings__aac_settings *)

type encoder_settings__audio_descriptions__codec_settings__ac3_settings = {
  bitrate : float prop option; [@option]  (** bitrate *)
  bitstream_mode : string prop option; [@option]
      (** bitstream_mode *)
  coding_mode : string prop option; [@option]  (** coding_mode *)
  dialnorm : float prop option; [@option]  (** dialnorm *)
  drc_profile : string prop option; [@option]  (** drc_profile *)
  lfe_filter : string prop option; [@option]  (** lfe_filter *)
  metadata_control : string prop option; [@option]
      (** metadata_control *)
}
[@@deriving yojson_of]
(** encoder_settings__audio_descriptions__codec_settings__ac3_settings *)

type encoder_settings__audio_descriptions__codec_settings__eac3_atmos_settings = {
  bitrate : float prop option; [@option]  (** bitrate *)
  coding_mode : string prop option; [@option]  (** coding_mode *)
  dialnorm : float prop option; [@option]  (** dialnorm *)
  drc_line : string prop option; [@option]  (** drc_line *)
  drc_rf : string prop option; [@option]  (** drc_rf *)
  height_trim : float prop option; [@option]  (** height_trim *)
  surround_trim : float prop option; [@option]  (** surround_trim *)
}
[@@deriving yojson_of]
(** encoder_settings__audio_descriptions__codec_settings__eac3_atmos_settings *)

type encoder_settings__audio_descriptions__codec_settings__eac3_settings = {
  attenuation_control : string prop option; [@option]
      (** attenuation_control *)
  bitrate : float prop option; [@option]  (** bitrate *)
  bitstream_mode : string prop option; [@option]
      (** bitstream_mode *)
  coding_mode : string prop option; [@option]  (** coding_mode *)
  dc_filter : string prop option; [@option]  (** dc_filter *)
  dialnorm : float prop option; [@option]  (** dialnorm *)
  drc_line : string prop option; [@option]  (** drc_line *)
  drc_rf : string prop option; [@option]  (** drc_rf *)
  lfe_control : string prop option; [@option]  (** lfe_control *)
  lfe_filter : string prop option; [@option]  (** lfe_filter *)
  lo_ro_center_mix_level : float prop option; [@option]
      (** lo_ro_center_mix_level *)
  lo_ro_surround_mix_level : float prop option; [@option]
      (** lo_ro_surround_mix_level *)
  lt_rt_center_mix_level : float prop option; [@option]
      (** lt_rt_center_mix_level *)
  lt_rt_surround_mix_level : float prop option; [@option]
      (** lt_rt_surround_mix_level *)
  metadata_control : string prop option; [@option]
      (** metadata_control *)
  passthrough_control : string prop option; [@option]
      (** passthrough_control *)
  phase_control : string prop option; [@option]  (** phase_control *)
  stereo_downmix : string prop option; [@option]
      (** stereo_downmix *)
  surround_ex_mode : string prop option; [@option]
      (** surround_ex_mode *)
  surround_mode : string prop option; [@option]  (** surround_mode *)
}
[@@deriving yojson_of]
(** encoder_settings__audio_descriptions__codec_settings__eac3_settings *)

type encoder_settings__audio_descriptions__codec_settings__mp2_settings = {
  bitrate : float prop option; [@option]  (** bitrate *)
  coding_mode : string prop option; [@option]  (** coding_mode *)
  sample_rate : float prop option; [@option]  (** sample_rate *)
}
[@@deriving yojson_of]
(** encoder_settings__audio_descriptions__codec_settings__mp2_settings *)

type encoder_settings__audio_descriptions__codec_settings__pass_through_settings =
  unit
[@@deriving yojson_of]

type encoder_settings__audio_descriptions__codec_settings__wav_settings = {
  bit_depth : float prop option; [@option]  (** bit_depth *)
  coding_mode : string prop option; [@option]  (** coding_mode *)
  sample_rate : float prop option; [@option]  (** sample_rate *)
}
[@@deriving yojson_of]
(** encoder_settings__audio_descriptions__codec_settings__wav_settings *)

type encoder_settings__audio_descriptions__codec_settings = {
  aac_settings :
    encoder_settings__audio_descriptions__codec_settings__aac_settings
    list;
  ac3_settings :
    encoder_settings__audio_descriptions__codec_settings__ac3_settings
    list;
  eac3_atmos_settings :
    encoder_settings__audio_descriptions__codec_settings__eac3_atmos_settings
    list;
  eac3_settings :
    encoder_settings__audio_descriptions__codec_settings__eac3_settings
    list;
  mp2_settings :
    encoder_settings__audio_descriptions__codec_settings__mp2_settings
    list;
  pass_through_settings :
    encoder_settings__audio_descriptions__codec_settings__pass_through_settings
    list;
  wav_settings :
    encoder_settings__audio_descriptions__codec_settings__wav_settings
    list;
}
[@@deriving yojson_of]
(** encoder_settings__audio_descriptions__codec_settings *)

type encoder_settings__audio_descriptions__remix_settings__channel_mappings__input_channel_levels = {
  gain : float prop;  (** gain *)
  input_channel : float prop;  (** input_channel *)
}
[@@deriving yojson_of]
(** encoder_settings__audio_descriptions__remix_settings__channel_mappings__input_channel_levels *)

type encoder_settings__audio_descriptions__remix_settings__channel_mappings = {
  output_channel : float prop;  (** output_channel *)
  input_channel_levels :
    encoder_settings__audio_descriptions__remix_settings__channel_mappings__input_channel_levels
    list;
}
[@@deriving yojson_of]
(** encoder_settings__audio_descriptions__remix_settings__channel_mappings *)

type encoder_settings__audio_descriptions__remix_settings = {
  channels_in : float prop option; [@option]  (** channels_in *)
  channels_out : float prop option; [@option]  (** channels_out *)
  channel_mappings :
    encoder_settings__audio_descriptions__remix_settings__channel_mappings
    list;
}
[@@deriving yojson_of]
(** encoder_settings__audio_descriptions__remix_settings *)

type encoder_settings__audio_descriptions = {
  audio_selector_name : string prop;  (** audio_selector_name *)
  audio_type : string prop option; [@option]  (** audio_type *)
  audio_type_control : string prop option; [@option]
      (** audio_type_control *)
  language_code : string prop option; [@option]  (** language_code *)
  language_code_control : string prop option; [@option]
      (** language_code_control *)
  name : string prop;  (** name *)
  stream_name : string prop option; [@option]  (** stream_name *)
  audio_normalization_settings :
    encoder_settings__audio_descriptions__audio_normalization_settings
    list;
  audio_watermark_settings :
    encoder_settings__audio_descriptions__audio_watermark_settings
    list;
  codec_settings :
    encoder_settings__audio_descriptions__codec_settings list;
  remix_settings :
    encoder_settings__audio_descriptions__remix_settings list;
}
[@@deriving yojson_of]
(** encoder_settings__audio_descriptions *)

type encoder_settings__avail_blanking__avail_blanking_image = {
  password_param : string prop option; [@option]
      (** password_param *)
  uri : string prop;  (** uri *)
  username : string prop option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** encoder_settings__avail_blanking__avail_blanking_image *)

type encoder_settings__avail_blanking = {
  state : string prop option; [@option]  (** state *)
  avail_blanking_image :
    encoder_settings__avail_blanking__avail_blanking_image list;
}
[@@deriving yojson_of]
(** encoder_settings__avail_blanking *)

type encoder_settings__caption_descriptions__destination_settings__arib_destination_settings =
  unit
[@@deriving yojson_of]

type encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings__font = {
  password_param : string prop option; [@option]
      (** password_param *)
  uri : string prop;  (** uri *)
  username : string prop option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings__font *)

type encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings = {
  alignment : string prop option; [@option]  (** alignment *)
  background_color : string prop option; [@option]
      (** background_color *)
  background_opacity : float prop option; [@option]
      (** background_opacity *)
  font_color : string prop option; [@option]  (** font_color *)
  font_opacity : float prop option; [@option]  (** font_opacity *)
  font_resolution : float prop option; [@option]
      (** font_resolution *)
  font_size : string prop option; [@option]  (** font_size *)
  outline_color : string prop;  (** outline_color *)
  outline_size : float prop option; [@option]  (** outline_size *)
  shadow_color : string prop option; [@option]  (** shadow_color *)
  shadow_opacity : float prop option; [@option]
      (** shadow_opacity *)
  shadow_x_offset : float prop option; [@option]
      (** shadow_x_offset *)
  shadow_y_offset : float prop option; [@option]
      (** shadow_y_offset *)
  teletext_grid_control : string prop;  (** teletext_grid_control *)
  x_position : float prop option; [@option]  (** x_position *)
  y_position : float prop option; [@option]  (** y_position *)
  font :
    encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings__font
    list;
}
[@@deriving yojson_of]
(** encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings *)

type encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings__font = {
  password_param : string prop option; [@option]
      (** password_param *)
  uri : string prop;  (** uri *)
  username : string prop option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings__font *)

type encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings = {
  alignment : string prop option; [@option]  (** alignment *)
  background_color : string prop option; [@option]
      (** background_color *)
  background_opacity : float prop option; [@option]
      (** background_opacity *)
  font_color : string prop option; [@option]  (** font_color *)
  font_opacity : float prop option; [@option]  (** font_opacity *)
  font_resolution : float prop option; [@option]
      (** font_resolution *)
  font_size : string prop option; [@option]  (** font_size *)
  outline_color : string prop option; [@option]  (** outline_color *)
  outline_size : float prop option; [@option]  (** outline_size *)
  shadow_color : string prop option; [@option]  (** shadow_color *)
  shadow_opacity : float prop option; [@option]
      (** shadow_opacity *)
  shadow_x_offset : float prop option; [@option]
      (** shadow_x_offset *)
  shadow_y_offset : float prop option; [@option]
      (** shadow_y_offset *)
  teletext_grid_control : string prop option; [@option]
      (** teletext_grid_control *)
  x_position : float prop option; [@option]  (** x_position *)
  y_position : float prop option; [@option]  (** y_position *)
  font :
    encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings__font
    list;
}
[@@deriving yojson_of]
(** encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings *)

type encoder_settings__caption_descriptions__destination_settings__ebu_tt_d_destination_settings = {
  copyright_holder : string prop option; [@option]
      (** copyright_holder *)
  fill_line_gap : string prop option; [@option]  (** fill_line_gap *)
  font_family : string prop option; [@option]  (** font_family *)
  style_control : string prop option; [@option]  (** style_control *)
}
[@@deriving yojson_of]
(** encoder_settings__caption_descriptions__destination_settings__ebu_tt_d_destination_settings *)

type encoder_settings__caption_descriptions__destination_settings__embedded_destination_settings =
  unit
[@@deriving yojson_of]

type encoder_settings__caption_descriptions__destination_settings__embedded_plus_scte20_destination_settings =
  unit
[@@deriving yojson_of]

type encoder_settings__caption_descriptions__destination_settings__rtmp_caption_info_destination_settings =
  unit
[@@deriving yojson_of]

type encoder_settings__caption_descriptions__destination_settings__scte20_plus_embedded_destination_settings =
  unit
[@@deriving yojson_of]

type encoder_settings__caption_descriptions__destination_settings__scte27_destination_settings =
  unit
[@@deriving yojson_of]

type encoder_settings__caption_descriptions__destination_settings__smpte_tt_destination_settings =
  unit
[@@deriving yojson_of]

type encoder_settings__caption_descriptions__destination_settings__teletext_destination_settings =
  unit
[@@deriving yojson_of]

type encoder_settings__caption_descriptions__destination_settings__ttml_destination_settings = {
  style_control : string prop;  (** style_control *)
}
[@@deriving yojson_of]
(** encoder_settings__caption_descriptions__destination_settings__ttml_destination_settings *)

type encoder_settings__caption_descriptions__destination_settings__webvtt_destination_settings = {
  style_control : string prop;  (** style_control *)
}
[@@deriving yojson_of]
(** encoder_settings__caption_descriptions__destination_settings__webvtt_destination_settings *)

type encoder_settings__caption_descriptions__destination_settings = {
  arib_destination_settings :
    encoder_settings__caption_descriptions__destination_settings__arib_destination_settings
    list;
  burn_in_destination_settings :
    encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings
    list;
  dvb_sub_destination_settings :
    encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings
    list;
  ebu_tt_d_destination_settings :
    encoder_settings__caption_descriptions__destination_settings__ebu_tt_d_destination_settings
    list;
  embedded_destination_settings :
    encoder_settings__caption_descriptions__destination_settings__embedded_destination_settings
    list;
  embedded_plus_scte20_destination_settings :
    encoder_settings__caption_descriptions__destination_settings__embedded_plus_scte20_destination_settings
    list;
  rtmp_caption_info_destination_settings :
    encoder_settings__caption_descriptions__destination_settings__rtmp_caption_info_destination_settings
    list;
  scte20_plus_embedded_destination_settings :
    encoder_settings__caption_descriptions__destination_settings__scte20_plus_embedded_destination_settings
    list;
  scte27_destination_settings :
    encoder_settings__caption_descriptions__destination_settings__scte27_destination_settings
    list;
  smpte_tt_destination_settings :
    encoder_settings__caption_descriptions__destination_settings__smpte_tt_destination_settings
    list;
  teletext_destination_settings :
    encoder_settings__caption_descriptions__destination_settings__teletext_destination_settings
    list;
  ttml_destination_settings :
    encoder_settings__caption_descriptions__destination_settings__ttml_destination_settings
    list;
  webvtt_destination_settings :
    encoder_settings__caption_descriptions__destination_settings__webvtt_destination_settings
    list;
}
[@@deriving yojson_of]
(** encoder_settings__caption_descriptions__destination_settings *)

type encoder_settings__caption_descriptions = {
  accessibility : string prop option; [@option]  (** accessibility *)
  caption_selector_name : string prop;  (** caption_selector_name *)
  language_code : string prop option; [@option]  (** language_code *)
  language_description : string prop option; [@option]
      (** language_description *)
  name : string prop;  (** name *)
  destination_settings :
    encoder_settings__caption_descriptions__destination_settings list;
}
[@@deriving yojson_of]
(** encoder_settings__caption_descriptions *)

type encoder_settings__global_configuration__input_loss_behavior__input_loss_image_slate = {
  password_param : string prop option; [@option]
      (** password_param *)
  uri : string prop;  (** uri *)
  username : string prop option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** encoder_settings__global_configuration__input_loss_behavior__input_loss_image_slate *)

type encoder_settings__global_configuration__input_loss_behavior = {
  black_frame_msec : float prop option; [@option]
      (** black_frame_msec *)
  input_loss_image_color : string prop option; [@option]
      (** input_loss_image_color *)
  input_loss_image_type : string prop option; [@option]
      (** input_loss_image_type *)
  repeat_frame_msec : float prop option; [@option]
      (** repeat_frame_msec *)
  input_loss_image_slate :
    encoder_settings__global_configuration__input_loss_behavior__input_loss_image_slate
    list;
}
[@@deriving yojson_of]
(** encoder_settings__global_configuration__input_loss_behavior *)

type encoder_settings__global_configuration = {
  initial_audio_gain : float prop option; [@option]
      (** initial_audio_gain *)
  input_end_action : string prop option; [@option]
      (** input_end_action *)
  output_locking_mode : string prop option; [@option]
      (** output_locking_mode *)
  output_timing_source : string prop option; [@option]
      (** output_timing_source *)
  support_low_framerate_inputs : string prop option; [@option]
      (** support_low_framerate_inputs *)
  input_loss_behavior :
    encoder_settings__global_configuration__input_loss_behavior list;
}
[@@deriving yojson_of]
(** encoder_settings__global_configuration *)

type encoder_settings__motion_graphics_configuration__motion_graphics_settings__html_motion_graphics_settings =
  unit
[@@deriving yojson_of]

type encoder_settings__motion_graphics_configuration__motion_graphics_settings = {
  html_motion_graphics_settings :
    encoder_settings__motion_graphics_configuration__motion_graphics_settings__html_motion_graphics_settings
    list;
}
[@@deriving yojson_of]
(** encoder_settings__motion_graphics_configuration__motion_graphics_settings *)

type encoder_settings__motion_graphics_configuration = {
  motion_graphics_insertion : string prop option; [@option]
      (** motion_graphics_insertion *)
  motion_graphics_settings :
    encoder_settings__motion_graphics_configuration__motion_graphics_settings
    list;
}
[@@deriving yojson_of]
(** encoder_settings__motion_graphics_configuration *)

type encoder_settings__nielsen_configuration = {
  distributor_id : string prop option; [@option]
      (** distributor_id *)
  nielsen_pcm_to_id3_tagging : string prop option; [@option]
      (** nielsen_pcm_to_id3_tagging *)
}
[@@deriving yojson_of]
(** encoder_settings__nielsen_configuration *)

type encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings__archive_s3_settings = {
  canned_acl : string prop option; [@option]  (** canned_acl *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings__archive_s3_settings *)

type encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings = {
  archive_s3_settings :
    encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings__archive_s3_settings
    list;
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings *)

type encoder_settings__output_groups__output_group_settings__archive_group_settings__destination = {
  destination_ref_id : string prop;  (** destination_ref_id *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__output_group_settings__archive_group_settings__destination *)

type encoder_settings__output_groups__output_group_settings__archive_group_settings = {
  rollover_interval : float prop option; [@option]
      (** rollover_interval *)
  archive_cdn_settings :
    encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings
    list;
  destination :
    encoder_settings__output_groups__output_group_settings__archive_group_settings__destination
    list;
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__output_group_settings__archive_group_settings *)

type encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__destination = {
  destination_ref_id : string prop;  (** destination_ref_id *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__destination *)

type encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings__frame_capture_s3_settings = {
  canned_acl : string prop option; [@option]  (** canned_acl *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings__frame_capture_s3_settings *)

type encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings = {
  frame_capture_s3_settings :
    encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings__frame_capture_s3_settings
    list;
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings *)

type encoder_settings__output_groups__output_group_settings__frame_capture_group_settings = {
  destination :
    encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__destination
    list;
  frame_capture_cdn_settings :
    encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings
    list;
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__output_group_settings__frame_capture_group_settings *)

type encoder_settings__output_groups__output_group_settings__hls_group_settings__caption_language_mappings = {
  caption_channel : float prop;  (** caption_channel *)
  language_code : string prop;  (** language_code *)
  language_description : string prop;  (** language_description *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__output_group_settings__hls_group_settings__caption_language_mappings *)

type encoder_settings__output_groups__output_group_settings__hls_group_settings__destination = {
  destination_ref_id : string prop;  (** destination_ref_id *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__output_group_settings__hls_group_settings__destination *)

type encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_akamai_settings = {
  connection_retry_interval : float prop option; [@option]
      (** connection_retry_interval *)
  filecache_duration : float prop option; [@option]
      (** filecache_duration *)
  http_transfer_mode : string prop option; [@option]
      (** http_transfer_mode *)
  num_retries : float prop option; [@option]  (** num_retries *)
  restart_delay : float prop option; [@option]  (** restart_delay *)
  salt : string prop option; [@option]  (** salt *)
  token : string prop option; [@option]  (** token *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_akamai_settings *)

type encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_basic_put_settings = {
  connection_retry_interval : float prop option; [@option]
      (** connection_retry_interval *)
  filecache_duration : float prop option; [@option]
      (** filecache_duration *)
  num_retries : float prop option; [@option]  (** num_retries *)
  restart_delay : float prop option; [@option]  (** restart_delay *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_basic_put_settings *)

type encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_media_store_settings = {
  connection_retry_interval : float prop option; [@option]
      (** connection_retry_interval *)
  filecache_duration : float prop option; [@option]
      (** filecache_duration *)
  media_store_storage_class : string prop option; [@option]
      (** media_store_storage_class *)
  num_retries : float prop option; [@option]  (** num_retries *)
  restart_delay : float prop option; [@option]  (** restart_delay *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_media_store_settings *)

type encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_s3_settings = {
  canned_acl : string prop option; [@option]  (** canned_acl *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_s3_settings *)

type encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_webdav_settings = {
  connection_retry_interval : float prop option; [@option]
      (** connection_retry_interval *)
  filecache_duration : float prop option; [@option]
      (** filecache_duration *)
  http_transfer_mode : string prop option; [@option]
      (** http_transfer_mode *)
  num_retries : float prop option; [@option]  (** num_retries *)
  restart_delay : float prop option; [@option]  (** restart_delay *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_webdav_settings *)

type encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings = {
  hls_akamai_settings :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_akamai_settings
    list;
  hls_basic_put_settings :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_basic_put_settings
    list;
  hls_media_store_settings :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_media_store_settings
    list;
  hls_s3_settings :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_s3_settings
    list;
  hls_webdav_settings :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_webdav_settings
    list;
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings *)

type encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings__key_provider_server = {
  password_param : string prop option; [@option]
      (** password_param *)
  uri : string prop;  (** uri *)
  username : string prop option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings__key_provider_server *)

type encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings = {
  static_key_value : string prop;  (** static_key_value *)
  key_provider_server :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings__key_provider_server
    list;
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings *)

type encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings = {
  static_key_settings :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings
    list;
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings *)

type encoder_settings__output_groups__output_group_settings__hls_group_settings = {
  ad_markers : string prop list option; [@option]  (** ad_markers *)
  base_url_content : string prop option; [@option]
      (** base_url_content *)
  base_url_content1 : string prop option; [@option]
      (** base_url_content1 *)
  base_url_manifest : string prop option; [@option]
      (** base_url_manifest *)
  base_url_manifest1 : string prop option; [@option]
      (** base_url_manifest1 *)
  caption_language_setting : string prop option; [@option]
      (** caption_language_setting *)
  client_cache : string prop option; [@option]  (** client_cache *)
  codec_specification : string prop option; [@option]
      (** codec_specification *)
  constant_iv : string prop option; [@option]  (** constant_iv *)
  directory_structure : string prop option; [@option]
      (** directory_structure *)
  discontinuity_tags : string prop option; [@option]
      (** discontinuity_tags *)
  encryption_type : string prop option; [@option]
      (** encryption_type *)
  hls_id3_segment_tagging : string prop option; [@option]
      (** hls_id3_segment_tagging *)
  iframe_only_playlists : string prop option; [@option]
      (** iframe_only_playlists *)
  incomplete_segment_behavior : string prop option; [@option]
      (** incomplete_segment_behavior *)
  index_n_segments : float prop option; [@option]
      (** index_n_segments *)
  input_loss_action : string prop option; [@option]
      (** input_loss_action *)
  iv_in_manifest : string prop option; [@option]
      (** iv_in_manifest *)
  iv_source : string prop option; [@option]  (** iv_source *)
  keep_segments : float prop option; [@option]  (** keep_segments *)
  key_format : string prop option; [@option]  (** key_format *)
  key_format_versions : string prop option; [@option]
      (** key_format_versions *)
  manifest_compression : string prop option; [@option]
      (** manifest_compression *)
  manifest_duration_format : string prop option; [@option]
      (** manifest_duration_format *)
  min_segment_length : float prop option; [@option]
      (** min_segment_length *)
  mode : string prop option; [@option]  (** mode *)
  output_selection : string prop option; [@option]
      (** output_selection *)
  program_date_time : string prop option; [@option]
      (** program_date_time *)
  program_date_time_clock : string prop option; [@option]
      (** program_date_time_clock *)
  program_date_time_period : float prop option; [@option]
      (** program_date_time_period *)
  redundant_manifest : string prop option; [@option]
      (** redundant_manifest *)
  segment_length : float prop option; [@option]
      (** segment_length *)
  segments_per_subdirectory : float prop option; [@option]
      (** segments_per_subdirectory *)
  stream_inf_resolution : string prop option; [@option]
      (** stream_inf_resolution *)
  timed_metadata_id3_frame : string prop option; [@option]
      (** timed_metadata_id3_frame *)
  timed_metadata_id3_period : float prop option; [@option]
      (** timed_metadata_id3_period *)
  timestamp_delta_milliseconds : float prop option; [@option]
      (** timestamp_delta_milliseconds *)
  ts_file_mode : string prop option; [@option]  (** ts_file_mode *)
  caption_language_mappings :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__caption_language_mappings
    list;
  destination :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__destination
    list;
  hls_cdn_settings :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings
    list;
  key_provider_settings :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings
    list;
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__output_group_settings__hls_group_settings *)

type encoder_settings__output_groups__output_group_settings__media_package_group_settings__destination = {
  destination_ref_id : string prop;  (** destination_ref_id *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__output_group_settings__media_package_group_settings__destination *)

type encoder_settings__output_groups__output_group_settings__media_package_group_settings = {
  destination :
    encoder_settings__output_groups__output_group_settings__media_package_group_settings__destination
    list;
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__output_group_settings__media_package_group_settings *)

type encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings__destination = {
  destination_ref_id : string prop;  (** destination_ref_id *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings__destination *)

type encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings = {
  acquisition_point_id : string prop option; [@option]
      (** acquisition_point_id *)
  audio_only_timecode_control : string prop option; [@option]
      (** audio_only_timecode_control *)
  certificate_mode : string prop option; [@option]
      (** certificate_mode *)
  connection_retry_interval : float prop option; [@option]
      (** connection_retry_interval *)
  event_id : string prop option; [@option]  (** event_id *)
  event_id_mode : string prop option; [@option]  (** event_id_mode *)
  event_stop_behavior : string prop option; [@option]
      (** event_stop_behavior *)
  filecache_duration : float prop option; [@option]
      (** filecache_duration *)
  fragment_length : float prop option; [@option]
      (** fragment_length *)
  input_loss_action : string prop option; [@option]
      (** input_loss_action *)
  num_retries : float prop option; [@option]  (** num_retries *)
  restart_delay : float prop option; [@option]  (** restart_delay *)
  segmentation_mode : string prop option; [@option]
      (** segmentation_mode *)
  send_delay_ms : float prop option; [@option]  (** send_delay_ms *)
  sparse_track_type : string prop option; [@option]
      (** sparse_track_type *)
  stream_manifest_behavior : string prop option; [@option]
      (** stream_manifest_behavior *)
  timestamp_offset : string prop option; [@option]
      (** timestamp_offset *)
  timestamp_offset_mode : string prop option; [@option]
      (** timestamp_offset_mode *)
  destination :
    encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings__destination
    list;
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings *)

type encoder_settings__output_groups__output_group_settings__multiplex_group_settings =
  unit
[@@deriving yojson_of]

type encoder_settings__output_groups__output_group_settings__rtmp_group_settings = {
  ad_markers : string prop list option; [@option]  (** ad_markers *)
  authentication_scheme : string prop option; [@option]
      (** authentication_scheme *)
  cache_full_behavior : string prop option; [@option]
      (** cache_full_behavior *)
  cache_length : float prop option; [@option]  (** cache_length *)
  caption_data : string prop option; [@option]  (** caption_data *)
  input_loss_action : string prop option; [@option]
      (** input_loss_action *)
  restart_delay : float prop option; [@option]  (** restart_delay *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__output_group_settings__rtmp_group_settings *)

type encoder_settings__output_groups__output_group_settings__udp_group_settings = {
  input_loss_action : string prop option; [@option]
      (** input_loss_action *)
  timed_metadata_id3_frame : string prop option; [@option]
      (** timed_metadata_id3_frame *)
  timed_metadata_id3_period : float prop option; [@option]
      (** timed_metadata_id3_period *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__output_group_settings__udp_group_settings *)

type encoder_settings__output_groups__output_group_settings = {
  archive_group_settings :
    encoder_settings__output_groups__output_group_settings__archive_group_settings
    list;
  frame_capture_group_settings :
    encoder_settings__output_groups__output_group_settings__frame_capture_group_settings
    list;
  hls_group_settings :
    encoder_settings__output_groups__output_group_settings__hls_group_settings
    list;
  media_package_group_settings :
    encoder_settings__output_groups__output_group_settings__media_package_group_settings
    list;
  ms_smooth_group_settings :
    encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings
    list;
  multiplex_group_settings :
    encoder_settings__output_groups__output_group_settings__multiplex_group_settings
    list;
  rtmp_group_settings :
    encoder_settings__output_groups__output_group_settings__rtmp_group_settings
    list;
  udp_group_settings :
    encoder_settings__output_groups__output_group_settings__udp_group_settings
    list;
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__output_group_settings *)

type encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_nit_settings = {
  network_id : float prop;  (** network_id *)
  network_name : string prop;  (** network_name *)
  rep_interval : float prop option; [@option]  (** rep_interval *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_nit_settings *)

type encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_sdt_settings = {
  output_sdt : string prop option; [@option]  (** output_sdt *)
  rep_interval : float prop option; [@option]  (** rep_interval *)
  service_name : string prop option; [@option]  (** service_name *)
  service_provider_name : string prop option; [@option]
      (** service_provider_name *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_sdt_settings *)

type encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_tdt_settings = {
  rep_interval : float prop option; [@option]  (** rep_interval *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_tdt_settings *)

type encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings = {
  absent_input_audio_behavior : string prop option; [@option]
      (** absent_input_audio_behavior *)
  arib : string prop option; [@option]  (** arib *)
  arib_captions_pid : string prop option; [@option]
      (** arib_captions_pid *)
  arib_captions_pid_control : string prop option; [@option]
      (** arib_captions_pid_control *)
  audio_buffer_model : string prop option; [@option]
      (** audio_buffer_model *)
  audio_frames_per_pes : float prop option; [@option]
      (** audio_frames_per_pes *)
  audio_pids : string prop option; [@option]  (** audio_pids *)
  audio_stream_type : string prop option; [@option]
      (** audio_stream_type *)
  bitrate : float prop option; [@option]  (** bitrate *)
  buffer_model : string prop option; [@option]  (** buffer_model *)
  cc_descriptor : string prop option; [@option]  (** cc_descriptor *)
  dvb_sub_pids : string prop option; [@option]  (** dvb_sub_pids *)
  dvb_teletext_pid : string prop option; [@option]
      (** dvb_teletext_pid *)
  ebif : string prop option; [@option]  (** ebif *)
  ebp_audio_interval : string prop option; [@option]
      (** ebp_audio_interval *)
  ebp_lookahead_ms : float prop option; [@option]
      (** ebp_lookahead_ms *)
  ebp_placement : string prop option; [@option]  (** ebp_placement *)
  ecm_pid : string prop option; [@option]  (** ecm_pid *)
  es_rate_in_pes : string prop option; [@option]
      (** es_rate_in_pes *)
  etv_platform_pid : string prop option; [@option]
      (** etv_platform_pid *)
  etv_signal_pid : string prop option; [@option]
      (** etv_signal_pid *)
  fragment_time : float prop option; [@option]  (** fragment_time *)
  klv : string prop option; [@option]  (** klv *)
  klv_data_pids : string prop option; [@option]  (** klv_data_pids *)
  nielsen_id3_behavior : string prop option; [@option]
      (** nielsen_id3_behavior *)
  null_packet_bitrate : float prop option; [@option]
      (** null_packet_bitrate *)
  pat_interval : float prop option; [@option]  (** pat_interval *)
  pcr_control : string prop option; [@option]  (** pcr_control *)
  pcr_period : float prop option; [@option]  (** pcr_period *)
  pcr_pid : string prop option; [@option]  (** pcr_pid *)
  pmt_interval : float prop option; [@option]  (** pmt_interval *)
  pmt_pid : string prop option; [@option]  (** pmt_pid *)
  program_num : float prop option; [@option]  (** program_num *)
  rate_mode : string prop option; [@option]  (** rate_mode *)
  scte27_pids : string prop option; [@option]  (** scte27_pids *)
  scte35_control : string prop option; [@option]
      (** scte35_control *)
  scte35_pid : string prop option; [@option]  (** scte35_pid *)
  segmentation_markers : string prop option; [@option]
      (** segmentation_markers *)
  segmentation_style : string prop option; [@option]
      (** segmentation_style *)
  segmentation_time : float prop option; [@option]
      (** segmentation_time *)
  timed_metadata_behavior : string prop option; [@option]
      (** timed_metadata_behavior *)
  timed_metadata_pid : string prop option; [@option]
      (** timed_metadata_pid *)
  transport_stream_id : float prop option; [@option]
      (** transport_stream_id *)
  video_pid : string prop option; [@option]  (** video_pid *)
  dvb_nit_settings :
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_nit_settings
    list;
  dvb_sdt_settings :
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_sdt_settings
    list;
  dvb_tdt_settings :
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_tdt_settings
    list;
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings *)

type encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__raw_settings =
  unit
[@@deriving yojson_of]

type encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings = {
  m2ts_settings :
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings
    list;
  raw_settings :
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__raw_settings
    list;
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings *)

type encoder_settings__output_groups__outputs__output_settings__archive_output_settings = {
  extension : string prop option; [@option]  (** extension *)
  name_modifier : string prop option; [@option]  (** name_modifier *)
  container_settings :
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings
    list;
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__outputs__output_settings__archive_output_settings *)

type encoder_settings__output_groups__outputs__output_settings__frame_capture_output_settings = {
  name_modifier : string prop option; [@option]  (** name_modifier *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__outputs__output_settings__frame_capture_output_settings *)

type encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings__audio_only_image = {
  password_param : string prop option; [@option]
      (** password_param *)
  uri : string prop;  (** uri *)
  username : string prop option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings__audio_only_image *)

type encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings = {
  audio_group_id : string prop option; [@option]
      (** audio_group_id *)
  audio_track_type : string prop option; [@option]
      (** audio_track_type *)
  segment_type : string prop option; [@option]  (** segment_type *)
  audio_only_image :
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings__audio_only_image
    list;
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings *)

type encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__fmp4_hls_settings = {
  audio_rendition_sets : string prop option; [@option]
      (** audio_rendition_sets *)
  nielsen_id3_behavior : string prop option; [@option]
      (** nielsen_id3_behavior *)
  timed_metadata_behavior : string prop option; [@option]
      (** timed_metadata_behavior *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__fmp4_hls_settings *)

type encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__frame_capture_hls_settings =
  unit
[@@deriving yojson_of]

type encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings__m3u8_settings = {
  audio_frames_per_pes : float prop option; [@option]
      (** audio_frames_per_pes *)
  audio_pids : string prop option; [@option]  (** audio_pids *)
  ecm_pid : string prop option; [@option]  (** ecm_pid *)
  nielsen_id3_behavior : string prop option; [@option]
      (** nielsen_id3_behavior *)
  pat_interval : float prop option; [@option]  (** pat_interval *)
  pcr_control : string prop option; [@option]  (** pcr_control *)
  pcr_period : float prop option; [@option]  (** pcr_period *)
  pcr_pid : string prop option; [@option]  (** pcr_pid *)
  pmt_interval : float prop option; [@option]  (** pmt_interval *)
  pmt_pid : string prop option; [@option]  (** pmt_pid *)
  program_num : float prop option; [@option]  (** program_num *)
  scte35_behavior : string prop option; [@option]
      (** scte35_behavior *)
  scte35_pid : string prop option; [@option]  (** scte35_pid *)
  timed_metadata_behavior : string prop option; [@option]
      (** timed_metadata_behavior *)
  timed_metadata_pid : string prop option; [@option]
      (** timed_metadata_pid *)
  transport_stream_id : float prop option; [@option]
      (** transport_stream_id *)
  video_pid : string prop option; [@option]  (** video_pid *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings__m3u8_settings *)

type encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings = {
  audio_rendition_sets : string prop option; [@option]
      (** audio_rendition_sets *)
  m3u8_settings :
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings__m3u8_settings
    list;
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings *)

type encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings = {
  audio_only_hls_settings :
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings
    list;
  fmp4_hls_settings :
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__fmp4_hls_settings
    list;
  frame_capture_hls_settings :
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__frame_capture_hls_settings
    list;
  standard_hls_settings :
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings
    list;
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings *)

type encoder_settings__output_groups__outputs__output_settings__hls_output_settings = {
  h265_packaging_type : string prop option; [@option]
      (** h265_packaging_type *)
  name_modifier : string prop option; [@option]  (** name_modifier *)
  segment_modifier : string prop option; [@option]
      (** segment_modifier *)
  hls_settings :
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings
    list;
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__outputs__output_settings__hls_output_settings *)

type encoder_settings__output_groups__outputs__output_settings__media_package_output_settings =
  unit
[@@deriving yojson_of]

type encoder_settings__output_groups__outputs__output_settings__ms_smooth_output_settings = {
  h265_packaging_type : string prop option; [@option]
      (** h265_packaging_type *)
  name_modifier : string prop option; [@option]  (** name_modifier *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__outputs__output_settings__ms_smooth_output_settings *)

type encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings__destination = {
  destination_ref_id : string prop;  (** destination_ref_id *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings__destination *)

type encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings = {
  destination :
    encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings__destination
    list;
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings *)

type encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings__destination = {
  destination_ref_id : string prop;  (** destination_ref_id *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings__destination *)

type encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings = {
  certificate_mode : string prop option; [@option]
      (** certificate_mode *)
  connection_retry_interval : float prop option; [@option]
      (** connection_retry_interval *)
  num_retries : float prop option; [@option]  (** num_retries *)
  destination :
    encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings__destination
    list;
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings *)

type encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_nit_settings = {
  network_id : float prop;  (** network_id *)
  network_name : string prop;  (** network_name *)
  rep_interval : float prop option; [@option]  (** rep_interval *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_nit_settings *)

type encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_sdt_settings = {
  output_sdt : string prop option; [@option]  (** output_sdt *)
  rep_interval : float prop option; [@option]  (** rep_interval *)
  service_name : string prop option; [@option]  (** service_name *)
  service_provider_name : string prop option; [@option]
      (** service_provider_name *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_sdt_settings *)

type encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_tdt_settings = {
  rep_interval : float prop option; [@option]  (** rep_interval *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_tdt_settings *)

type encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings = {
  absent_input_audio_behavior : string prop option; [@option]
      (** absent_input_audio_behavior *)
  arib : string prop option; [@option]  (** arib *)
  arib_captions_pid : string prop option; [@option]
      (** arib_captions_pid *)
  arib_captions_pid_control : string prop option; [@option]
      (** arib_captions_pid_control *)
  audio_buffer_model : string prop option; [@option]
      (** audio_buffer_model *)
  audio_frames_per_pes : float prop option; [@option]
      (** audio_frames_per_pes *)
  audio_pids : string prop option; [@option]  (** audio_pids *)
  audio_stream_type : string prop option; [@option]
      (** audio_stream_type *)
  bitrate : float prop option; [@option]  (** bitrate *)
  buffer_model : string prop option; [@option]  (** buffer_model *)
  cc_descriptor : string prop option; [@option]  (** cc_descriptor *)
  dvb_sub_pids : string prop option; [@option]  (** dvb_sub_pids *)
  dvb_teletext_pid : string prop option; [@option]
      (** dvb_teletext_pid *)
  ebif : string prop option; [@option]  (** ebif *)
  ebp_audio_interval : string prop option; [@option]
      (** ebp_audio_interval *)
  ebp_lookahead_ms : float prop option; [@option]
      (** ebp_lookahead_ms *)
  ebp_placement : string prop option; [@option]  (** ebp_placement *)
  ecm_pid : string prop option; [@option]  (** ecm_pid *)
  es_rate_in_pes : string prop option; [@option]
      (** es_rate_in_pes *)
  etv_platform_pid : string prop option; [@option]
      (** etv_platform_pid *)
  etv_signal_pid : string prop option; [@option]
      (** etv_signal_pid *)
  fragment_time : float prop option; [@option]  (** fragment_time *)
  klv : string prop option; [@option]  (** klv *)
  klv_data_pids : string prop option; [@option]  (** klv_data_pids *)
  nielsen_id3_behavior : string prop option; [@option]
      (** nielsen_id3_behavior *)
  null_packet_bitrate : float prop option; [@option]
      (** null_packet_bitrate *)
  pat_interval : float prop option; [@option]  (** pat_interval *)
  pcr_control : string prop option; [@option]  (** pcr_control *)
  pcr_period : float prop option; [@option]  (** pcr_period *)
  pcr_pid : string prop option; [@option]  (** pcr_pid *)
  pmt_interval : float prop option; [@option]  (** pmt_interval *)
  pmt_pid : string prop option; [@option]  (** pmt_pid *)
  program_num : float prop option; [@option]  (** program_num *)
  rate_mode : string prop option; [@option]  (** rate_mode *)
  scte27_pids : string prop option; [@option]  (** scte27_pids *)
  scte35_control : string prop option; [@option]
      (** scte35_control *)
  scte35_pid : string prop option; [@option]  (** scte35_pid *)
  segmentation_markers : string prop option; [@option]
      (** segmentation_markers *)
  segmentation_style : string prop option; [@option]
      (** segmentation_style *)
  segmentation_time : float prop option; [@option]
      (** segmentation_time *)
  timed_metadata_behavior : string prop option; [@option]
      (** timed_metadata_behavior *)
  timed_metadata_pid : string prop option; [@option]
      (** timed_metadata_pid *)
  transport_stream_id : float prop option; [@option]
      (** transport_stream_id *)
  video_pid : string prop option; [@option]  (** video_pid *)
  dvb_nit_settings :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_nit_settings
    list;
  dvb_sdt_settings :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_sdt_settings
    list;
  dvb_tdt_settings :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_tdt_settings
    list;
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings *)

type encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings = {
  m2ts_settings :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings
    list;
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings *)

type encoder_settings__output_groups__outputs__output_settings__udp_output_settings__destination = {
  destination_ref_id : string prop;  (** destination_ref_id *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__outputs__output_settings__udp_output_settings__destination *)

type encoder_settings__output_groups__outputs__output_settings__udp_output_settings__fec_output_settings = {
  column_depth : float prop option; [@option]  (** column_depth *)
  include_fec : string prop option; [@option]  (** include_fec *)
  row_length : float prop option; [@option]  (** row_length *)
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__outputs__output_settings__udp_output_settings__fec_output_settings *)

type encoder_settings__output_groups__outputs__output_settings__udp_output_settings = {
  buffer_msec : float prop option; [@option]  (** buffer_msec *)
  container_settings :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings
    list;
  destination :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__destination
    list;
  fec_output_settings :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__fec_output_settings
    list;
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__outputs__output_settings__udp_output_settings *)

type encoder_settings__output_groups__outputs__output_settings = {
  archive_output_settings :
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings
    list;
  frame_capture_output_settings :
    encoder_settings__output_groups__outputs__output_settings__frame_capture_output_settings
    list;
  hls_output_settings :
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings
    list;
  media_package_output_settings :
    encoder_settings__output_groups__outputs__output_settings__media_package_output_settings
    list;
  ms_smooth_output_settings :
    encoder_settings__output_groups__outputs__output_settings__ms_smooth_output_settings
    list;
  multiplex_output_settings :
    encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings
    list;
  rtmp_output_settings :
    encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings
    list;
  udp_output_settings :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings
    list;
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__outputs__output_settings *)

type encoder_settings__output_groups__outputs = {
  audio_description_names : string prop list option; [@option]
      (** audio_description_names *)
  caption_description_names : string prop list option; [@option]
      (** caption_description_names *)
  output_name : string prop option; [@option]  (** output_name *)
  video_description_name : string prop option; [@option]
      (** video_description_name *)
  output_settings :
    encoder_settings__output_groups__outputs__output_settings list;
}
[@@deriving yojson_of]
(** encoder_settings__output_groups__outputs *)

type encoder_settings__output_groups = {
  name : string prop option; [@option]  (** name *)
  output_group_settings :
    encoder_settings__output_groups__output_group_settings list;
  outputs : encoder_settings__output_groups__outputs list;
}
[@@deriving yojson_of]
(** encoder_settings__output_groups *)

type encoder_settings__timecode_config = {
  source : string prop;  (** source *)
  sync_threshold : float prop option; [@option]  (** sync_threshold *)
}
[@@deriving yojson_of]
(** encoder_settings__timecode_config *)

type encoder_settings__video_descriptions__codec_settings__frame_capture_settings = {
  capture_interval : float prop option; [@option]
      (** capture_interval *)
  capture_interval_units : string prop option; [@option]
      (** capture_interval_units *)
}
[@@deriving yojson_of]
(** encoder_settings__video_descriptions__codec_settings__frame_capture_settings *)

type encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings__temporal_filter_settings = {
  post_filter_sharpening : string prop option; [@option]
      (** post_filter_sharpening *)
  strength : string prop option; [@option]  (** strength *)
}
[@@deriving yojson_of]
(** encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings__temporal_filter_settings *)

type encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings = {
  temporal_filter_settings :
    encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings__temporal_filter_settings
    list;
}
[@@deriving yojson_of]
(** encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings *)

type encoder_settings__video_descriptions__codec_settings__h264_settings = {
  adaptive_quantization : string prop option; [@option]
      (** adaptive_quantization *)
  afd_signaling : string prop option; [@option]  (** afd_signaling *)
  bitrate : float prop option; [@option]  (** bitrate *)
  buf_fill_pct : float prop option; [@option]  (** buf_fill_pct *)
  buf_size : float prop option; [@option]  (** buf_size *)
  color_metadata : string prop option; [@option]
      (** color_metadata *)
  entropy_encoding : string prop option; [@option]
      (** entropy_encoding *)
  fixed_afd : string prop option; [@option]  (** fixed_afd *)
  flicker_aq : string prop option; [@option]  (** flicker_aq *)
  force_field_pictures : string prop option; [@option]
      (** force_field_pictures *)
  framerate_control : string prop option; [@option]
      (** framerate_control *)
  framerate_denominator : float prop option; [@option]
      (** framerate_denominator *)
  framerate_numerator : float prop option; [@option]
      (** framerate_numerator *)
  gop_b_reference : string prop option; [@option]
      (** gop_b_reference *)
  gop_closed_cadence : float prop option; [@option]
      (** gop_closed_cadence *)
  gop_num_b_frames : float prop option; [@option]
      (** gop_num_b_frames *)
  gop_size : float prop option; [@option]  (** gop_size *)
  gop_size_units : string prop option; [@option]
      (** gop_size_units *)
  level : string prop option; [@option]  (** level *)
  look_ahead_rate_control : string prop option; [@option]
      (** look_ahead_rate_control *)
  max_bitrate : float prop option; [@option]  (** max_bitrate *)
  min_i_interval : float prop option; [@option]
      (** min_i_interval *)
  num_ref_frames : float prop option; [@option]
      (** num_ref_frames *)
  par_control : string prop option; [@option]  (** par_control *)
  par_denominator : float prop option; [@option]
      (** par_denominator *)
  par_numerator : float prop option; [@option]  (** par_numerator *)
  profile : string prop option; [@option]  (** profile *)
  quality_level : string prop option; [@option]  (** quality_level *)
  qvbr_quality_level : float prop option; [@option]
      (** qvbr_quality_level *)
  rate_control_mode : string prop option; [@option]
      (** rate_control_mode *)
  scan_type : string prop option; [@option]  (** scan_type *)
  scene_change_detect : string prop option; [@option]
      (** scene_change_detect *)
  slices : float prop option; [@option]  (** slices *)
  softness : float prop option; [@option]  (** softness *)
  spatial_aq : string prop option; [@option]  (** spatial_aq *)
  subgop_length : string prop option; [@option]  (** subgop_length *)
  syntax : string prop option; [@option]  (** syntax *)
  temporal_aq : string prop option; [@option]  (** temporal_aq *)
  timecode_insertion : string prop option; [@option]
      (** timecode_insertion *)
  filter_settings :
    encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings
    list;
}
[@@deriving yojson_of]
(** encoder_settings__video_descriptions__codec_settings__h264_settings *)

type encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__color_space_passthrough_settings =
  unit
[@@deriving yojson_of]

type encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__dolby_vision81_settings =
  unit
[@@deriving yojson_of]

type encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__hdr10_settings = {
  max_cll : float prop option; [@option]  (** max_cll *)
  max_fall : float prop option; [@option]  (** max_fall *)
}
[@@deriving yojson_of]
(** encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__hdr10_settings *)

type encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec601_settings =
  unit
[@@deriving yojson_of]

type encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec709_settings =
  unit
[@@deriving yojson_of]

type encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings = {
  color_space_passthrough_settings :
    encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__color_space_passthrough_settings
    list;
  dolby_vision81_settings :
    encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__dolby_vision81_settings
    list;
  hdr10_settings :
    encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__hdr10_settings
    list;
  rec601_settings :
    encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec601_settings
    list;
  rec709_settings :
    encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec709_settings
    list;
}
[@@deriving yojson_of]
(** encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings *)

type encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings__temporal_filter_settings = {
  post_filter_sharpening : string prop option; [@option]
      (** post_filter_sharpening *)
  strength : string prop option; [@option]  (** strength *)
}
[@@deriving yojson_of]
(** encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings__temporal_filter_settings *)

type encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings = {
  temporal_filter_settings :
    encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings__temporal_filter_settings
    list;
}
[@@deriving yojson_of]
(** encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings *)

type encoder_settings__video_descriptions__codec_settings__h265_settings__timecode_burnin_settings = {
  prefix : string prop option; [@option]  (** prefix *)
  timecode_burnin_font_size : string prop option; [@option]
      (** timecode_burnin_font_size *)
  timecode_burnin_position : string prop option; [@option]
      (** timecode_burnin_position *)
}
[@@deriving yojson_of]
(** encoder_settings__video_descriptions__codec_settings__h265_settings__timecode_burnin_settings *)

type encoder_settings__video_descriptions__codec_settings__h265_settings = {
  adaptive_quantization : string prop option; [@option]
      (** adaptive_quantization *)
  afd_signaling : string prop option; [@option]  (** afd_signaling *)
  alternative_transfer_function : string prop option; [@option]
      (** alternative_transfer_function *)
  bitrate : float prop;  (** bitrate *)
  buf_size : float prop option; [@option]  (** buf_size *)
  color_metadata : string prop option; [@option]
      (** color_metadata *)
  fixed_afd : string prop option; [@option]  (** fixed_afd *)
  flicker_aq : string prop option; [@option]  (** flicker_aq *)
  framerate_denominator : float prop;  (** framerate_denominator *)
  framerate_numerator : float prop;  (** framerate_numerator *)
  gop_closed_cadence : float prop option; [@option]
      (** gop_closed_cadence *)
  gop_size : float prop option; [@option]  (** gop_size *)
  gop_size_units : string prop option; [@option]
      (** gop_size_units *)
  level : string prop option; [@option]  (** level *)
  look_ahead_rate_control : string prop option; [@option]
      (** look_ahead_rate_control *)
  max_bitrate : float prop option; [@option]  (** max_bitrate *)
  min_i_interval : float prop option; [@option]
      (** min_i_interval *)
  par_denominator : float prop option; [@option]
      (** par_denominator *)
  par_numerator : float prop option; [@option]  (** par_numerator *)
  profile : string prop option; [@option]  (** profile *)
  qvbr_quality_level : float prop option; [@option]
      (** qvbr_quality_level *)
  rate_control_mode : string prop option; [@option]
      (** rate_control_mode *)
  scan_type : string prop option; [@option]  (** scan_type *)
  scene_change_detect : string prop option; [@option]
      (** scene_change_detect *)
  slices : float prop option; [@option]  (** slices *)
  tier : string prop option; [@option]  (** tier *)
  timecode_insertion : string prop option; [@option]
      (** timecode_insertion *)
  color_space_settings :
    encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings
    list;
  filter_settings :
    encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings
    list;
  timecode_burnin_settings :
    encoder_settings__video_descriptions__codec_settings__h265_settings__timecode_burnin_settings
    list;
}
[@@deriving yojson_of]
(** encoder_settings__video_descriptions__codec_settings__h265_settings *)

type encoder_settings__video_descriptions__codec_settings = {
  frame_capture_settings :
    encoder_settings__video_descriptions__codec_settings__frame_capture_settings
    list;
  h264_settings :
    encoder_settings__video_descriptions__codec_settings__h264_settings
    list;
  h265_settings :
    encoder_settings__video_descriptions__codec_settings__h265_settings
    list;
}
[@@deriving yojson_of]
(** encoder_settings__video_descriptions__codec_settings *)

type encoder_settings__video_descriptions = {
  height : float prop option; [@option]  (** height *)
  name : string prop;  (** name *)
  respond_to_afd : string prop option; [@option]
      (** respond_to_afd *)
  scaling_behavior : string prop option; [@option]
      (** scaling_behavior *)
  sharpness : float prop option; [@option]  (** sharpness *)
  width : float prop option; [@option]  (** width *)
  codec_settings :
    encoder_settings__video_descriptions__codec_settings list;
}
[@@deriving yojson_of]
(** encoder_settings__video_descriptions *)

type encoder_settings = {
  audio_descriptions : encoder_settings__audio_descriptions list;
  avail_blanking : encoder_settings__avail_blanking list;
  caption_descriptions : encoder_settings__caption_descriptions list;
  global_configuration : encoder_settings__global_configuration list;
  motion_graphics_configuration :
    encoder_settings__motion_graphics_configuration list;
  nielsen_configuration :
    encoder_settings__nielsen_configuration list;
  output_groups : encoder_settings__output_groups list;
  timecode_config : encoder_settings__timecode_config list;
  video_descriptions : encoder_settings__video_descriptions list;
}
[@@deriving yojson_of]
(** encoder_settings *)

type input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__audio_silence_settings = {
  audio_selector_name : string prop;  (** audio_selector_name *)
  audio_silence_threshold_msec : float prop option; [@option]
      (** audio_silence_threshold_msec *)
}
[@@deriving yojson_of]
(** input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__audio_silence_settings *)

type input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__input_loss_settings = {
  input_loss_threshold_msec : float prop option; [@option]
      (** input_loss_threshold_msec *)
}
[@@deriving yojson_of]
(** input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__input_loss_settings *)

type input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__video_black_settings = {
  black_detect_threshold : float prop option; [@option]
      (** black_detect_threshold *)
  video_black_threshold_msec : float prop option; [@option]
      (** video_black_threshold_msec *)
}
[@@deriving yojson_of]
(** input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__video_black_settings *)

type input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings = {
  audio_silence_settings :
    input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__audio_silence_settings
    list;
  input_loss_settings :
    input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__input_loss_settings
    list;
  video_black_settings :
    input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__video_black_settings
    list;
}
[@@deriving yojson_of]
(** input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings *)

type input_attachments__automatic_input_failover_settings__failover_condition = {
  failover_condition_settings :
    input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings
    list;
}
[@@deriving yojson_of]
(** input_attachments__automatic_input_failover_settings__failover_condition *)

type input_attachments__automatic_input_failover_settings = {
  error_clear_time_msec : float prop option; [@option]
      (** error_clear_time_msec *)
  input_preference : string prop option; [@option]
      (** input_preference *)
  secondary_input_id : string prop;  (** secondary_input_id *)
  failover_condition :
    input_attachments__automatic_input_failover_settings__failover_condition
    list;
}
[@@deriving yojson_of]
(** input_attachments__automatic_input_failover_settings *)

type input_attachments__input_settings__audio_selector__selector_settings__audio_hls_rendition_selection = {
  group_id : string prop;  (** group_id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** input_attachments__input_settings__audio_selector__selector_settings__audio_hls_rendition_selection *)

type input_attachments__input_settings__audio_selector__selector_settings__audio_language_selection = {
  language_code : string prop;  (** language_code *)
  language_selection_policy : string prop option; [@option]
      (** language_selection_policy *)
}
[@@deriving yojson_of]
(** input_attachments__input_settings__audio_selector__selector_settings__audio_language_selection *)

type input_attachments__input_settings__audio_selector__selector_settings__audio_pid_selection = {
  pid : float prop;  (** pid *)
}
[@@deriving yojson_of]
(** input_attachments__input_settings__audio_selector__selector_settings__audio_pid_selection *)

type input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__dolby_e_decode = {
  program_selection : string prop;  (** program_selection *)
}
[@@deriving yojson_of]
(** input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__dolby_e_decode *)

type input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__tracks = {
  track : float prop;  (** track *)
}
[@@deriving yojson_of]
(** input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__tracks *)

type input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection = {
  dolby_e_decode :
    input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__dolby_e_decode
    list;
  tracks :
    input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__tracks
    list;
}
[@@deriving yojson_of]
(** input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection *)

type input_attachments__input_settings__audio_selector__selector_settings = {
  audio_hls_rendition_selection :
    input_attachments__input_settings__audio_selector__selector_settings__audio_hls_rendition_selection
    list;
  audio_language_selection :
    input_attachments__input_settings__audio_selector__selector_settings__audio_language_selection
    list;
  audio_pid_selection :
    input_attachments__input_settings__audio_selector__selector_settings__audio_pid_selection
    list;
  audio_track_selection :
    input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection
    list;
}
[@@deriving yojson_of]
(** input_attachments__input_settings__audio_selector__selector_settings *)

type input_attachments__input_settings__audio_selector = {
  name : string prop;  (** name *)
  selector_settings :
    input_attachments__input_settings__audio_selector__selector_settings
    list;
}
[@@deriving yojson_of]
(** input_attachments__input_settings__audio_selector *)

type input_attachments__input_settings__caption_selector__selector_settings__ancillary_source_settings = {
  source_ancillary_channel_number : float prop option; [@option]
      (** source_ancillary_channel_number *)
}
[@@deriving yojson_of]
(** input_attachments__input_settings__caption_selector__selector_settings__ancillary_source_settings *)

type input_attachments__input_settings__caption_selector__selector_settings__arib_source_settings =
  unit
[@@deriving yojson_of]

type input_attachments__input_settings__caption_selector__selector_settings__dvb_sub_source_settings = {
  ocr_language : string prop option; [@option]  (** ocr_language *)
  pid : float prop option; [@option]  (** pid *)
}
[@@deriving yojson_of]
(** input_attachments__input_settings__caption_selector__selector_settings__dvb_sub_source_settings *)

type input_attachments__input_settings__caption_selector__selector_settings__embedded_source_settings = {
  convert_608_to_708 : string prop option; [@option]
      (** convert_608_to_708 *)
  scte20_detection : string prop option; [@option]
      (** scte20_detection *)
  source_608_channel_number : float prop option; [@option]
      (** source_608_channel_number *)
}
[@@deriving yojson_of]
(** input_attachments__input_settings__caption_selector__selector_settings__embedded_source_settings *)

type input_attachments__input_settings__caption_selector__selector_settings__scte20_source_settings = {
  convert_608_to_708 : string prop option; [@option]
      (** convert_608_to_708 *)
  source_608_channel_number : float prop option; [@option]
      (** source_608_channel_number *)
}
[@@deriving yojson_of]
(** input_attachments__input_settings__caption_selector__selector_settings__scte20_source_settings *)

type input_attachments__input_settings__caption_selector__selector_settings__scte27_source_settings = {
  ocr_language : string prop option; [@option]  (** ocr_language *)
  pid : float prop option; [@option]  (** pid *)
}
[@@deriving yojson_of]
(** input_attachments__input_settings__caption_selector__selector_settings__scte27_source_settings *)

type input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings__output_rectangle = {
  height : float prop;  (** height *)
  left_offset : float prop;  (** left_offset *)
  top_offset : float prop;  (** top_offset *)
  width : float prop;  (** width *)
}
[@@deriving yojson_of]
(** input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings__output_rectangle *)

type input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings = {
  page_number : string prop option; [@option]  (** page_number *)
  output_rectangle :
    input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings__output_rectangle
    list;
}
[@@deriving yojson_of]
(** input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings *)

type input_attachments__input_settings__caption_selector__selector_settings = {
  ancillary_source_settings :
    input_attachments__input_settings__caption_selector__selector_settings__ancillary_source_settings
    list;
  arib_source_settings :
    input_attachments__input_settings__caption_selector__selector_settings__arib_source_settings
    list;
  dvb_sub_source_settings :
    input_attachments__input_settings__caption_selector__selector_settings__dvb_sub_source_settings
    list;
  embedded_source_settings :
    input_attachments__input_settings__caption_selector__selector_settings__embedded_source_settings
    list;
  scte20_source_settings :
    input_attachments__input_settings__caption_selector__selector_settings__scte20_source_settings
    list;
  scte27_source_settings :
    input_attachments__input_settings__caption_selector__selector_settings__scte27_source_settings
    list;
  teletext_source_settings :
    input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings
    list;
}
[@@deriving yojson_of]
(** input_attachments__input_settings__caption_selector__selector_settings *)

type input_attachments__input_settings__caption_selector = {
  language_code : string prop option; [@option]  (** language_code *)
  name : string prop;  (** name *)
  selector_settings :
    input_attachments__input_settings__caption_selector__selector_settings
    list;
}
[@@deriving yojson_of]
(** input_attachments__input_settings__caption_selector *)

type input_attachments__input_settings__network_input_settings__hls_input_settings = {
  bandwidth : float prop option; [@option]  (** bandwidth *)
  buffer_segments : float prop option; [@option]
      (** buffer_segments *)
  retries : float prop option; [@option]  (** retries *)
  retry_interval : float prop option; [@option]
      (** retry_interval *)
  scte35_source : string prop option; [@option]  (** scte35_source *)
}
[@@deriving yojson_of]
(** input_attachments__input_settings__network_input_settings__hls_input_settings *)

type input_attachments__input_settings__network_input_settings = {
  server_validation : string prop option; [@option]
      (** server_validation *)
  hls_input_settings :
    input_attachments__input_settings__network_input_settings__hls_input_settings
    list;
}
[@@deriving yojson_of]
(** input_attachments__input_settings__network_input_settings *)

type input_attachments__input_settings__video_selector = {
  color_space : string prop option; [@option]  (** color_space *)
  color_space_usage : string prop option; [@option]
      (** color_space_usage *)
}
[@@deriving yojson_of]
(** input_attachments__input_settings__video_selector *)

type input_attachments__input_settings = {
  deblock_filter : string prop option; [@option]
      (** deblock_filter *)
  denoise_filter : string prop option; [@option]
      (** denoise_filter *)
  filter_strength : float prop option; [@option]
      (** filter_strength *)
  input_filter : string prop option; [@option]  (** input_filter *)
  scte35_pid : float prop option; [@option]  (** scte35_pid *)
  smpte2038_data_preference : string prop option; [@option]
      (** smpte2038_data_preference *)
  source_end_behavior : string prop option; [@option]
      (** source_end_behavior *)
  audio_selector :
    input_attachments__input_settings__audio_selector list;
  caption_selector :
    input_attachments__input_settings__caption_selector list;
  network_input_settings :
    input_attachments__input_settings__network_input_settings list;
  video_selector :
    input_attachments__input_settings__video_selector list;
}
[@@deriving yojson_of]
(** input_attachments__input_settings *)

type input_attachments = {
  input_attachment_name : string prop;  (** input_attachment_name *)
  input_id : string prop;  (** input_id *)
  automatic_input_failover_settings :
    input_attachments__automatic_input_failover_settings list;
  input_settings : input_attachments__input_settings list;
}
[@@deriving yojson_of]
(** input_attachments *)

type input_specification = {
  codec : string prop;  (** codec *)
  input_resolution : string prop;  (** input_resolution *)
  maximum_bitrate : string prop;  (** maximum_bitrate *)
}
[@@deriving yojson_of]
(** input_specification *)

type maintenance = {
  maintenance_day : string prop;  (** maintenance_day *)
  maintenance_start_time : string prop;  (** maintenance_start_time *)
}
[@@deriving yojson_of]
(** maintenance *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type vpc = {
  public_address_allocation_ids : string prop list;
      (** public_address_allocation_ids *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
}
[@@deriving yojson_of]
(** vpc *)

type aws_medialive_channel = {
  channel_class : string prop;  (** channel_class *)
  id : string prop option; [@option]  (** id *)
  log_level : string prop option; [@option]  (** log_level *)
  name : string prop;  (** name *)
  role_arn : string prop option; [@option]  (** role_arn *)
  start_channel : bool prop option; [@option]  (** start_channel *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  cdi_input_specification : cdi_input_specification list;
  destinations : destinations list;
  encoder_settings : encoder_settings list;
  input_attachments : input_attachments list;
  input_specification : input_specification list;
  maintenance : maintenance list;
  timeouts : timeouts option;
  vpc : vpc list;
}
[@@deriving yojson_of]
(** aws_medialive_channel *)

let cdi_input_specification ~resolution () : cdi_input_specification
    =
  { resolution }

let destinations__media_package_settings ~channel_id () :
    destinations__media_package_settings =
  { channel_id }

let destinations__multiplex_settings ~multiplex_id ~program_name () :
    destinations__multiplex_settings =
  { multiplex_id; program_name }

let destinations__settings ?password_param ?stream_name ?url
    ?username () : destinations__settings =
  { password_param; stream_name; url; username }

let destinations ~id ~media_package_settings ~multiplex_settings
    ~settings () : destinations =
  { id; media_package_settings; multiplex_settings; settings }

let encoder_settings__audio_descriptions__audio_normalization_settings
    ?algorithm ?algorithm_control ?target_lkfs () :
    encoder_settings__audio_descriptions__audio_normalization_settings
    =
  { algorithm; algorithm_control; target_lkfs }

let encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_cbet_settings
    ~cbet_check_digit_string ~cbet_stepaside ~csid () :
    encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_cbet_settings
    =
  { cbet_check_digit_string; cbet_stepaside; csid }

let encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_naes_ii_nw_settings
    ~check_digit_string ~sid () :
    encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_naes_ii_nw_settings
    =
  { check_digit_string; sid }

let encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings
    ?nielsen_distribution_type ~nielsen_cbet_settings
    ~nielsen_naes_ii_nw_settings () :
    encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings
    =
  {
    nielsen_distribution_type;
    nielsen_cbet_settings;
    nielsen_naes_ii_nw_settings;
  }

let encoder_settings__audio_descriptions__audio_watermark_settings
    ~nielsen_watermarks_settings () :
    encoder_settings__audio_descriptions__audio_watermark_settings =
  { nielsen_watermarks_settings }

let encoder_settings__audio_descriptions__codec_settings__aac_settings
    ?bitrate ?coding_mode ?input_type ?profile ?rate_control_mode
    ?raw_format ?sample_rate ?spec ?vbr_quality () :
    encoder_settings__audio_descriptions__codec_settings__aac_settings
    =
  {
    bitrate;
    coding_mode;
    input_type;
    profile;
    rate_control_mode;
    raw_format;
    sample_rate;
    spec;
    vbr_quality;
  }

let encoder_settings__audio_descriptions__codec_settings__ac3_settings
    ?bitrate ?bitstream_mode ?coding_mode ?dialnorm ?drc_profile
    ?lfe_filter ?metadata_control () :
    encoder_settings__audio_descriptions__codec_settings__ac3_settings
    =
  {
    bitrate;
    bitstream_mode;
    coding_mode;
    dialnorm;
    drc_profile;
    lfe_filter;
    metadata_control;
  }

let encoder_settings__audio_descriptions__codec_settings__eac3_atmos_settings
    ?bitrate ?coding_mode ?dialnorm ?drc_line ?drc_rf ?height_trim
    ?surround_trim () :
    encoder_settings__audio_descriptions__codec_settings__eac3_atmos_settings
    =
  {
    bitrate;
    coding_mode;
    dialnorm;
    drc_line;
    drc_rf;
    height_trim;
    surround_trim;
  }

let encoder_settings__audio_descriptions__codec_settings__eac3_settings
    ?attenuation_control ?bitrate ?bitstream_mode ?coding_mode
    ?dc_filter ?dialnorm ?drc_line ?drc_rf ?lfe_control ?lfe_filter
    ?lo_ro_center_mix_level ?lo_ro_surround_mix_level
    ?lt_rt_center_mix_level ?lt_rt_surround_mix_level
    ?metadata_control ?passthrough_control ?phase_control
    ?stereo_downmix ?surround_ex_mode ?surround_mode () :
    encoder_settings__audio_descriptions__codec_settings__eac3_settings
    =
  {
    attenuation_control;
    bitrate;
    bitstream_mode;
    coding_mode;
    dc_filter;
    dialnorm;
    drc_line;
    drc_rf;
    lfe_control;
    lfe_filter;
    lo_ro_center_mix_level;
    lo_ro_surround_mix_level;
    lt_rt_center_mix_level;
    lt_rt_surround_mix_level;
    metadata_control;
    passthrough_control;
    phase_control;
    stereo_downmix;
    surround_ex_mode;
    surround_mode;
  }

let encoder_settings__audio_descriptions__codec_settings__mp2_settings
    ?bitrate ?coding_mode ?sample_rate () :
    encoder_settings__audio_descriptions__codec_settings__mp2_settings
    =
  { bitrate; coding_mode; sample_rate }

let encoder_settings__audio_descriptions__codec_settings__pass_through_settings
    () =
  ()

let encoder_settings__audio_descriptions__codec_settings__wav_settings
    ?bit_depth ?coding_mode ?sample_rate () :
    encoder_settings__audio_descriptions__codec_settings__wav_settings
    =
  { bit_depth; coding_mode; sample_rate }

let encoder_settings__audio_descriptions__codec_settings
    ~aac_settings ~ac3_settings ~eac3_atmos_settings ~eac3_settings
    ~mp2_settings ~pass_through_settings ~wav_settings () :
    encoder_settings__audio_descriptions__codec_settings =
  {
    aac_settings;
    ac3_settings;
    eac3_atmos_settings;
    eac3_settings;
    mp2_settings;
    pass_through_settings;
    wav_settings;
  }

let encoder_settings__audio_descriptions__remix_settings__channel_mappings__input_channel_levels
    ~gain ~input_channel () :
    encoder_settings__audio_descriptions__remix_settings__channel_mappings__input_channel_levels
    =
  { gain; input_channel }

let encoder_settings__audio_descriptions__remix_settings__channel_mappings
    ~output_channel ~input_channel_levels () :
    encoder_settings__audio_descriptions__remix_settings__channel_mappings
    =
  { output_channel; input_channel_levels }

let encoder_settings__audio_descriptions__remix_settings ?channels_in
    ?channels_out ~channel_mappings () :
    encoder_settings__audio_descriptions__remix_settings =
  { channels_in; channels_out; channel_mappings }

let encoder_settings__audio_descriptions ?audio_type
    ?audio_type_control ?language_code ?language_code_control
    ?stream_name ~audio_selector_name ~name
    ~audio_normalization_settings ~audio_watermark_settings
    ~codec_settings ~remix_settings () :
    encoder_settings__audio_descriptions =
  {
    audio_selector_name;
    audio_type;
    audio_type_control;
    language_code;
    language_code_control;
    name;
    stream_name;
    audio_normalization_settings;
    audio_watermark_settings;
    codec_settings;
    remix_settings;
  }

let encoder_settings__avail_blanking__avail_blanking_image
    ?password_param ?username ~uri () :
    encoder_settings__avail_blanking__avail_blanking_image =
  { password_param; uri; username }

let encoder_settings__avail_blanking ?state ~avail_blanking_image ()
    : encoder_settings__avail_blanking =
  { state; avail_blanking_image }

let encoder_settings__caption_descriptions__destination_settings__arib_destination_settings
    () =
  ()

let encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings__font
    ?password_param ?username ~uri () :
    encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings__font
    =
  { password_param; uri; username }

let encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings
    ?alignment ?background_color ?background_opacity ?font_color
    ?font_opacity ?font_resolution ?font_size ?outline_size
    ?shadow_color ?shadow_opacity ?shadow_x_offset ?shadow_y_offset
    ?x_position ?y_position ~outline_color ~teletext_grid_control
    ~font () :
    encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings
    =
  {
    alignment;
    background_color;
    background_opacity;
    font_color;
    font_opacity;
    font_resolution;
    font_size;
    outline_color;
    outline_size;
    shadow_color;
    shadow_opacity;
    shadow_x_offset;
    shadow_y_offset;
    teletext_grid_control;
    x_position;
    y_position;
    font;
  }

let encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings__font
    ?password_param ?username ~uri () :
    encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings__font
    =
  { password_param; uri; username }

let encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings
    ?alignment ?background_color ?background_opacity ?font_color
    ?font_opacity ?font_resolution ?font_size ?outline_color
    ?outline_size ?shadow_color ?shadow_opacity ?shadow_x_offset
    ?shadow_y_offset ?teletext_grid_control ?x_position ?y_position
    ~font () :
    encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings
    =
  {
    alignment;
    background_color;
    background_opacity;
    font_color;
    font_opacity;
    font_resolution;
    font_size;
    outline_color;
    outline_size;
    shadow_color;
    shadow_opacity;
    shadow_x_offset;
    shadow_y_offset;
    teletext_grid_control;
    x_position;
    y_position;
    font;
  }

let encoder_settings__caption_descriptions__destination_settings__ebu_tt_d_destination_settings
    ?copyright_holder ?fill_line_gap ?font_family ?style_control () :
    encoder_settings__caption_descriptions__destination_settings__ebu_tt_d_destination_settings
    =
  { copyright_holder; fill_line_gap; font_family; style_control }

let encoder_settings__caption_descriptions__destination_settings__embedded_destination_settings
    () =
  ()

let encoder_settings__caption_descriptions__destination_settings__embedded_plus_scte20_destination_settings
    () =
  ()

let encoder_settings__caption_descriptions__destination_settings__rtmp_caption_info_destination_settings
    () =
  ()

let encoder_settings__caption_descriptions__destination_settings__scte20_plus_embedded_destination_settings
    () =
  ()

let encoder_settings__caption_descriptions__destination_settings__scte27_destination_settings
    () =
  ()

let encoder_settings__caption_descriptions__destination_settings__smpte_tt_destination_settings
    () =
  ()

let encoder_settings__caption_descriptions__destination_settings__teletext_destination_settings
    () =
  ()

let encoder_settings__caption_descriptions__destination_settings__ttml_destination_settings
    ~style_control () :
    encoder_settings__caption_descriptions__destination_settings__ttml_destination_settings
    =
  { style_control }

let encoder_settings__caption_descriptions__destination_settings__webvtt_destination_settings
    ~style_control () :
    encoder_settings__caption_descriptions__destination_settings__webvtt_destination_settings
    =
  { style_control }

let encoder_settings__caption_descriptions__destination_settings
    ~arib_destination_settings ~burn_in_destination_settings
    ~dvb_sub_destination_settings ~ebu_tt_d_destination_settings
    ~embedded_destination_settings
    ~embedded_plus_scte20_destination_settings
    ~rtmp_caption_info_destination_settings
    ~scte20_plus_embedded_destination_settings
    ~scte27_destination_settings ~smpte_tt_destination_settings
    ~teletext_destination_settings ~ttml_destination_settings
    ~webvtt_destination_settings () :
    encoder_settings__caption_descriptions__destination_settings =
  {
    arib_destination_settings;
    burn_in_destination_settings;
    dvb_sub_destination_settings;
    ebu_tt_d_destination_settings;
    embedded_destination_settings;
    embedded_plus_scte20_destination_settings;
    rtmp_caption_info_destination_settings;
    scte20_plus_embedded_destination_settings;
    scte27_destination_settings;
    smpte_tt_destination_settings;
    teletext_destination_settings;
    ttml_destination_settings;
    webvtt_destination_settings;
  }

let encoder_settings__caption_descriptions ?accessibility
    ?language_code ?language_description ~caption_selector_name ~name
    ~destination_settings () : encoder_settings__caption_descriptions
    =
  {
    accessibility;
    caption_selector_name;
    language_code;
    language_description;
    name;
    destination_settings;
  }

let encoder_settings__global_configuration__input_loss_behavior__input_loss_image_slate
    ?password_param ?username ~uri () :
    encoder_settings__global_configuration__input_loss_behavior__input_loss_image_slate
    =
  { password_param; uri; username }

let encoder_settings__global_configuration__input_loss_behavior
    ?black_frame_msec ?input_loss_image_color ?input_loss_image_type
    ?repeat_frame_msec ~input_loss_image_slate () :
    encoder_settings__global_configuration__input_loss_behavior =
  {
    black_frame_msec;
    input_loss_image_color;
    input_loss_image_type;
    repeat_frame_msec;
    input_loss_image_slate;
  }

let encoder_settings__global_configuration ?initial_audio_gain
    ?input_end_action ?output_locking_mode ?output_timing_source
    ?support_low_framerate_inputs ~input_loss_behavior () :
    encoder_settings__global_configuration =
  {
    initial_audio_gain;
    input_end_action;
    output_locking_mode;
    output_timing_source;
    support_low_framerate_inputs;
    input_loss_behavior;
  }

let encoder_settings__motion_graphics_configuration__motion_graphics_settings__html_motion_graphics_settings
    () =
  ()

let encoder_settings__motion_graphics_configuration__motion_graphics_settings
    ~html_motion_graphics_settings () :
    encoder_settings__motion_graphics_configuration__motion_graphics_settings
    =
  { html_motion_graphics_settings }

let encoder_settings__motion_graphics_configuration
    ?motion_graphics_insertion ~motion_graphics_settings () :
    encoder_settings__motion_graphics_configuration =
  { motion_graphics_insertion; motion_graphics_settings }

let encoder_settings__nielsen_configuration ?distributor_id
    ?nielsen_pcm_to_id3_tagging () :
    encoder_settings__nielsen_configuration =
  { distributor_id; nielsen_pcm_to_id3_tagging }

let encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings__archive_s3_settings
    ?canned_acl () :
    encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings__archive_s3_settings
    =
  { canned_acl }

let encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings
    ~archive_s3_settings () :
    encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings
    =
  { archive_s3_settings }

let encoder_settings__output_groups__output_group_settings__archive_group_settings__destination
    ~destination_ref_id () :
    encoder_settings__output_groups__output_group_settings__archive_group_settings__destination
    =
  { destination_ref_id }

let encoder_settings__output_groups__output_group_settings__archive_group_settings
    ?rollover_interval ~archive_cdn_settings ~destination () :
    encoder_settings__output_groups__output_group_settings__archive_group_settings
    =
  { rollover_interval; archive_cdn_settings; destination }

let encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__destination
    ~destination_ref_id () :
    encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__destination
    =
  { destination_ref_id }

let encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings__frame_capture_s3_settings
    ?canned_acl () :
    encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings__frame_capture_s3_settings
    =
  { canned_acl }

let encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings
    ~frame_capture_s3_settings () :
    encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings
    =
  { frame_capture_s3_settings }

let encoder_settings__output_groups__output_group_settings__frame_capture_group_settings
    ~destination ~frame_capture_cdn_settings () :
    encoder_settings__output_groups__output_group_settings__frame_capture_group_settings
    =
  { destination; frame_capture_cdn_settings }

let encoder_settings__output_groups__output_group_settings__hls_group_settings__caption_language_mappings
    ~caption_channel ~language_code ~language_description () :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__caption_language_mappings
    =
  { caption_channel; language_code; language_description }

let encoder_settings__output_groups__output_group_settings__hls_group_settings__destination
    ~destination_ref_id () :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__destination
    =
  { destination_ref_id }

let encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_akamai_settings
    ?connection_retry_interval ?filecache_duration
    ?http_transfer_mode ?num_retries ?restart_delay ?salt ?token () :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_akamai_settings
    =
  {
    connection_retry_interval;
    filecache_duration;
    http_transfer_mode;
    num_retries;
    restart_delay;
    salt;
    token;
  }

let encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_basic_put_settings
    ?connection_retry_interval ?filecache_duration ?num_retries
    ?restart_delay () :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_basic_put_settings
    =
  {
    connection_retry_interval;
    filecache_duration;
    num_retries;
    restart_delay;
  }

let encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_media_store_settings
    ?connection_retry_interval ?filecache_duration
    ?media_store_storage_class ?num_retries ?restart_delay () :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_media_store_settings
    =
  {
    connection_retry_interval;
    filecache_duration;
    media_store_storage_class;
    num_retries;
    restart_delay;
  }

let encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_s3_settings
    ?canned_acl () :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_s3_settings
    =
  { canned_acl }

let encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_webdav_settings
    ?connection_retry_interval ?filecache_duration
    ?http_transfer_mode ?num_retries ?restart_delay () :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_webdav_settings
    =
  {
    connection_retry_interval;
    filecache_duration;
    http_transfer_mode;
    num_retries;
    restart_delay;
  }

let encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings
    ~hls_akamai_settings ~hls_basic_put_settings
    ~hls_media_store_settings ~hls_s3_settings ~hls_webdav_settings
    () :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings
    =
  {
    hls_akamai_settings;
    hls_basic_put_settings;
    hls_media_store_settings;
    hls_s3_settings;
    hls_webdav_settings;
  }

let encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings__key_provider_server
    ?password_param ?username ~uri () :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings__key_provider_server
    =
  { password_param; uri; username }

let encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings
    ~static_key_value ~key_provider_server () :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings
    =
  { static_key_value; key_provider_server }

let encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings
    ~static_key_settings () :
    encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings
    =
  { static_key_settings }

let encoder_settings__output_groups__output_group_settings__hls_group_settings
    ?ad_markers ?base_url_content ?base_url_content1
    ?base_url_manifest ?base_url_manifest1 ?caption_language_setting
    ?client_cache ?codec_specification ?constant_iv
    ?directory_structure ?discontinuity_tags ?encryption_type
    ?hls_id3_segment_tagging ?iframe_only_playlists
    ?incomplete_segment_behavior ?index_n_segments ?input_loss_action
    ?iv_in_manifest ?iv_source ?keep_segments ?key_format
    ?key_format_versions ?manifest_compression
    ?manifest_duration_format ?min_segment_length ?mode
    ?output_selection ?program_date_time ?program_date_time_clock
    ?program_date_time_period ?redundant_manifest ?segment_length
    ?segments_per_subdirectory ?stream_inf_resolution
    ?timed_metadata_id3_frame ?timed_metadata_id3_period
    ?timestamp_delta_milliseconds ?ts_file_mode
    ~caption_language_mappings ~destination ~hls_cdn_settings
    ~key_provider_settings () :
    encoder_settings__output_groups__output_group_settings__hls_group_settings
    =
  {
    ad_markers;
    base_url_content;
    base_url_content1;
    base_url_manifest;
    base_url_manifest1;
    caption_language_setting;
    client_cache;
    codec_specification;
    constant_iv;
    directory_structure;
    discontinuity_tags;
    encryption_type;
    hls_id3_segment_tagging;
    iframe_only_playlists;
    incomplete_segment_behavior;
    index_n_segments;
    input_loss_action;
    iv_in_manifest;
    iv_source;
    keep_segments;
    key_format;
    key_format_versions;
    manifest_compression;
    manifest_duration_format;
    min_segment_length;
    mode;
    output_selection;
    program_date_time;
    program_date_time_clock;
    program_date_time_period;
    redundant_manifest;
    segment_length;
    segments_per_subdirectory;
    stream_inf_resolution;
    timed_metadata_id3_frame;
    timed_metadata_id3_period;
    timestamp_delta_milliseconds;
    ts_file_mode;
    caption_language_mappings;
    destination;
    hls_cdn_settings;
    key_provider_settings;
  }

let encoder_settings__output_groups__output_group_settings__media_package_group_settings__destination
    ~destination_ref_id () :
    encoder_settings__output_groups__output_group_settings__media_package_group_settings__destination
    =
  { destination_ref_id }

let encoder_settings__output_groups__output_group_settings__media_package_group_settings
    ~destination () :
    encoder_settings__output_groups__output_group_settings__media_package_group_settings
    =
  { destination }

let encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings__destination
    ~destination_ref_id () :
    encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings__destination
    =
  { destination_ref_id }

let encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings
    ?acquisition_point_id ?audio_only_timecode_control
    ?certificate_mode ?connection_retry_interval ?event_id
    ?event_id_mode ?event_stop_behavior ?filecache_duration
    ?fragment_length ?input_loss_action ?num_retries ?restart_delay
    ?segmentation_mode ?send_delay_ms ?sparse_track_type
    ?stream_manifest_behavior ?timestamp_offset
    ?timestamp_offset_mode ~destination () :
    encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings
    =
  {
    acquisition_point_id;
    audio_only_timecode_control;
    certificate_mode;
    connection_retry_interval;
    event_id;
    event_id_mode;
    event_stop_behavior;
    filecache_duration;
    fragment_length;
    input_loss_action;
    num_retries;
    restart_delay;
    segmentation_mode;
    send_delay_ms;
    sparse_track_type;
    stream_manifest_behavior;
    timestamp_offset;
    timestamp_offset_mode;
    destination;
  }

let encoder_settings__output_groups__output_group_settings__multiplex_group_settings
    () =
  ()

let encoder_settings__output_groups__output_group_settings__rtmp_group_settings
    ?ad_markers ?authentication_scheme ?cache_full_behavior
    ?cache_length ?caption_data ?input_loss_action ?restart_delay ()
    :
    encoder_settings__output_groups__output_group_settings__rtmp_group_settings
    =
  {
    ad_markers;
    authentication_scheme;
    cache_full_behavior;
    cache_length;
    caption_data;
    input_loss_action;
    restart_delay;
  }

let encoder_settings__output_groups__output_group_settings__udp_group_settings
    ?input_loss_action ?timed_metadata_id3_frame
    ?timed_metadata_id3_period () :
    encoder_settings__output_groups__output_group_settings__udp_group_settings
    =
  {
    input_loss_action;
    timed_metadata_id3_frame;
    timed_metadata_id3_period;
  }

let encoder_settings__output_groups__output_group_settings
    ~archive_group_settings ~frame_capture_group_settings
    ~hls_group_settings ~media_package_group_settings
    ~ms_smooth_group_settings ~multiplex_group_settings
    ~rtmp_group_settings ~udp_group_settings () :
    encoder_settings__output_groups__output_group_settings =
  {
    archive_group_settings;
    frame_capture_group_settings;
    hls_group_settings;
    media_package_group_settings;
    ms_smooth_group_settings;
    multiplex_group_settings;
    rtmp_group_settings;
    udp_group_settings;
  }

let encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_nit_settings
    ?rep_interval ~network_id ~network_name () :
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_nit_settings
    =
  { network_id; network_name; rep_interval }

let encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_sdt_settings
    ?output_sdt ?rep_interval ?service_name ?service_provider_name ()
    :
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_sdt_settings
    =
  { output_sdt; rep_interval; service_name; service_provider_name }

let encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_tdt_settings
    ?rep_interval () :
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_tdt_settings
    =
  { rep_interval }

let encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings
    ?absent_input_audio_behavior ?arib ?arib_captions_pid
    ?arib_captions_pid_control ?audio_buffer_model
    ?audio_frames_per_pes ?audio_pids ?audio_stream_type ?bitrate
    ?buffer_model ?cc_descriptor ?dvb_sub_pids ?dvb_teletext_pid
    ?ebif ?ebp_audio_interval ?ebp_lookahead_ms ?ebp_placement
    ?ecm_pid ?es_rate_in_pes ?etv_platform_pid ?etv_signal_pid
    ?fragment_time ?klv ?klv_data_pids ?nielsen_id3_behavior
    ?null_packet_bitrate ?pat_interval ?pcr_control ?pcr_period
    ?pcr_pid ?pmt_interval ?pmt_pid ?program_num ?rate_mode
    ?scte27_pids ?scte35_control ?scte35_pid ?segmentation_markers
    ?segmentation_style ?segmentation_time ?timed_metadata_behavior
    ?timed_metadata_pid ?transport_stream_id ?video_pid
    ~dvb_nit_settings ~dvb_sdt_settings ~dvb_tdt_settings () :
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings
    =
  {
    absent_input_audio_behavior;
    arib;
    arib_captions_pid;
    arib_captions_pid_control;
    audio_buffer_model;
    audio_frames_per_pes;
    audio_pids;
    audio_stream_type;
    bitrate;
    buffer_model;
    cc_descriptor;
    dvb_sub_pids;
    dvb_teletext_pid;
    ebif;
    ebp_audio_interval;
    ebp_lookahead_ms;
    ebp_placement;
    ecm_pid;
    es_rate_in_pes;
    etv_platform_pid;
    etv_signal_pid;
    fragment_time;
    klv;
    klv_data_pids;
    nielsen_id3_behavior;
    null_packet_bitrate;
    pat_interval;
    pcr_control;
    pcr_period;
    pcr_pid;
    pmt_interval;
    pmt_pid;
    program_num;
    rate_mode;
    scte27_pids;
    scte35_control;
    scte35_pid;
    segmentation_markers;
    segmentation_style;
    segmentation_time;
    timed_metadata_behavior;
    timed_metadata_pid;
    transport_stream_id;
    video_pid;
    dvb_nit_settings;
    dvb_sdt_settings;
    dvb_tdt_settings;
  }

let encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__raw_settings
    () =
  ()

let encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings
    ~m2ts_settings ~raw_settings () :
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings
    =
  { m2ts_settings; raw_settings }

let encoder_settings__output_groups__outputs__output_settings__archive_output_settings
    ?extension ?name_modifier ~container_settings () :
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings
    =
  { extension; name_modifier; container_settings }

let encoder_settings__output_groups__outputs__output_settings__frame_capture_output_settings
    ?name_modifier () :
    encoder_settings__output_groups__outputs__output_settings__frame_capture_output_settings
    =
  { name_modifier }

let encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings__audio_only_image
    ?password_param ?username ~uri () :
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings__audio_only_image
    =
  { password_param; uri; username }

let encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings
    ?audio_group_id ?audio_track_type ?segment_type ~audio_only_image
    () :
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings
    =
  {
    audio_group_id;
    audio_track_type;
    segment_type;
    audio_only_image;
  }

let encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__fmp4_hls_settings
    ?audio_rendition_sets ?nielsen_id3_behavior
    ?timed_metadata_behavior () :
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__fmp4_hls_settings
    =
  {
    audio_rendition_sets;
    nielsen_id3_behavior;
    timed_metadata_behavior;
  }

let encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__frame_capture_hls_settings
    () =
  ()

let encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings__m3u8_settings
    ?audio_frames_per_pes ?audio_pids ?ecm_pid ?nielsen_id3_behavior
    ?pat_interval ?pcr_control ?pcr_period ?pcr_pid ?pmt_interval
    ?pmt_pid ?program_num ?scte35_behavior ?scte35_pid
    ?timed_metadata_behavior ?timed_metadata_pid ?transport_stream_id
    ?video_pid () :
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings__m3u8_settings
    =
  {
    audio_frames_per_pes;
    audio_pids;
    ecm_pid;
    nielsen_id3_behavior;
    pat_interval;
    pcr_control;
    pcr_period;
    pcr_pid;
    pmt_interval;
    pmt_pid;
    program_num;
    scte35_behavior;
    scte35_pid;
    timed_metadata_behavior;
    timed_metadata_pid;
    transport_stream_id;
    video_pid;
  }

let encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings
    ?audio_rendition_sets ~m3u8_settings () :
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings
    =
  { audio_rendition_sets; m3u8_settings }

let encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings
    ~audio_only_hls_settings ~fmp4_hls_settings
    ~frame_capture_hls_settings ~standard_hls_settings () :
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings
    =
  {
    audio_only_hls_settings;
    fmp4_hls_settings;
    frame_capture_hls_settings;
    standard_hls_settings;
  }

let encoder_settings__output_groups__outputs__output_settings__hls_output_settings
    ?h265_packaging_type ?name_modifier ?segment_modifier
    ~hls_settings () :
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings
    =
  {
    h265_packaging_type;
    name_modifier;
    segment_modifier;
    hls_settings;
  }

let encoder_settings__output_groups__outputs__output_settings__media_package_output_settings
    () =
  ()

let encoder_settings__output_groups__outputs__output_settings__ms_smooth_output_settings
    ?h265_packaging_type ?name_modifier () :
    encoder_settings__output_groups__outputs__output_settings__ms_smooth_output_settings
    =
  { h265_packaging_type; name_modifier }

let encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings__destination
    ~destination_ref_id () :
    encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings__destination
    =
  { destination_ref_id }

let encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings
    ~destination () :
    encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings
    =
  { destination }

let encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings__destination
    ~destination_ref_id () :
    encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings__destination
    =
  { destination_ref_id }

let encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings
    ?certificate_mode ?connection_retry_interval ?num_retries
    ~destination () :
    encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings
    =
  {
    certificate_mode;
    connection_retry_interval;
    num_retries;
    destination;
  }

let encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_nit_settings
    ?rep_interval ~network_id ~network_name () :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_nit_settings
    =
  { network_id; network_name; rep_interval }

let encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_sdt_settings
    ?output_sdt ?rep_interval ?service_name ?service_provider_name ()
    :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_sdt_settings
    =
  { output_sdt; rep_interval; service_name; service_provider_name }

let encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_tdt_settings
    ?rep_interval () :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_tdt_settings
    =
  { rep_interval }

let encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings
    ?absent_input_audio_behavior ?arib ?arib_captions_pid
    ?arib_captions_pid_control ?audio_buffer_model
    ?audio_frames_per_pes ?audio_pids ?audio_stream_type ?bitrate
    ?buffer_model ?cc_descriptor ?dvb_sub_pids ?dvb_teletext_pid
    ?ebif ?ebp_audio_interval ?ebp_lookahead_ms ?ebp_placement
    ?ecm_pid ?es_rate_in_pes ?etv_platform_pid ?etv_signal_pid
    ?fragment_time ?klv ?klv_data_pids ?nielsen_id3_behavior
    ?null_packet_bitrate ?pat_interval ?pcr_control ?pcr_period
    ?pcr_pid ?pmt_interval ?pmt_pid ?program_num ?rate_mode
    ?scte27_pids ?scte35_control ?scte35_pid ?segmentation_markers
    ?segmentation_style ?segmentation_time ?timed_metadata_behavior
    ?timed_metadata_pid ?transport_stream_id ?video_pid
    ~dvb_nit_settings ~dvb_sdt_settings ~dvb_tdt_settings () :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings
    =
  {
    absent_input_audio_behavior;
    arib;
    arib_captions_pid;
    arib_captions_pid_control;
    audio_buffer_model;
    audio_frames_per_pes;
    audio_pids;
    audio_stream_type;
    bitrate;
    buffer_model;
    cc_descriptor;
    dvb_sub_pids;
    dvb_teletext_pid;
    ebif;
    ebp_audio_interval;
    ebp_lookahead_ms;
    ebp_placement;
    ecm_pid;
    es_rate_in_pes;
    etv_platform_pid;
    etv_signal_pid;
    fragment_time;
    klv;
    klv_data_pids;
    nielsen_id3_behavior;
    null_packet_bitrate;
    pat_interval;
    pcr_control;
    pcr_period;
    pcr_pid;
    pmt_interval;
    pmt_pid;
    program_num;
    rate_mode;
    scte27_pids;
    scte35_control;
    scte35_pid;
    segmentation_markers;
    segmentation_style;
    segmentation_time;
    timed_metadata_behavior;
    timed_metadata_pid;
    transport_stream_id;
    video_pid;
    dvb_nit_settings;
    dvb_sdt_settings;
    dvb_tdt_settings;
  }

let encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings
    ~m2ts_settings () :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings
    =
  { m2ts_settings }

let encoder_settings__output_groups__outputs__output_settings__udp_output_settings__destination
    ~destination_ref_id () :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__destination
    =
  { destination_ref_id }

let encoder_settings__output_groups__outputs__output_settings__udp_output_settings__fec_output_settings
    ?column_depth ?include_fec ?row_length () :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__fec_output_settings
    =
  { column_depth; include_fec; row_length }

let encoder_settings__output_groups__outputs__output_settings__udp_output_settings
    ?buffer_msec ~container_settings ~destination
    ~fec_output_settings () :
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings
    =
  {
    buffer_msec;
    container_settings;
    destination;
    fec_output_settings;
  }

let encoder_settings__output_groups__outputs__output_settings
    ~archive_output_settings ~frame_capture_output_settings
    ~hls_output_settings ~media_package_output_settings
    ~ms_smooth_output_settings ~multiplex_output_settings
    ~rtmp_output_settings ~udp_output_settings () :
    encoder_settings__output_groups__outputs__output_settings =
  {
    archive_output_settings;
    frame_capture_output_settings;
    hls_output_settings;
    media_package_output_settings;
    ms_smooth_output_settings;
    multiplex_output_settings;
    rtmp_output_settings;
    udp_output_settings;
  }

let encoder_settings__output_groups__outputs ?audio_description_names
    ?caption_description_names ?output_name ?video_description_name
    ~output_settings () : encoder_settings__output_groups__outputs =
  {
    audio_description_names;
    caption_description_names;
    output_name;
    video_description_name;
    output_settings;
  }

let encoder_settings__output_groups ?name ~output_group_settings
    ~outputs () : encoder_settings__output_groups =
  { name; output_group_settings; outputs }

let encoder_settings__timecode_config ?sync_threshold ~source () :
    encoder_settings__timecode_config =
  { source; sync_threshold }

let encoder_settings__video_descriptions__codec_settings__frame_capture_settings
    ?capture_interval ?capture_interval_units () :
    encoder_settings__video_descriptions__codec_settings__frame_capture_settings
    =
  { capture_interval; capture_interval_units }

let encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings__temporal_filter_settings
    ?post_filter_sharpening ?strength () :
    encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings__temporal_filter_settings
    =
  { post_filter_sharpening; strength }

let encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings
    ~temporal_filter_settings () :
    encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings
    =
  { temporal_filter_settings }

let encoder_settings__video_descriptions__codec_settings__h264_settings
    ?adaptive_quantization ?afd_signaling ?bitrate ?buf_fill_pct
    ?buf_size ?color_metadata ?entropy_encoding ?fixed_afd
    ?flicker_aq ?force_field_pictures ?framerate_control
    ?framerate_denominator ?framerate_numerator ?gop_b_reference
    ?gop_closed_cadence ?gop_num_b_frames ?gop_size ?gop_size_units
    ?level ?look_ahead_rate_control ?max_bitrate ?min_i_interval
    ?num_ref_frames ?par_control ?par_denominator ?par_numerator
    ?profile ?quality_level ?qvbr_quality_level ?rate_control_mode
    ?scan_type ?scene_change_detect ?slices ?softness ?spatial_aq
    ?subgop_length ?syntax ?temporal_aq ?timecode_insertion
    ~filter_settings () :
    encoder_settings__video_descriptions__codec_settings__h264_settings
    =
  {
    adaptive_quantization;
    afd_signaling;
    bitrate;
    buf_fill_pct;
    buf_size;
    color_metadata;
    entropy_encoding;
    fixed_afd;
    flicker_aq;
    force_field_pictures;
    framerate_control;
    framerate_denominator;
    framerate_numerator;
    gop_b_reference;
    gop_closed_cadence;
    gop_num_b_frames;
    gop_size;
    gop_size_units;
    level;
    look_ahead_rate_control;
    max_bitrate;
    min_i_interval;
    num_ref_frames;
    par_control;
    par_denominator;
    par_numerator;
    profile;
    quality_level;
    qvbr_quality_level;
    rate_control_mode;
    scan_type;
    scene_change_detect;
    slices;
    softness;
    spatial_aq;
    subgop_length;
    syntax;
    temporal_aq;
    timecode_insertion;
    filter_settings;
  }

let encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__color_space_passthrough_settings
    () =
  ()

let encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__dolby_vision81_settings
    () =
  ()

let encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__hdr10_settings
    ?max_cll ?max_fall () :
    encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__hdr10_settings
    =
  { max_cll; max_fall }

let encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec601_settings
    () =
  ()

let encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec709_settings
    () =
  ()

let encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings
    ~color_space_passthrough_settings ~dolby_vision81_settings
    ~hdr10_settings ~rec601_settings ~rec709_settings () :
    encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings
    =
  {
    color_space_passthrough_settings;
    dolby_vision81_settings;
    hdr10_settings;
    rec601_settings;
    rec709_settings;
  }

let encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings__temporal_filter_settings
    ?post_filter_sharpening ?strength () :
    encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings__temporal_filter_settings
    =
  { post_filter_sharpening; strength }

let encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings
    ~temporal_filter_settings () :
    encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings
    =
  { temporal_filter_settings }

let encoder_settings__video_descriptions__codec_settings__h265_settings__timecode_burnin_settings
    ?prefix ?timecode_burnin_font_size ?timecode_burnin_position () :
    encoder_settings__video_descriptions__codec_settings__h265_settings__timecode_burnin_settings
    =
  { prefix; timecode_burnin_font_size; timecode_burnin_position }

let encoder_settings__video_descriptions__codec_settings__h265_settings
    ?adaptive_quantization ?afd_signaling
    ?alternative_transfer_function ?buf_size ?color_metadata
    ?fixed_afd ?flicker_aq ?gop_closed_cadence ?gop_size
    ?gop_size_units ?level ?look_ahead_rate_control ?max_bitrate
    ?min_i_interval ?par_denominator ?par_numerator ?profile
    ?qvbr_quality_level ?rate_control_mode ?scan_type
    ?scene_change_detect ?slices ?tier ?timecode_insertion ~bitrate
    ~framerate_denominator ~framerate_numerator ~color_space_settings
    ~filter_settings ~timecode_burnin_settings () :
    encoder_settings__video_descriptions__codec_settings__h265_settings
    =
  {
    adaptive_quantization;
    afd_signaling;
    alternative_transfer_function;
    bitrate;
    buf_size;
    color_metadata;
    fixed_afd;
    flicker_aq;
    framerate_denominator;
    framerate_numerator;
    gop_closed_cadence;
    gop_size;
    gop_size_units;
    level;
    look_ahead_rate_control;
    max_bitrate;
    min_i_interval;
    par_denominator;
    par_numerator;
    profile;
    qvbr_quality_level;
    rate_control_mode;
    scan_type;
    scene_change_detect;
    slices;
    tier;
    timecode_insertion;
    color_space_settings;
    filter_settings;
    timecode_burnin_settings;
  }

let encoder_settings__video_descriptions__codec_settings
    ~frame_capture_settings ~h264_settings ~h265_settings () :
    encoder_settings__video_descriptions__codec_settings =
  { frame_capture_settings; h264_settings; h265_settings }

let encoder_settings__video_descriptions ?height ?respond_to_afd
    ?scaling_behavior ?sharpness ?width ~name ~codec_settings () :
    encoder_settings__video_descriptions =
  {
    height;
    name;
    respond_to_afd;
    scaling_behavior;
    sharpness;
    width;
    codec_settings;
  }

let encoder_settings ~audio_descriptions ~avail_blanking
    ~caption_descriptions ~global_configuration
    ~motion_graphics_configuration ~nielsen_configuration
    ~output_groups ~timecode_config ~video_descriptions () :
    encoder_settings =
  {
    audio_descriptions;
    avail_blanking;
    caption_descriptions;
    global_configuration;
    motion_graphics_configuration;
    nielsen_configuration;
    output_groups;
    timecode_config;
    video_descriptions;
  }

let input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__audio_silence_settings
    ?audio_silence_threshold_msec ~audio_selector_name () :
    input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__audio_silence_settings
    =
  { audio_selector_name; audio_silence_threshold_msec }

let input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__input_loss_settings
    ?input_loss_threshold_msec () :
    input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__input_loss_settings
    =
  { input_loss_threshold_msec }

let input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__video_black_settings
    ?black_detect_threshold ?video_black_threshold_msec () :
    input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__video_black_settings
    =
  { black_detect_threshold; video_black_threshold_msec }

let input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings
    ~audio_silence_settings ~input_loss_settings
    ~video_black_settings () :
    input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings
    =
  {
    audio_silence_settings;
    input_loss_settings;
    video_black_settings;
  }

let input_attachments__automatic_input_failover_settings__failover_condition
    ~failover_condition_settings () :
    input_attachments__automatic_input_failover_settings__failover_condition
    =
  { failover_condition_settings }

let input_attachments__automatic_input_failover_settings
    ?error_clear_time_msec ?input_preference ~secondary_input_id
    ~failover_condition () :
    input_attachments__automatic_input_failover_settings =
  {
    error_clear_time_msec;
    input_preference;
    secondary_input_id;
    failover_condition;
  }

let input_attachments__input_settings__audio_selector__selector_settings__audio_hls_rendition_selection
    ~group_id ~name () :
    input_attachments__input_settings__audio_selector__selector_settings__audio_hls_rendition_selection
    =
  { group_id; name }

let input_attachments__input_settings__audio_selector__selector_settings__audio_language_selection
    ?language_selection_policy ~language_code () :
    input_attachments__input_settings__audio_selector__selector_settings__audio_language_selection
    =
  { language_code; language_selection_policy }

let input_attachments__input_settings__audio_selector__selector_settings__audio_pid_selection
    ~pid () :
    input_attachments__input_settings__audio_selector__selector_settings__audio_pid_selection
    =
  { pid }

let input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__dolby_e_decode
    ~program_selection () :
    input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__dolby_e_decode
    =
  { program_selection }

let input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__tracks
    ~track () :
    input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__tracks
    =
  { track }

let input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection
    ~dolby_e_decode ~tracks () :
    input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection
    =
  { dolby_e_decode; tracks }

let input_attachments__input_settings__audio_selector__selector_settings
    ~audio_hls_rendition_selection ~audio_language_selection
    ~audio_pid_selection ~audio_track_selection () :
    input_attachments__input_settings__audio_selector__selector_settings
    =
  {
    audio_hls_rendition_selection;
    audio_language_selection;
    audio_pid_selection;
    audio_track_selection;
  }

let input_attachments__input_settings__audio_selector ~name
    ~selector_settings () :
    input_attachments__input_settings__audio_selector =
  { name; selector_settings }

let input_attachments__input_settings__caption_selector__selector_settings__ancillary_source_settings
    ?source_ancillary_channel_number () :
    input_attachments__input_settings__caption_selector__selector_settings__ancillary_source_settings
    =
  { source_ancillary_channel_number }

let input_attachments__input_settings__caption_selector__selector_settings__arib_source_settings
    () =
  ()

let input_attachments__input_settings__caption_selector__selector_settings__dvb_sub_source_settings
    ?ocr_language ?pid () :
    input_attachments__input_settings__caption_selector__selector_settings__dvb_sub_source_settings
    =
  { ocr_language; pid }

let input_attachments__input_settings__caption_selector__selector_settings__embedded_source_settings
    ?convert_608_to_708 ?scte20_detection ?source_608_channel_number
    () :
    input_attachments__input_settings__caption_selector__selector_settings__embedded_source_settings
    =
  { convert_608_to_708; scte20_detection; source_608_channel_number }

let input_attachments__input_settings__caption_selector__selector_settings__scte20_source_settings
    ?convert_608_to_708 ?source_608_channel_number () :
    input_attachments__input_settings__caption_selector__selector_settings__scte20_source_settings
    =
  { convert_608_to_708; source_608_channel_number }

let input_attachments__input_settings__caption_selector__selector_settings__scte27_source_settings
    ?ocr_language ?pid () :
    input_attachments__input_settings__caption_selector__selector_settings__scte27_source_settings
    =
  { ocr_language; pid }

let input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings__output_rectangle
    ~height ~left_offset ~top_offset ~width () :
    input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings__output_rectangle
    =
  { height; left_offset; top_offset; width }

let input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings
    ?page_number ~output_rectangle () :
    input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings
    =
  { page_number; output_rectangle }

let input_attachments__input_settings__caption_selector__selector_settings
    ~ancillary_source_settings ~arib_source_settings
    ~dvb_sub_source_settings ~embedded_source_settings
    ~scte20_source_settings ~scte27_source_settings
    ~teletext_source_settings () :
    input_attachments__input_settings__caption_selector__selector_settings
    =
  {
    ancillary_source_settings;
    arib_source_settings;
    dvb_sub_source_settings;
    embedded_source_settings;
    scte20_source_settings;
    scte27_source_settings;
    teletext_source_settings;
  }

let input_attachments__input_settings__caption_selector
    ?language_code ~name ~selector_settings () :
    input_attachments__input_settings__caption_selector =
  { language_code; name; selector_settings }

let input_attachments__input_settings__network_input_settings__hls_input_settings
    ?bandwidth ?buffer_segments ?retries ?retry_interval
    ?scte35_source () :
    input_attachments__input_settings__network_input_settings__hls_input_settings
    =
  {
    bandwidth;
    buffer_segments;
    retries;
    retry_interval;
    scte35_source;
  }

let input_attachments__input_settings__network_input_settings
    ?server_validation ~hls_input_settings () :
    input_attachments__input_settings__network_input_settings =
  { server_validation; hls_input_settings }

let input_attachments__input_settings__video_selector ?color_space
    ?color_space_usage () :
    input_attachments__input_settings__video_selector =
  { color_space; color_space_usage }

let input_attachments__input_settings ?deblock_filter ?denoise_filter
    ?filter_strength ?input_filter ?scte35_pid
    ?smpte2038_data_preference ?source_end_behavior ~audio_selector
    ~caption_selector ~network_input_settings ~video_selector () :
    input_attachments__input_settings =
  {
    deblock_filter;
    denoise_filter;
    filter_strength;
    input_filter;
    scte35_pid;
    smpte2038_data_preference;
    source_end_behavior;
    audio_selector;
    caption_selector;
    network_input_settings;
    video_selector;
  }

let input_attachments ~input_attachment_name ~input_id
    ~automatic_input_failover_settings ~input_settings () :
    input_attachments =
  {
    input_attachment_name;
    input_id;
    automatic_input_failover_settings;
    input_settings;
  }

let input_specification ~codec ~input_resolution ~maximum_bitrate ()
    : input_specification =
  { codec; input_resolution; maximum_bitrate }

let maintenance ~maintenance_day ~maintenance_start_time () :
    maintenance =
  { maintenance_day; maintenance_start_time }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vpc ?security_group_ids ~public_address_allocation_ids
    ~subnet_ids () : vpc =
  { public_address_allocation_ids; security_group_ids; subnet_ids }

let aws_medialive_channel ?id ?log_level ?role_arn ?start_channel
    ?tags ?tags_all ?timeouts ~channel_class ~name
    ~cdi_input_specification ~destinations ~encoder_settings
    ~input_attachments ~input_specification ~maintenance ~vpc () :
    aws_medialive_channel =
  {
    channel_class;
    id;
    log_level;
    name;
    role_arn;
    start_channel;
    tags;
    tags_all;
    cdi_input_specification;
    destinations;
    encoder_settings;
    input_attachments;
    input_specification;
    maintenance;
    timeouts;
    vpc;
  }

type t = {
  arn : string prop;
  channel_class : string prop;
  channel_id : string prop;
  id : string prop;
  log_level : string prop;
  name : string prop;
  role_arn : string prop;
  start_channel : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?log_level ?role_arn ?start_channel ?tags ?tags_all
    ?timeouts ~channel_class ~name ~cdi_input_specification
    ~destinations ~encoder_settings ~input_attachments
    ~input_specification ~maintenance ~vpc __id =
  let __type = "aws_medialive_channel" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       channel_class = Prop.computed __type __id "channel_class";
       channel_id = Prop.computed __type __id "channel_id";
       id = Prop.computed __type __id "id";
       log_level = Prop.computed __type __id "log_level";
       name = Prop.computed __type __id "name";
       role_arn = Prop.computed __type __id "role_arn";
       start_channel = Prop.computed __type __id "start_channel";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_medialive_channel
        (aws_medialive_channel ?id ?log_level ?role_arn
           ?start_channel ?tags ?tags_all ?timeouts ~channel_class
           ~name ~cdi_input_specification ~destinations
           ~encoder_settings ~input_attachments ~input_specification
           ~maintenance ~vpc ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?log_level ?role_arn ?start_channel ?tags
    ?tags_all ?timeouts ~channel_class ~name ~cdi_input_specification
    ~destinations ~encoder_settings ~input_attachments
    ~input_specification ~maintenance ~vpc __id =
  let (r : _ Tf_core.resource) =
    make ?id ?log_level ?role_arn ?start_channel ?tags ?tags_all
      ?timeouts ~channel_class ~name ~cdi_input_specification
      ~destinations ~encoder_settings ~input_attachments
      ~input_specification ~maintenance ~vpc __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

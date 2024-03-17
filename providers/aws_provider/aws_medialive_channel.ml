(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_medialive_channel__cdi_input_specification = {
  resolution : string;  (** resolution *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__cdi_input_specification *)

type aws_medialive_channel__destinations__media_package_settings = {
  channel_id : string;  (** channel_id *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__destinations__media_package_settings *)

type aws_medialive_channel__destinations__multiplex_settings = {
  multiplex_id : string;  (** multiplex_id *)
  program_name : string;  (** program_name *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__destinations__multiplex_settings *)

type aws_medialive_channel__destinations__settings = {
  password_param : string option; [@option]  (** password_param *)
  stream_name : string option; [@option]  (** stream_name *)
  url : string option; [@option]  (** url *)
  username : string option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__destinations__settings *)

type aws_medialive_channel__destinations = {
  id : string;  (** id *)
  media_package_settings :
    aws_medialive_channel__destinations__media_package_settings list;
  multiplex_settings :
    aws_medialive_channel__destinations__multiplex_settings list;
  settings : aws_medialive_channel__destinations__settings list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__destinations *)

type aws_medialive_channel__encoder_settings__audio_descriptions__audio_normalization_settings = {
  algorithm : string option; [@option]  (** algorithm *)
  algorithm_control : string option; [@option]
      (** algorithm_control *)
  target_lkfs : float option; [@option]  (** target_lkfs *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__audio_descriptions__audio_normalization_settings *)

type aws_medialive_channel__encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_cbet_settings = {
  cbet_check_digit_string : string;  (** cbet_check_digit_string *)
  cbet_stepaside : string;  (** cbet_stepaside *)
  csid : string;  (** csid *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_cbet_settings *)

type aws_medialive_channel__encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_naes_ii_nw_settings = {
  check_digit_string : string;  (** check_digit_string *)
  sid : float;  (** sid *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_naes_ii_nw_settings *)

type aws_medialive_channel__encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings = {
  nielsen_distribution_type : string option; [@option]
      (** nielsen_distribution_type *)
  nielsen_cbet_settings :
    aws_medialive_channel__encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_cbet_settings
    list;
  nielsen_naes_ii_nw_settings :
    aws_medialive_channel__encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_naes_ii_nw_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings *)

type aws_medialive_channel__encoder_settings__audio_descriptions__audio_watermark_settings = {
  nielsen_watermarks_settings :
    aws_medialive_channel__encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__audio_descriptions__audio_watermark_settings *)

type aws_medialive_channel__encoder_settings__audio_descriptions__codec_settings__aac_settings = {
  bitrate : float option; [@option]  (** bitrate *)
  coding_mode : string option; [@option]  (** coding_mode *)
  input_type : string option; [@option]  (** input_type *)
  profile : string option; [@option]  (** profile *)
  rate_control_mode : string option; [@option]
      (** rate_control_mode *)
  raw_format : string option; [@option]  (** raw_format *)
  sample_rate : float option; [@option]  (** sample_rate *)
  spec : string option; [@option]  (** spec *)
  vbr_quality : string option; [@option]  (** vbr_quality *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__audio_descriptions__codec_settings__aac_settings *)

type aws_medialive_channel__encoder_settings__audio_descriptions__codec_settings__ac3_settings = {
  bitrate : float option; [@option]  (** bitrate *)
  bitstream_mode : string option; [@option]  (** bitstream_mode *)
  coding_mode : string option; [@option]  (** coding_mode *)
  dialnorm : float option; [@option]  (** dialnorm *)
  drc_profile : string option; [@option]  (** drc_profile *)
  lfe_filter : string option; [@option]  (** lfe_filter *)
  metadata_control : string option; [@option]  (** metadata_control *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__audio_descriptions__codec_settings__ac3_settings *)

type aws_medialive_channel__encoder_settings__audio_descriptions__codec_settings__eac3_atmos_settings = {
  bitrate : float option; [@option]  (** bitrate *)
  coding_mode : string option; [@option]  (** coding_mode *)
  dialnorm : float option; [@option]  (** dialnorm *)
  drc_line : string option; [@option]  (** drc_line *)
  drc_rf : string option; [@option]  (** drc_rf *)
  height_trim : float option; [@option]  (** height_trim *)
  surround_trim : float option; [@option]  (** surround_trim *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__audio_descriptions__codec_settings__eac3_atmos_settings *)

type aws_medialive_channel__encoder_settings__audio_descriptions__codec_settings__eac3_settings = {
  attenuation_control : string option; [@option]
      (** attenuation_control *)
  bitrate : float option; [@option]  (** bitrate *)
  bitstream_mode : string option; [@option]  (** bitstream_mode *)
  coding_mode : string option; [@option]  (** coding_mode *)
  dc_filter : string option; [@option]  (** dc_filter *)
  dialnorm : float option; [@option]  (** dialnorm *)
  drc_line : string option; [@option]  (** drc_line *)
  drc_rf : string option; [@option]  (** drc_rf *)
  lfe_control : string option; [@option]  (** lfe_control *)
  lfe_filter : string option; [@option]  (** lfe_filter *)
  lo_ro_center_mix_level : float option; [@option]
      (** lo_ro_center_mix_level *)
  lo_ro_surround_mix_level : float option; [@option]
      (** lo_ro_surround_mix_level *)
  lt_rt_center_mix_level : float option; [@option]
      (** lt_rt_center_mix_level *)
  lt_rt_surround_mix_level : float option; [@option]
      (** lt_rt_surround_mix_level *)
  metadata_control : string option; [@option]
      (** metadata_control *)
  passthrough_control : string option; [@option]
      (** passthrough_control *)
  phase_control : string option; [@option]  (** phase_control *)
  stereo_downmix : string option; [@option]  (** stereo_downmix *)
  surround_ex_mode : string option; [@option]
      (** surround_ex_mode *)
  surround_mode : string option; [@option]  (** surround_mode *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__audio_descriptions__codec_settings__eac3_settings *)

type aws_medialive_channel__encoder_settings__audio_descriptions__codec_settings__mp2_settings = {
  bitrate : float option; [@option]  (** bitrate *)
  coding_mode : string option; [@option]  (** coding_mode *)
  sample_rate : float option; [@option]  (** sample_rate *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__audio_descriptions__codec_settings__mp2_settings *)

type aws_medialive_channel__encoder_settings__audio_descriptions__codec_settings__pass_through_settings =
  unit
[@@deriving yojson_of]

type aws_medialive_channel__encoder_settings__audio_descriptions__codec_settings__wav_settings = {
  bit_depth : float option; [@option]  (** bit_depth *)
  coding_mode : string option; [@option]  (** coding_mode *)
  sample_rate : float option; [@option]  (** sample_rate *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__audio_descriptions__codec_settings__wav_settings *)

type aws_medialive_channel__encoder_settings__audio_descriptions__codec_settings = {
  aac_settings :
    aws_medialive_channel__encoder_settings__audio_descriptions__codec_settings__aac_settings
    list;
  ac3_settings :
    aws_medialive_channel__encoder_settings__audio_descriptions__codec_settings__ac3_settings
    list;
  eac3_atmos_settings :
    aws_medialive_channel__encoder_settings__audio_descriptions__codec_settings__eac3_atmos_settings
    list;
  eac3_settings :
    aws_medialive_channel__encoder_settings__audio_descriptions__codec_settings__eac3_settings
    list;
  mp2_settings :
    aws_medialive_channel__encoder_settings__audio_descriptions__codec_settings__mp2_settings
    list;
  pass_through_settings :
    aws_medialive_channel__encoder_settings__audio_descriptions__codec_settings__pass_through_settings
    list;
  wav_settings :
    aws_medialive_channel__encoder_settings__audio_descriptions__codec_settings__wav_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__audio_descriptions__codec_settings *)

type aws_medialive_channel__encoder_settings__audio_descriptions__remix_settings__channel_mappings__input_channel_levels = {
  gain : float;  (** gain *)
  input_channel : float;  (** input_channel *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__audio_descriptions__remix_settings__channel_mappings__input_channel_levels *)

type aws_medialive_channel__encoder_settings__audio_descriptions__remix_settings__channel_mappings = {
  output_channel : float;  (** output_channel *)
  input_channel_levels :
    aws_medialive_channel__encoder_settings__audio_descriptions__remix_settings__channel_mappings__input_channel_levels
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__audio_descriptions__remix_settings__channel_mappings *)

type aws_medialive_channel__encoder_settings__audio_descriptions__remix_settings = {
  channels_in : float option; [@option]  (** channels_in *)
  channels_out : float option; [@option]  (** channels_out *)
  channel_mappings :
    aws_medialive_channel__encoder_settings__audio_descriptions__remix_settings__channel_mappings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__audio_descriptions__remix_settings *)

type aws_medialive_channel__encoder_settings__audio_descriptions = {
  audio_selector_name : string;  (** audio_selector_name *)
  audio_type : string option; [@option]  (** audio_type *)
  audio_type_control : string option; [@option]
      (** audio_type_control *)
  language_code : string option; [@option]  (** language_code *)
  language_code_control : string option; [@option]
      (** language_code_control *)
  name : string;  (** name *)
  stream_name : string option; [@option]  (** stream_name *)
  audio_normalization_settings :
    aws_medialive_channel__encoder_settings__audio_descriptions__audio_normalization_settings
    list;
  audio_watermark_settings :
    aws_medialive_channel__encoder_settings__audio_descriptions__audio_watermark_settings
    list;
  codec_settings :
    aws_medialive_channel__encoder_settings__audio_descriptions__codec_settings
    list;
  remix_settings :
    aws_medialive_channel__encoder_settings__audio_descriptions__remix_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__audio_descriptions *)

type aws_medialive_channel__encoder_settings__avail_blanking__avail_blanking_image = {
  password_param : string option; [@option]  (** password_param *)
  uri : string;  (** uri *)
  username : string option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__avail_blanking__avail_blanking_image *)

type aws_medialive_channel__encoder_settings__avail_blanking = {
  state : string option; [@option]  (** state *)
  avail_blanking_image :
    aws_medialive_channel__encoder_settings__avail_blanking__avail_blanking_image
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__avail_blanking *)

type aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__arib_destination_settings =
  unit
[@@deriving yojson_of]

type aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings__font = {
  password_param : string option; [@option]  (** password_param *)
  uri : string;  (** uri *)
  username : string option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings__font *)

type aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings = {
  alignment : string option; [@option]  (** alignment *)
  background_color : string option; [@option]
      (** background_color *)
  background_opacity : float option; [@option]
      (** background_opacity *)
  font_color : string option; [@option]  (** font_color *)
  font_opacity : float option; [@option]  (** font_opacity *)
  font_resolution : float option; [@option]  (** font_resolution *)
  font_size : string option; [@option]  (** font_size *)
  outline_color : string;  (** outline_color *)
  outline_size : float option; [@option]  (** outline_size *)
  shadow_color : string option; [@option]  (** shadow_color *)
  shadow_opacity : float option; [@option]  (** shadow_opacity *)
  shadow_x_offset : float option; [@option]  (** shadow_x_offset *)
  shadow_y_offset : float option; [@option]  (** shadow_y_offset *)
  teletext_grid_control : string;  (** teletext_grid_control *)
  x_position : float option; [@option]  (** x_position *)
  y_position : float option; [@option]  (** y_position *)
  font :
    aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings__font
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings *)

type aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings__font = {
  password_param : string option; [@option]  (** password_param *)
  uri : string;  (** uri *)
  username : string option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings__font *)

type aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings = {
  alignment : string option; [@option]  (** alignment *)
  background_color : string option; [@option]
      (** background_color *)
  background_opacity : float option; [@option]
      (** background_opacity *)
  font_color : string option; [@option]  (** font_color *)
  font_opacity : float option; [@option]  (** font_opacity *)
  font_resolution : float option; [@option]  (** font_resolution *)
  font_size : string option; [@option]  (** font_size *)
  outline_color : string option; [@option]  (** outline_color *)
  outline_size : float option; [@option]  (** outline_size *)
  shadow_color : string option; [@option]  (** shadow_color *)
  shadow_opacity : float option; [@option]  (** shadow_opacity *)
  shadow_x_offset : float option; [@option]  (** shadow_x_offset *)
  shadow_y_offset : float option; [@option]  (** shadow_y_offset *)
  teletext_grid_control : string option; [@option]
      (** teletext_grid_control *)
  x_position : float option; [@option]  (** x_position *)
  y_position : float option; [@option]  (** y_position *)
  font :
    aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings__font
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings *)

type aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__ebu_tt_d_destination_settings = {
  copyright_holder : string option; [@option]
      (** copyright_holder *)
  fill_line_gap : string option; [@option]  (** fill_line_gap *)
  font_family : string option; [@option]  (** font_family *)
  style_control : string option; [@option]  (** style_control *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__ebu_tt_d_destination_settings *)

type aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__embedded_destination_settings =
  unit
[@@deriving yojson_of]

type aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__embedded_plus_scte20_destination_settings =
  unit
[@@deriving yojson_of]

type aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__rtmp_caption_info_destination_settings =
  unit
[@@deriving yojson_of]

type aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__scte20_plus_embedded_destination_settings =
  unit
[@@deriving yojson_of]

type aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__scte27_destination_settings =
  unit
[@@deriving yojson_of]

type aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__smpte_tt_destination_settings =
  unit
[@@deriving yojson_of]

type aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__teletext_destination_settings =
  unit
[@@deriving yojson_of]

type aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__ttml_destination_settings = {
  style_control : string;  (** style_control *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__ttml_destination_settings *)

type aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__webvtt_destination_settings = {
  style_control : string;  (** style_control *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__webvtt_destination_settings *)

type aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings = {
  arib_destination_settings :
    aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__arib_destination_settings
    list;
  burn_in_destination_settings :
    aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings
    list;
  dvb_sub_destination_settings :
    aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings
    list;
  ebu_tt_d_destination_settings :
    aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__ebu_tt_d_destination_settings
    list;
  embedded_destination_settings :
    aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__embedded_destination_settings
    list;
  embedded_plus_scte20_destination_settings :
    aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__embedded_plus_scte20_destination_settings
    list;
  rtmp_caption_info_destination_settings :
    aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__rtmp_caption_info_destination_settings
    list;
  scte20_plus_embedded_destination_settings :
    aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__scte20_plus_embedded_destination_settings
    list;
  scte27_destination_settings :
    aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__scte27_destination_settings
    list;
  smpte_tt_destination_settings :
    aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__smpte_tt_destination_settings
    list;
  teletext_destination_settings :
    aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__teletext_destination_settings
    list;
  ttml_destination_settings :
    aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__ttml_destination_settings
    list;
  webvtt_destination_settings :
    aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings__webvtt_destination_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings *)

type aws_medialive_channel__encoder_settings__caption_descriptions = {
  accessibility : string option; [@option]  (** accessibility *)
  caption_selector_name : string;  (** caption_selector_name *)
  language_code : string option; [@option]  (** language_code *)
  language_description : string option; [@option]
      (** language_description *)
  name : string;  (** name *)
  destination_settings :
    aws_medialive_channel__encoder_settings__caption_descriptions__destination_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__caption_descriptions *)

type aws_medialive_channel__encoder_settings__global_configuration__input_loss_behavior__input_loss_image_slate = {
  password_param : string option; [@option]  (** password_param *)
  uri : string;  (** uri *)
  username : string option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__global_configuration__input_loss_behavior__input_loss_image_slate *)

type aws_medialive_channel__encoder_settings__global_configuration__input_loss_behavior = {
  black_frame_msec : float option; [@option]  (** black_frame_msec *)
  input_loss_image_color : string option; [@option]
      (** input_loss_image_color *)
  input_loss_image_type : string option; [@option]
      (** input_loss_image_type *)
  repeat_frame_msec : float option; [@option]
      (** repeat_frame_msec *)
  input_loss_image_slate :
    aws_medialive_channel__encoder_settings__global_configuration__input_loss_behavior__input_loss_image_slate
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__global_configuration__input_loss_behavior *)

type aws_medialive_channel__encoder_settings__global_configuration = {
  initial_audio_gain : float option; [@option]
      (** initial_audio_gain *)
  input_end_action : string option; [@option]
      (** input_end_action *)
  output_locking_mode : string option; [@option]
      (** output_locking_mode *)
  output_timing_source : string option; [@option]
      (** output_timing_source *)
  support_low_framerate_inputs : string option; [@option]
      (** support_low_framerate_inputs *)
  input_loss_behavior :
    aws_medialive_channel__encoder_settings__global_configuration__input_loss_behavior
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__global_configuration *)

type aws_medialive_channel__encoder_settings__motion_graphics_configuration__motion_graphics_settings__html_motion_graphics_settings =
  unit
[@@deriving yojson_of]

type aws_medialive_channel__encoder_settings__motion_graphics_configuration__motion_graphics_settings = {
  html_motion_graphics_settings :
    aws_medialive_channel__encoder_settings__motion_graphics_configuration__motion_graphics_settings__html_motion_graphics_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__motion_graphics_configuration__motion_graphics_settings *)

type aws_medialive_channel__encoder_settings__motion_graphics_configuration = {
  motion_graphics_insertion : string option; [@option]
      (** motion_graphics_insertion *)
  motion_graphics_settings :
    aws_medialive_channel__encoder_settings__motion_graphics_configuration__motion_graphics_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__motion_graphics_configuration *)

type aws_medialive_channel__encoder_settings__nielsen_configuration = {
  distributor_id : string option; [@option]  (** distributor_id *)
  nielsen_pcm_to_id3_tagging : string option; [@option]
      (** nielsen_pcm_to_id3_tagging *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__nielsen_configuration *)

type aws_medialive_channel__encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings__archive_s3_settings = {
  canned_acl : string option; [@option]  (** canned_acl *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings__archive_s3_settings *)

type aws_medialive_channel__encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings = {
  archive_s3_settings :
    aws_medialive_channel__encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings__archive_s3_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings *)

type aws_medialive_channel__encoder_settings__output_groups__output_group_settings__archive_group_settings__destination = {
  destination_ref_id : string;  (** destination_ref_id *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__output_group_settings__archive_group_settings__destination *)

type aws_medialive_channel__encoder_settings__output_groups__output_group_settings__archive_group_settings = {
  rollover_interval : float option; [@option]
      (** rollover_interval *)
  archive_cdn_settings :
    aws_medialive_channel__encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings
    list;
  destination :
    aws_medialive_channel__encoder_settings__output_groups__output_group_settings__archive_group_settings__destination
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__output_group_settings__archive_group_settings *)

type aws_medialive_channel__encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__destination = {
  destination_ref_id : string;  (** destination_ref_id *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__destination *)

type aws_medialive_channel__encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings__frame_capture_s3_settings = {
  canned_acl : string option; [@option]  (** canned_acl *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings__frame_capture_s3_settings *)

type aws_medialive_channel__encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings = {
  frame_capture_s3_settings :
    aws_medialive_channel__encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings__frame_capture_s3_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings *)

type aws_medialive_channel__encoder_settings__output_groups__output_group_settings__frame_capture_group_settings = {
  destination :
    aws_medialive_channel__encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__destination
    list;
  frame_capture_cdn_settings :
    aws_medialive_channel__encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__output_group_settings__frame_capture_group_settings *)

type aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__caption_language_mappings = {
  caption_channel : float;  (** caption_channel *)
  language_code : string;  (** language_code *)
  language_description : string;  (** language_description *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__caption_language_mappings *)

type aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__destination = {
  destination_ref_id : string;  (** destination_ref_id *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__destination *)

type aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_akamai_settings = {
  connection_retry_interval : float option; [@option]
      (** connection_retry_interval *)
  filecache_duration : float option; [@option]
      (** filecache_duration *)
  http_transfer_mode : string option; [@option]
      (** http_transfer_mode *)
  num_retries : float option; [@option]  (** num_retries *)
  restart_delay : float option; [@option]  (** restart_delay *)
  salt : string option; [@option]  (** salt *)
  token : string option; [@option]  (** token *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_akamai_settings *)

type aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_basic_put_settings = {
  connection_retry_interval : float option; [@option]
      (** connection_retry_interval *)
  filecache_duration : float option; [@option]
      (** filecache_duration *)
  num_retries : float option; [@option]  (** num_retries *)
  restart_delay : float option; [@option]  (** restart_delay *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_basic_put_settings *)

type aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_media_store_settings = {
  connection_retry_interval : float option; [@option]
      (** connection_retry_interval *)
  filecache_duration : float option; [@option]
      (** filecache_duration *)
  media_store_storage_class : string option; [@option]
      (** media_store_storage_class *)
  num_retries : float option; [@option]  (** num_retries *)
  restart_delay : float option; [@option]  (** restart_delay *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_media_store_settings *)

type aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_s3_settings = {
  canned_acl : string option; [@option]  (** canned_acl *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_s3_settings *)

type aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_webdav_settings = {
  connection_retry_interval : float option; [@option]
      (** connection_retry_interval *)
  filecache_duration : float option; [@option]
      (** filecache_duration *)
  http_transfer_mode : string option; [@option]
      (** http_transfer_mode *)
  num_retries : float option; [@option]  (** num_retries *)
  restart_delay : float option; [@option]  (** restart_delay *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_webdav_settings *)

type aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings = {
  hls_akamai_settings :
    aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_akamai_settings
    list;
  hls_basic_put_settings :
    aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_basic_put_settings
    list;
  hls_media_store_settings :
    aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_media_store_settings
    list;
  hls_s3_settings :
    aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_s3_settings
    list;
  hls_webdav_settings :
    aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_webdav_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings *)

type aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings__key_provider_server = {
  password_param : string option; [@option]  (** password_param *)
  uri : string;  (** uri *)
  username : string option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings__key_provider_server *)

type aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings = {
  static_key_value : string;  (** static_key_value *)
  key_provider_server :
    aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings__key_provider_server
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings *)

type aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings = {
  static_key_settings :
    aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings *)

type aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings = {
  ad_markers : string list option; [@option]  (** ad_markers *)
  base_url_content : string option; [@option]
      (** base_url_content *)
  base_url_content1 : string option; [@option]
      (** base_url_content1 *)
  base_url_manifest : string option; [@option]
      (** base_url_manifest *)
  base_url_manifest1 : string option; [@option]
      (** base_url_manifest1 *)
  caption_language_setting : string option; [@option]
      (** caption_language_setting *)
  client_cache : string option; [@option]  (** client_cache *)
  codec_specification : string option; [@option]
      (** codec_specification *)
  constant_iv : string option; [@option]  (** constant_iv *)
  directory_structure : string option; [@option]
      (** directory_structure *)
  discontinuity_tags : string option; [@option]
      (** discontinuity_tags *)
  encryption_type : string option; [@option]  (** encryption_type *)
  hls_id3_segment_tagging : string option; [@option]
      (** hls_id3_segment_tagging *)
  iframe_only_playlists : string option; [@option]
      (** iframe_only_playlists *)
  incomplete_segment_behavior : string option; [@option]
      (** incomplete_segment_behavior *)
  index_n_segments : float option; [@option]  (** index_n_segments *)
  input_loss_action : string option; [@option]
      (** input_loss_action *)
  iv_in_manifest : string option; [@option]  (** iv_in_manifest *)
  iv_source : string option; [@option]  (** iv_source *)
  keep_segments : float option; [@option]  (** keep_segments *)
  key_format : string option; [@option]  (** key_format *)
  key_format_versions : string option; [@option]
      (** key_format_versions *)
  manifest_compression : string option; [@option]
      (** manifest_compression *)
  manifest_duration_format : string option; [@option]
      (** manifest_duration_format *)
  min_segment_length : float option; [@option]
      (** min_segment_length *)
  mode : string option; [@option]  (** mode *)
  output_selection : string option; [@option]
      (** output_selection *)
  program_date_time : string option; [@option]
      (** program_date_time *)
  program_date_time_clock : string option; [@option]
      (** program_date_time_clock *)
  program_date_time_period : float option; [@option]
      (** program_date_time_period *)
  redundant_manifest : string option; [@option]
      (** redundant_manifest *)
  segment_length : float option; [@option]  (** segment_length *)
  segments_per_subdirectory : float option; [@option]
      (** segments_per_subdirectory *)
  stream_inf_resolution : string option; [@option]
      (** stream_inf_resolution *)
  timed_metadata_id3_frame : string option; [@option]
      (** timed_metadata_id3_frame *)
  timed_metadata_id3_period : float option; [@option]
      (** timed_metadata_id3_period *)
  timestamp_delta_milliseconds : float option; [@option]
      (** timestamp_delta_milliseconds *)
  ts_file_mode : string option; [@option]  (** ts_file_mode *)
  caption_language_mappings :
    aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__caption_language_mappings
    list;
  destination :
    aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__destination
    list;
  hls_cdn_settings :
    aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings
    list;
  key_provider_settings :
    aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings *)

type aws_medialive_channel__encoder_settings__output_groups__output_group_settings__media_package_group_settings__destination = {
  destination_ref_id : string;  (** destination_ref_id *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__output_group_settings__media_package_group_settings__destination *)

type aws_medialive_channel__encoder_settings__output_groups__output_group_settings__media_package_group_settings = {
  destination :
    aws_medialive_channel__encoder_settings__output_groups__output_group_settings__media_package_group_settings__destination
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__output_group_settings__media_package_group_settings *)

type aws_medialive_channel__encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings__destination = {
  destination_ref_id : string;  (** destination_ref_id *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings__destination *)

type aws_medialive_channel__encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings = {
  acquisition_point_id : string option; [@option]
      (** acquisition_point_id *)
  audio_only_timecode_control : string option; [@option]
      (** audio_only_timecode_control *)
  certificate_mode : string option; [@option]
      (** certificate_mode *)
  connection_retry_interval : float option; [@option]
      (** connection_retry_interval *)
  event_id : string option; [@option]  (** event_id *)
  event_id_mode : string option; [@option]  (** event_id_mode *)
  event_stop_behavior : string option; [@option]
      (** event_stop_behavior *)
  filecache_duration : float option; [@option]
      (** filecache_duration *)
  fragment_length : float option; [@option]  (** fragment_length *)
  input_loss_action : string option; [@option]
      (** input_loss_action *)
  num_retries : float option; [@option]  (** num_retries *)
  restart_delay : float option; [@option]  (** restart_delay *)
  segmentation_mode : string option; [@option]
      (** segmentation_mode *)
  send_delay_ms : float option; [@option]  (** send_delay_ms *)
  sparse_track_type : string option; [@option]
      (** sparse_track_type *)
  stream_manifest_behavior : string option; [@option]
      (** stream_manifest_behavior *)
  timestamp_offset : string option; [@option]
      (** timestamp_offset *)
  timestamp_offset_mode : string option; [@option]
      (** timestamp_offset_mode *)
  destination :
    aws_medialive_channel__encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings__destination
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings *)

type aws_medialive_channel__encoder_settings__output_groups__output_group_settings__multiplex_group_settings =
  unit
[@@deriving yojson_of]

type aws_medialive_channel__encoder_settings__output_groups__output_group_settings__rtmp_group_settings = {
  ad_markers : string list option; [@option]  (** ad_markers *)
  authentication_scheme : string option; [@option]
      (** authentication_scheme *)
  cache_full_behavior : string option; [@option]
      (** cache_full_behavior *)
  cache_length : float option; [@option]  (** cache_length *)
  caption_data : string option; [@option]  (** caption_data *)
  input_loss_action : string option; [@option]
      (** input_loss_action *)
  restart_delay : float option; [@option]  (** restart_delay *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__output_group_settings__rtmp_group_settings *)

type aws_medialive_channel__encoder_settings__output_groups__output_group_settings__udp_group_settings = {
  input_loss_action : string option; [@option]
      (** input_loss_action *)
  timed_metadata_id3_frame : string option; [@option]
      (** timed_metadata_id3_frame *)
  timed_metadata_id3_period : float option; [@option]
      (** timed_metadata_id3_period *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__output_group_settings__udp_group_settings *)

type aws_medialive_channel__encoder_settings__output_groups__output_group_settings = {
  archive_group_settings :
    aws_medialive_channel__encoder_settings__output_groups__output_group_settings__archive_group_settings
    list;
  frame_capture_group_settings :
    aws_medialive_channel__encoder_settings__output_groups__output_group_settings__frame_capture_group_settings
    list;
  hls_group_settings :
    aws_medialive_channel__encoder_settings__output_groups__output_group_settings__hls_group_settings
    list;
  media_package_group_settings :
    aws_medialive_channel__encoder_settings__output_groups__output_group_settings__media_package_group_settings
    list;
  ms_smooth_group_settings :
    aws_medialive_channel__encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings
    list;
  multiplex_group_settings :
    aws_medialive_channel__encoder_settings__output_groups__output_group_settings__multiplex_group_settings
    list;
  rtmp_group_settings :
    aws_medialive_channel__encoder_settings__output_groups__output_group_settings__rtmp_group_settings
    list;
  udp_group_settings :
    aws_medialive_channel__encoder_settings__output_groups__output_group_settings__udp_group_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__output_group_settings *)

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_nit_settings = {
  network_id : float;  (** network_id *)
  network_name : string;  (** network_name *)
  rep_interval : float option; [@option]  (** rep_interval *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_nit_settings *)

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_sdt_settings = {
  output_sdt : string option; [@option]  (** output_sdt *)
  rep_interval : float option; [@option]  (** rep_interval *)
  service_name : string option; [@option]  (** service_name *)
  service_provider_name : string option; [@option]
      (** service_provider_name *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_sdt_settings *)

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_tdt_settings = {
  rep_interval : float option; [@option]  (** rep_interval *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_tdt_settings *)

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings = {
  absent_input_audio_behavior : string option; [@option]
      (** absent_input_audio_behavior *)
  arib : string option; [@option]  (** arib *)
  arib_captions_pid : string option; [@option]
      (** arib_captions_pid *)
  arib_captions_pid_control : string option; [@option]
      (** arib_captions_pid_control *)
  audio_buffer_model : string option; [@option]
      (** audio_buffer_model *)
  audio_frames_per_pes : float option; [@option]
      (** audio_frames_per_pes *)
  audio_pids : string option; [@option]  (** audio_pids *)
  audio_stream_type : string option; [@option]
      (** audio_stream_type *)
  bitrate : float option; [@option]  (** bitrate *)
  buffer_model : string option; [@option]  (** buffer_model *)
  cc_descriptor : string option; [@option]  (** cc_descriptor *)
  dvb_sub_pids : string option; [@option]  (** dvb_sub_pids *)
  dvb_teletext_pid : string option; [@option]
      (** dvb_teletext_pid *)
  ebif : string option; [@option]  (** ebif *)
  ebp_audio_interval : string option; [@option]
      (** ebp_audio_interval *)
  ebp_lookahead_ms : float option; [@option]  (** ebp_lookahead_ms *)
  ebp_placement : string option; [@option]  (** ebp_placement *)
  ecm_pid : string option; [@option]  (** ecm_pid *)
  es_rate_in_pes : string option; [@option]  (** es_rate_in_pes *)
  etv_platform_pid : string option; [@option]
      (** etv_platform_pid *)
  etv_signal_pid : string option; [@option]  (** etv_signal_pid *)
  fragment_time : float option; [@option]  (** fragment_time *)
  klv : string option; [@option]  (** klv *)
  klv_data_pids : string option; [@option]  (** klv_data_pids *)
  nielsen_id3_behavior : string option; [@option]
      (** nielsen_id3_behavior *)
  null_packet_bitrate : float option; [@option]
      (** null_packet_bitrate *)
  pat_interval : float option; [@option]  (** pat_interval *)
  pcr_control : string option; [@option]  (** pcr_control *)
  pcr_period : float option; [@option]  (** pcr_period *)
  pcr_pid : string option; [@option]  (** pcr_pid *)
  pmt_interval : float option; [@option]  (** pmt_interval *)
  pmt_pid : string option; [@option]  (** pmt_pid *)
  program_num : float option; [@option]  (** program_num *)
  rate_mode : string option; [@option]  (** rate_mode *)
  scte27_pids : string option; [@option]  (** scte27_pids *)
  scte35_control : string option; [@option]  (** scte35_control *)
  scte35_pid : string option; [@option]  (** scte35_pid *)
  segmentation_markers : string option; [@option]
      (** segmentation_markers *)
  segmentation_style : string option; [@option]
      (** segmentation_style *)
  segmentation_time : float option; [@option]
      (** segmentation_time *)
  timed_metadata_behavior : string option; [@option]
      (** timed_metadata_behavior *)
  timed_metadata_pid : string option; [@option]
      (** timed_metadata_pid *)
  transport_stream_id : float option; [@option]
      (** transport_stream_id *)
  video_pid : string option; [@option]  (** video_pid *)
  dvb_nit_settings :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_nit_settings
    list;
  dvb_sdt_settings :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_sdt_settings
    list;
  dvb_tdt_settings :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_tdt_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings *)

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__raw_settings =
  unit
[@@deriving yojson_of]

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings = {
  m2ts_settings :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings
    list;
  raw_settings :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__raw_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings *)

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__archive_output_settings = {
  extension : string option; [@option]  (** extension *)
  name_modifier : string option; [@option]  (** name_modifier *)
  container_settings :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__archive_output_settings *)

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__frame_capture_output_settings = {
  name_modifier : string option; [@option]  (** name_modifier *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__frame_capture_output_settings *)

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings__audio_only_image = {
  password_param : string option; [@option]  (** password_param *)
  uri : string;  (** uri *)
  username : string option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings__audio_only_image *)

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings = {
  audio_group_id : string option; [@option]  (** audio_group_id *)
  audio_track_type : string option; [@option]
      (** audio_track_type *)
  segment_type : string option; [@option]  (** segment_type *)
  audio_only_image :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings__audio_only_image
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings *)

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__fmp4_hls_settings = {
  audio_rendition_sets : string option; [@option]
      (** audio_rendition_sets *)
  nielsen_id3_behavior : string option; [@option]
      (** nielsen_id3_behavior *)
  timed_metadata_behavior : string option; [@option]
      (** timed_metadata_behavior *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__fmp4_hls_settings *)

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__frame_capture_hls_settings =
  unit
[@@deriving yojson_of]

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings__m3u8_settings = {
  audio_frames_per_pes : float option; [@option]
      (** audio_frames_per_pes *)
  audio_pids : string option; [@option]  (** audio_pids *)
  ecm_pid : string option; [@option]  (** ecm_pid *)
  nielsen_id3_behavior : string option; [@option]
      (** nielsen_id3_behavior *)
  pat_interval : float option; [@option]  (** pat_interval *)
  pcr_control : string option; [@option]  (** pcr_control *)
  pcr_period : float option; [@option]  (** pcr_period *)
  pcr_pid : string option; [@option]  (** pcr_pid *)
  pmt_interval : float option; [@option]  (** pmt_interval *)
  pmt_pid : string option; [@option]  (** pmt_pid *)
  program_num : float option; [@option]  (** program_num *)
  scte35_behavior : string option; [@option]  (** scte35_behavior *)
  scte35_pid : string option; [@option]  (** scte35_pid *)
  timed_metadata_behavior : string option; [@option]
      (** timed_metadata_behavior *)
  timed_metadata_pid : string option; [@option]
      (** timed_metadata_pid *)
  transport_stream_id : float option; [@option]
      (** transport_stream_id *)
  video_pid : string option; [@option]  (** video_pid *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings__m3u8_settings *)

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings = {
  audio_rendition_sets : string option; [@option]
      (** audio_rendition_sets *)
  m3u8_settings :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings__m3u8_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings *)

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings = {
  audio_only_hls_settings :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings
    list;
  fmp4_hls_settings :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__fmp4_hls_settings
    list;
  frame_capture_hls_settings :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__frame_capture_hls_settings
    list;
  standard_hls_settings :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings *)

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__hls_output_settings = {
  h265_packaging_type : string option; [@option]
      (** h265_packaging_type *)
  name_modifier : string option; [@option]  (** name_modifier *)
  segment_modifier : string option; [@option]
      (** segment_modifier *)
  hls_settings :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__hls_output_settings *)

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__media_package_output_settings =
  unit
[@@deriving yojson_of]

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__ms_smooth_output_settings = {
  h265_packaging_type : string option; [@option]
      (** h265_packaging_type *)
  name_modifier : string option; [@option]  (** name_modifier *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__ms_smooth_output_settings *)

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings__destination = {
  destination_ref_id : string;  (** destination_ref_id *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings__destination *)

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings = {
  destination :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings__destination
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings *)

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings__destination = {
  destination_ref_id : string;  (** destination_ref_id *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings__destination *)

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings = {
  certificate_mode : string option; [@option]
      (** certificate_mode *)
  connection_retry_interval : float option; [@option]
      (** connection_retry_interval *)
  num_retries : float option; [@option]  (** num_retries *)
  destination :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings__destination
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings *)

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_nit_settings = {
  network_id : float;  (** network_id *)
  network_name : string;  (** network_name *)
  rep_interval : float option; [@option]  (** rep_interval *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_nit_settings *)

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_sdt_settings = {
  output_sdt : string option; [@option]  (** output_sdt *)
  rep_interval : float option; [@option]  (** rep_interval *)
  service_name : string option; [@option]  (** service_name *)
  service_provider_name : string option; [@option]
      (** service_provider_name *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_sdt_settings *)

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_tdt_settings = {
  rep_interval : float option; [@option]  (** rep_interval *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_tdt_settings *)

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings = {
  absent_input_audio_behavior : string option; [@option]
      (** absent_input_audio_behavior *)
  arib : string option; [@option]  (** arib *)
  arib_captions_pid : string option; [@option]
      (** arib_captions_pid *)
  arib_captions_pid_control : string option; [@option]
      (** arib_captions_pid_control *)
  audio_buffer_model : string option; [@option]
      (** audio_buffer_model *)
  audio_frames_per_pes : float option; [@option]
      (** audio_frames_per_pes *)
  audio_pids : string option; [@option]  (** audio_pids *)
  audio_stream_type : string option; [@option]
      (** audio_stream_type *)
  bitrate : float option; [@option]  (** bitrate *)
  buffer_model : string option; [@option]  (** buffer_model *)
  cc_descriptor : string option; [@option]  (** cc_descriptor *)
  dvb_sub_pids : string option; [@option]  (** dvb_sub_pids *)
  dvb_teletext_pid : string option; [@option]
      (** dvb_teletext_pid *)
  ebif : string option; [@option]  (** ebif *)
  ebp_audio_interval : string option; [@option]
      (** ebp_audio_interval *)
  ebp_lookahead_ms : float option; [@option]  (** ebp_lookahead_ms *)
  ebp_placement : string option; [@option]  (** ebp_placement *)
  ecm_pid : string option; [@option]  (** ecm_pid *)
  es_rate_in_pes : string option; [@option]  (** es_rate_in_pes *)
  etv_platform_pid : string option; [@option]
      (** etv_platform_pid *)
  etv_signal_pid : string option; [@option]  (** etv_signal_pid *)
  fragment_time : float option; [@option]  (** fragment_time *)
  klv : string option; [@option]  (** klv *)
  klv_data_pids : string option; [@option]  (** klv_data_pids *)
  nielsen_id3_behavior : string option; [@option]
      (** nielsen_id3_behavior *)
  null_packet_bitrate : float option; [@option]
      (** null_packet_bitrate *)
  pat_interval : float option; [@option]  (** pat_interval *)
  pcr_control : string option; [@option]  (** pcr_control *)
  pcr_period : float option; [@option]  (** pcr_period *)
  pcr_pid : string option; [@option]  (** pcr_pid *)
  pmt_interval : float option; [@option]  (** pmt_interval *)
  pmt_pid : string option; [@option]  (** pmt_pid *)
  program_num : float option; [@option]  (** program_num *)
  rate_mode : string option; [@option]  (** rate_mode *)
  scte27_pids : string option; [@option]  (** scte27_pids *)
  scte35_control : string option; [@option]  (** scte35_control *)
  scte35_pid : string option; [@option]  (** scte35_pid *)
  segmentation_markers : string option; [@option]
      (** segmentation_markers *)
  segmentation_style : string option; [@option]
      (** segmentation_style *)
  segmentation_time : float option; [@option]
      (** segmentation_time *)
  timed_metadata_behavior : string option; [@option]
      (** timed_metadata_behavior *)
  timed_metadata_pid : string option; [@option]
      (** timed_metadata_pid *)
  transport_stream_id : float option; [@option]
      (** transport_stream_id *)
  video_pid : string option; [@option]  (** video_pid *)
  dvb_nit_settings :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_nit_settings
    list;
  dvb_sdt_settings :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_sdt_settings
    list;
  dvb_tdt_settings :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_tdt_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings *)

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings = {
  m2ts_settings :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings *)

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__udp_output_settings__destination = {
  destination_ref_id : string;  (** destination_ref_id *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__udp_output_settings__destination *)

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__udp_output_settings__fec_output_settings = {
  column_depth : float option; [@option]  (** column_depth *)
  include_fec : string option; [@option]  (** include_fec *)
  row_length : float option; [@option]  (** row_length *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__udp_output_settings__fec_output_settings *)

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__udp_output_settings = {
  buffer_msec : float option; [@option]  (** buffer_msec *)
  container_settings :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings
    list;
  destination :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__udp_output_settings__destination
    list;
  fec_output_settings :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__udp_output_settings__fec_output_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__udp_output_settings *)

type aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings = {
  archive_output_settings :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__archive_output_settings
    list;
  frame_capture_output_settings :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__frame_capture_output_settings
    list;
  hls_output_settings :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__hls_output_settings
    list;
  media_package_output_settings :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__media_package_output_settings
    list;
  ms_smooth_output_settings :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__ms_smooth_output_settings
    list;
  multiplex_output_settings :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings
    list;
  rtmp_output_settings :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings
    list;
  udp_output_settings :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings__udp_output_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings *)

type aws_medialive_channel__encoder_settings__output_groups__outputs = {
  audio_description_names : string list option; [@option]
      (** audio_description_names *)
  caption_description_names : string list option; [@option]
      (** caption_description_names *)
  output_name : string option; [@option]  (** output_name *)
  video_description_name : string option; [@option]
      (** video_description_name *)
  output_settings :
    aws_medialive_channel__encoder_settings__output_groups__outputs__output_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups__outputs *)

type aws_medialive_channel__encoder_settings__output_groups = {
  name : string option; [@option]  (** name *)
  output_group_settings :
    aws_medialive_channel__encoder_settings__output_groups__output_group_settings
    list;
  outputs :
    aws_medialive_channel__encoder_settings__output_groups__outputs
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__output_groups *)

type aws_medialive_channel__encoder_settings__timecode_config = {
  source : string;  (** source *)
  sync_threshold : float option; [@option]  (** sync_threshold *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__timecode_config *)

type aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__frame_capture_settings = {
  capture_interval : float option; [@option]  (** capture_interval *)
  capture_interval_units : string option; [@option]
      (** capture_interval_units *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__frame_capture_settings *)

type aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings__temporal_filter_settings = {
  post_filter_sharpening : string option; [@option]
      (** post_filter_sharpening *)
  strength : string option; [@option]  (** strength *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings__temporal_filter_settings *)

type aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings = {
  temporal_filter_settings :
    aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings__temporal_filter_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings *)

type aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h264_settings = {
  adaptive_quantization : string option; [@option]
      (** adaptive_quantization *)
  afd_signaling : string option; [@option]  (** afd_signaling *)
  bitrate : float option; [@option]  (** bitrate *)
  buf_fill_pct : float option; [@option]  (** buf_fill_pct *)
  buf_size : float option; [@option]  (** buf_size *)
  color_metadata : string option; [@option]  (** color_metadata *)
  entropy_encoding : string option; [@option]
      (** entropy_encoding *)
  fixed_afd : string option; [@option]  (** fixed_afd *)
  flicker_aq : string option; [@option]  (** flicker_aq *)
  force_field_pictures : string option; [@option]
      (** force_field_pictures *)
  framerate_control : string option; [@option]
      (** framerate_control *)
  framerate_denominator : float option; [@option]
      (** framerate_denominator *)
  framerate_numerator : float option; [@option]
      (** framerate_numerator *)
  gop_b_reference : string option; [@option]  (** gop_b_reference *)
  gop_closed_cadence : float option; [@option]
      (** gop_closed_cadence *)
  gop_num_b_frames : float option; [@option]  (** gop_num_b_frames *)
  gop_size : float option; [@option]  (** gop_size *)
  gop_size_units : string option; [@option]  (** gop_size_units *)
  level : string option; [@option]  (** level *)
  look_ahead_rate_control : string option; [@option]
      (** look_ahead_rate_control *)
  max_bitrate : float option; [@option]  (** max_bitrate *)
  min_i_interval : float option; [@option]  (** min_i_interval *)
  num_ref_frames : float option; [@option]  (** num_ref_frames *)
  par_control : string option; [@option]  (** par_control *)
  par_denominator : float option; [@option]  (** par_denominator *)
  par_numerator : float option; [@option]  (** par_numerator *)
  profile : string option; [@option]  (** profile *)
  quality_level : string option; [@option]  (** quality_level *)
  qvbr_quality_level : float option; [@option]
      (** qvbr_quality_level *)
  rate_control_mode : string option; [@option]
      (** rate_control_mode *)
  scan_type : string option; [@option]  (** scan_type *)
  scene_change_detect : string option; [@option]
      (** scene_change_detect *)
  slices : float option; [@option]  (** slices *)
  softness : float option; [@option]  (** softness *)
  spatial_aq : string option; [@option]  (** spatial_aq *)
  subgop_length : string option; [@option]  (** subgop_length *)
  syntax : string option; [@option]  (** syntax *)
  temporal_aq : string option; [@option]  (** temporal_aq *)
  timecode_insertion : string option; [@option]
      (** timecode_insertion *)
  filter_settings :
    aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h264_settings *)

type aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__color_space_passthrough_settings =
  unit
[@@deriving yojson_of]

type aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__dolby_vision81_settings =
  unit
[@@deriving yojson_of]

type aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__hdr10_settings = {
  max_cll : float option; [@option]  (** max_cll *)
  max_fall : float option; [@option]  (** max_fall *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__hdr10_settings *)

type aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec601_settings =
  unit
[@@deriving yojson_of]

type aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec709_settings =
  unit
[@@deriving yojson_of]

type aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings = {
  color_space_passthrough_settings :
    aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__color_space_passthrough_settings
    list;
  dolby_vision81_settings :
    aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__dolby_vision81_settings
    list;
  hdr10_settings :
    aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__hdr10_settings
    list;
  rec601_settings :
    aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec601_settings
    list;
  rec709_settings :
    aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec709_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings *)

type aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings__temporal_filter_settings = {
  post_filter_sharpening : string option; [@option]
      (** post_filter_sharpening *)
  strength : string option; [@option]  (** strength *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings__temporal_filter_settings *)

type aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings = {
  temporal_filter_settings :
    aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings__temporal_filter_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings *)

type aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h265_settings__timecode_burnin_settings = {
  prefix : string option; [@option]  (** prefix *)
  timecode_burnin_font_size : string option; [@option]
      (** timecode_burnin_font_size *)
  timecode_burnin_position : string option; [@option]
      (** timecode_burnin_position *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h265_settings__timecode_burnin_settings *)

type aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h265_settings = {
  adaptive_quantization : string option; [@option]
      (** adaptive_quantization *)
  afd_signaling : string option; [@option]  (** afd_signaling *)
  alternative_transfer_function : string option; [@option]
      (** alternative_transfer_function *)
  bitrate : float;  (** bitrate *)
  buf_size : float option; [@option]  (** buf_size *)
  color_metadata : string option; [@option]  (** color_metadata *)
  fixed_afd : string option; [@option]  (** fixed_afd *)
  flicker_aq : string option; [@option]  (** flicker_aq *)
  framerate_denominator : float;  (** framerate_denominator *)
  framerate_numerator : float;  (** framerate_numerator *)
  gop_closed_cadence : float option; [@option]
      (** gop_closed_cadence *)
  gop_size : float option; [@option]  (** gop_size *)
  gop_size_units : string option; [@option]  (** gop_size_units *)
  level : string option; [@option]  (** level *)
  look_ahead_rate_control : string option; [@option]
      (** look_ahead_rate_control *)
  max_bitrate : float option; [@option]  (** max_bitrate *)
  min_i_interval : float option; [@option]  (** min_i_interval *)
  par_denominator : float option; [@option]  (** par_denominator *)
  par_numerator : float option; [@option]  (** par_numerator *)
  profile : string option; [@option]  (** profile *)
  qvbr_quality_level : float option; [@option]
      (** qvbr_quality_level *)
  rate_control_mode : string option; [@option]
      (** rate_control_mode *)
  scan_type : string option; [@option]  (** scan_type *)
  scene_change_detect : string option; [@option]
      (** scene_change_detect *)
  slices : float option; [@option]  (** slices *)
  tier : string option; [@option]  (** tier *)
  timecode_insertion : string option; [@option]
      (** timecode_insertion *)
  color_space_settings :
    aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings
    list;
  filter_settings :
    aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings
    list;
  timecode_burnin_settings :
    aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h265_settings__timecode_burnin_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h265_settings *)

type aws_medialive_channel__encoder_settings__video_descriptions__codec_settings = {
  frame_capture_settings :
    aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__frame_capture_settings
    list;
  h264_settings :
    aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h264_settings
    list;
  h265_settings :
    aws_medialive_channel__encoder_settings__video_descriptions__codec_settings__h265_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__video_descriptions__codec_settings *)

type aws_medialive_channel__encoder_settings__video_descriptions = {
  height : float option; [@option]  (** height *)
  name : string;  (** name *)
  respond_to_afd : string option; [@option]  (** respond_to_afd *)
  scaling_behavior : string option; [@option]
      (** scaling_behavior *)
  sharpness : float option; [@option]  (** sharpness *)
  width : float option; [@option]  (** width *)
  codec_settings :
    aws_medialive_channel__encoder_settings__video_descriptions__codec_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings__video_descriptions *)

type aws_medialive_channel__encoder_settings = {
  audio_descriptions :
    aws_medialive_channel__encoder_settings__audio_descriptions list;
  avail_blanking :
    aws_medialive_channel__encoder_settings__avail_blanking list;
  caption_descriptions :
    aws_medialive_channel__encoder_settings__caption_descriptions
    list;
  global_configuration :
    aws_medialive_channel__encoder_settings__global_configuration
    list;
  motion_graphics_configuration :
    aws_medialive_channel__encoder_settings__motion_graphics_configuration
    list;
  nielsen_configuration :
    aws_medialive_channel__encoder_settings__nielsen_configuration
    list;
  output_groups :
    aws_medialive_channel__encoder_settings__output_groups list;
  timecode_config :
    aws_medialive_channel__encoder_settings__timecode_config list;
  video_descriptions :
    aws_medialive_channel__encoder_settings__video_descriptions list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__encoder_settings *)

type aws_medialive_channel__input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__audio_silence_settings = {
  audio_selector_name : string;  (** audio_selector_name *)
  audio_silence_threshold_msec : float option; [@option]
      (** audio_silence_threshold_msec *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__audio_silence_settings *)

type aws_medialive_channel__input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__input_loss_settings = {
  input_loss_threshold_msec : float option; [@option]
      (** input_loss_threshold_msec *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__input_loss_settings *)

type aws_medialive_channel__input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__video_black_settings = {
  black_detect_threshold : float option; [@option]
      (** black_detect_threshold *)
  video_black_threshold_msec : float option; [@option]
      (** video_black_threshold_msec *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__video_black_settings *)

type aws_medialive_channel__input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings = {
  audio_silence_settings :
    aws_medialive_channel__input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__audio_silence_settings
    list;
  input_loss_settings :
    aws_medialive_channel__input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__input_loss_settings
    list;
  video_black_settings :
    aws_medialive_channel__input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__video_black_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings *)

type aws_medialive_channel__input_attachments__automatic_input_failover_settings__failover_condition = {
  failover_condition_settings :
    aws_medialive_channel__input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__input_attachments__automatic_input_failover_settings__failover_condition *)

type aws_medialive_channel__input_attachments__automatic_input_failover_settings = {
  error_clear_time_msec : float option; [@option]
      (** error_clear_time_msec *)
  input_preference : string option; [@option]
      (** input_preference *)
  secondary_input_id : string;  (** secondary_input_id *)
  failover_condition :
    aws_medialive_channel__input_attachments__automatic_input_failover_settings__failover_condition
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__input_attachments__automatic_input_failover_settings *)

type aws_medialive_channel__input_attachments__input_settings__audio_selector__selector_settings__audio_hls_rendition_selection = {
  group_id : string;  (** group_id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__input_attachments__input_settings__audio_selector__selector_settings__audio_hls_rendition_selection *)

type aws_medialive_channel__input_attachments__input_settings__audio_selector__selector_settings__audio_language_selection = {
  language_code : string;  (** language_code *)
  language_selection_policy : string option; [@option]
      (** language_selection_policy *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__input_attachments__input_settings__audio_selector__selector_settings__audio_language_selection *)

type aws_medialive_channel__input_attachments__input_settings__audio_selector__selector_settings__audio_pid_selection = {
  pid : float;  (** pid *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__input_attachments__input_settings__audio_selector__selector_settings__audio_pid_selection *)

type aws_medialive_channel__input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__dolby_e_decode = {
  program_selection : string;  (** program_selection *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__dolby_e_decode *)

type aws_medialive_channel__input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__tracks = {
  track : float;  (** track *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__tracks *)

type aws_medialive_channel__input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection = {
  dolby_e_decode :
    aws_medialive_channel__input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__dolby_e_decode
    list;
  tracks :
    aws_medialive_channel__input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__tracks
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection *)

type aws_medialive_channel__input_attachments__input_settings__audio_selector__selector_settings = {
  audio_hls_rendition_selection :
    aws_medialive_channel__input_attachments__input_settings__audio_selector__selector_settings__audio_hls_rendition_selection
    list;
  audio_language_selection :
    aws_medialive_channel__input_attachments__input_settings__audio_selector__selector_settings__audio_language_selection
    list;
  audio_pid_selection :
    aws_medialive_channel__input_attachments__input_settings__audio_selector__selector_settings__audio_pid_selection
    list;
  audio_track_selection :
    aws_medialive_channel__input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__input_attachments__input_settings__audio_selector__selector_settings *)

type aws_medialive_channel__input_attachments__input_settings__audio_selector = {
  name : string;  (** name *)
  selector_settings :
    aws_medialive_channel__input_attachments__input_settings__audio_selector__selector_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__input_attachments__input_settings__audio_selector *)

type aws_medialive_channel__input_attachments__input_settings__caption_selector__selector_settings__ancillary_source_settings = {
  source_ancillary_channel_number : float option; [@option]
      (** source_ancillary_channel_number *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__input_attachments__input_settings__caption_selector__selector_settings__ancillary_source_settings *)

type aws_medialive_channel__input_attachments__input_settings__caption_selector__selector_settings__arib_source_settings =
  unit
[@@deriving yojson_of]

type aws_medialive_channel__input_attachments__input_settings__caption_selector__selector_settings__dvb_sub_source_settings = {
  ocr_language : string option; [@option]  (** ocr_language *)
  pid : float option; [@option]  (** pid *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__input_attachments__input_settings__caption_selector__selector_settings__dvb_sub_source_settings *)

type aws_medialive_channel__input_attachments__input_settings__caption_selector__selector_settings__embedded_source_settings = {
  convert_608_to_708 : string option; [@option]
      (** convert_608_to_708 *)
  scte20_detection : string option; [@option]
      (** scte20_detection *)
  source_608_channel_number : float option; [@option]
      (** source_608_channel_number *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__input_attachments__input_settings__caption_selector__selector_settings__embedded_source_settings *)

type aws_medialive_channel__input_attachments__input_settings__caption_selector__selector_settings__scte20_source_settings = {
  convert_608_to_708 : string option; [@option]
      (** convert_608_to_708 *)
  source_608_channel_number : float option; [@option]
      (** source_608_channel_number *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__input_attachments__input_settings__caption_selector__selector_settings__scte20_source_settings *)

type aws_medialive_channel__input_attachments__input_settings__caption_selector__selector_settings__scte27_source_settings = {
  ocr_language : string option; [@option]  (** ocr_language *)
  pid : float option; [@option]  (** pid *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__input_attachments__input_settings__caption_selector__selector_settings__scte27_source_settings *)

type aws_medialive_channel__input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings__output_rectangle = {
  height : float;  (** height *)
  left_offset : float;  (** left_offset *)
  top_offset : float;  (** top_offset *)
  width : float;  (** width *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings__output_rectangle *)

type aws_medialive_channel__input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings = {
  page_number : string option; [@option]  (** page_number *)
  output_rectangle :
    aws_medialive_channel__input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings__output_rectangle
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings *)

type aws_medialive_channel__input_attachments__input_settings__caption_selector__selector_settings = {
  ancillary_source_settings :
    aws_medialive_channel__input_attachments__input_settings__caption_selector__selector_settings__ancillary_source_settings
    list;
  arib_source_settings :
    aws_medialive_channel__input_attachments__input_settings__caption_selector__selector_settings__arib_source_settings
    list;
  dvb_sub_source_settings :
    aws_medialive_channel__input_attachments__input_settings__caption_selector__selector_settings__dvb_sub_source_settings
    list;
  embedded_source_settings :
    aws_medialive_channel__input_attachments__input_settings__caption_selector__selector_settings__embedded_source_settings
    list;
  scte20_source_settings :
    aws_medialive_channel__input_attachments__input_settings__caption_selector__selector_settings__scte20_source_settings
    list;
  scte27_source_settings :
    aws_medialive_channel__input_attachments__input_settings__caption_selector__selector_settings__scte27_source_settings
    list;
  teletext_source_settings :
    aws_medialive_channel__input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__input_attachments__input_settings__caption_selector__selector_settings *)

type aws_medialive_channel__input_attachments__input_settings__caption_selector = {
  language_code : string option; [@option]  (** language_code *)
  name : string;  (** name *)
  selector_settings :
    aws_medialive_channel__input_attachments__input_settings__caption_selector__selector_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__input_attachments__input_settings__caption_selector *)

type aws_medialive_channel__input_attachments__input_settings__network_input_settings__hls_input_settings = {
  bandwidth : float option; [@option]  (** bandwidth *)
  buffer_segments : float option; [@option]  (** buffer_segments *)
  retries : float option; [@option]  (** retries *)
  retry_interval : float option; [@option]  (** retry_interval *)
  scte35_source : string option; [@option]  (** scte35_source *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__input_attachments__input_settings__network_input_settings__hls_input_settings *)

type aws_medialive_channel__input_attachments__input_settings__network_input_settings = {
  server_validation : string option; [@option]
      (** server_validation *)
  hls_input_settings :
    aws_medialive_channel__input_attachments__input_settings__network_input_settings__hls_input_settings
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__input_attachments__input_settings__network_input_settings *)

type aws_medialive_channel__input_attachments__input_settings__video_selector = {
  color_space : string option; [@option]  (** color_space *)
  color_space_usage : string option; [@option]
      (** color_space_usage *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__input_attachments__input_settings__video_selector *)

type aws_medialive_channel__input_attachments__input_settings = {
  deblock_filter : string option; [@option]  (** deblock_filter *)
  denoise_filter : string option; [@option]  (** denoise_filter *)
  filter_strength : float option; [@option]  (** filter_strength *)
  input_filter : string option; [@option]  (** input_filter *)
  scte35_pid : float option; [@option]  (** scte35_pid *)
  smpte2038_data_preference : string option; [@option]
      (** smpte2038_data_preference *)
  source_end_behavior : string option; [@option]
      (** source_end_behavior *)
  audio_selector :
    aws_medialive_channel__input_attachments__input_settings__audio_selector
    list;
  caption_selector :
    aws_medialive_channel__input_attachments__input_settings__caption_selector
    list;
  network_input_settings :
    aws_medialive_channel__input_attachments__input_settings__network_input_settings
    list;
  video_selector :
    aws_medialive_channel__input_attachments__input_settings__video_selector
    list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__input_attachments__input_settings *)

type aws_medialive_channel__input_attachments = {
  input_attachment_name : string;  (** input_attachment_name *)
  input_id : string;  (** input_id *)
  automatic_input_failover_settings :
    aws_medialive_channel__input_attachments__automatic_input_failover_settings
    list;
  input_settings :
    aws_medialive_channel__input_attachments__input_settings list;
}
[@@deriving yojson_of]
(** aws_medialive_channel__input_attachments *)

type aws_medialive_channel__input_specification = {
  codec : string;  (** codec *)
  input_resolution : string;  (** input_resolution *)
  maximum_bitrate : string;  (** maximum_bitrate *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__input_specification *)

type aws_medialive_channel__maintenance = {
  maintenance_day : string;  (** maintenance_day *)
  maintenance_start_time : string;  (** maintenance_start_time *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__maintenance *)

type aws_medialive_channel__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__timeouts *)

type aws_medialive_channel__vpc = {
  availability_zones : string list;  (** availability_zones *)
  network_interface_ids : string list;  (** network_interface_ids *)
  public_address_allocation_ids : string list;
      (** public_address_allocation_ids *)
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  subnet_ids : string list;  (** subnet_ids *)
}
[@@deriving yojson_of]
(** aws_medialive_channel__vpc *)

type aws_medialive_channel = {
  channel_class : string;  (** channel_class *)
  id : string option; [@option]  (** id *)
  log_level : string option; [@option]  (** log_level *)
  name : string;  (** name *)
  role_arn : string option; [@option]  (** role_arn *)
  start_channel : bool option; [@option]  (** start_channel *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  cdi_input_specification :
    aws_medialive_channel__cdi_input_specification list;
  destinations : aws_medialive_channel__destinations list;
  encoder_settings : aws_medialive_channel__encoder_settings list;
  input_attachments : aws_medialive_channel__input_attachments list;
  input_specification :
    aws_medialive_channel__input_specification list;
  maintenance : aws_medialive_channel__maintenance list;
  timeouts : aws_medialive_channel__timeouts option;
  vpc : aws_medialive_channel__vpc list;
}
[@@deriving yojson_of]
(** aws_medialive_channel *)

let aws_medialive_channel ?id ?log_level ?role_arn ?start_channel
    ?tags ?tags_all ?timeouts ~channel_class ~name
    ~cdi_input_specification ~destinations ~encoder_settings
    ~input_attachments ~input_specification ~maintenance ~vpc
    __resource_id =
  let __resource_type = "aws_medialive_channel" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_medialive_channel __resource);
  ()

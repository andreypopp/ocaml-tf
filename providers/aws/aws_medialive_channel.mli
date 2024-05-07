(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cdi_input_specification

val cdi_input_specification :
  resolution:string prop -> unit -> cdi_input_specification

type destinations__media_package_settings

val destinations__media_package_settings :
  channel_id:string prop ->
  unit ->
  destinations__media_package_settings

type destinations__multiplex_settings

val destinations__multiplex_settings :
  multiplex_id:string prop ->
  program_name:string prop ->
  unit ->
  destinations__multiplex_settings

type destinations__settings

val destinations__settings :
  ?password_param:string prop ->
  ?stream_name:string prop ->
  ?url:string prop ->
  ?username:string prop ->
  unit ->
  destinations__settings

type destinations

val destinations :
  ?multiplex_settings:destinations__multiplex_settings list ->
  id:string prop ->
  media_package_settings:destinations__media_package_settings list ->
  settings:destinations__settings list ->
  unit ->
  destinations

type encoder_settings__audio_descriptions__audio_normalization_settings

val encoder_settings__audio_descriptions__audio_normalization_settings :
  ?algorithm:string prop ->
  ?algorithm_control:string prop ->
  ?target_lkfs:float prop ->
  unit ->
  encoder_settings__audio_descriptions__audio_normalization_settings

type encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_cbet_settings

val encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_cbet_settings :
  cbet_check_digit_string:string prop ->
  cbet_stepaside:string prop ->
  csid:string prop ->
  unit ->
  encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_cbet_settings

type encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_naes_ii_nw_settings

val encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_naes_ii_nw_settings :
  check_digit_string:string prop ->
  sid:float prop ->
  unit ->
  encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_naes_ii_nw_settings

type encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings

val encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings :
  ?nielsen_distribution_type:string prop ->
  ?nielsen_cbet_settings:
    encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_cbet_settings
    list ->
  ?nielsen_naes_ii_nw_settings:
    encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings__nielsen_naes_ii_nw_settings
    list ->
  unit ->
  encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings

type encoder_settings__audio_descriptions__audio_watermark_settings

val encoder_settings__audio_descriptions__audio_watermark_settings :
  ?nielsen_watermarks_settings:
    encoder_settings__audio_descriptions__audio_watermark_settings__nielsen_watermarks_settings
    list ->
  unit ->
  encoder_settings__audio_descriptions__audio_watermark_settings

type encoder_settings__audio_descriptions__codec_settings__aac_settings

val encoder_settings__audio_descriptions__codec_settings__aac_settings :
  ?bitrate:float prop ->
  ?coding_mode:string prop ->
  ?input_type:string prop ->
  ?profile:string prop ->
  ?rate_control_mode:string prop ->
  ?raw_format:string prop ->
  ?sample_rate:float prop ->
  ?spec:string prop ->
  ?vbr_quality:string prop ->
  unit ->
  encoder_settings__audio_descriptions__codec_settings__aac_settings

type encoder_settings__audio_descriptions__codec_settings__ac3_settings

val encoder_settings__audio_descriptions__codec_settings__ac3_settings :
  ?bitrate:float prop ->
  ?bitstream_mode:string prop ->
  ?coding_mode:string prop ->
  ?dialnorm:float prop ->
  ?drc_profile:string prop ->
  ?lfe_filter:string prop ->
  ?metadata_control:string prop ->
  unit ->
  encoder_settings__audio_descriptions__codec_settings__ac3_settings

type encoder_settings__audio_descriptions__codec_settings__eac3_atmos_settings

val encoder_settings__audio_descriptions__codec_settings__eac3_atmos_settings :
  ?bitrate:float prop ->
  ?coding_mode:string prop ->
  ?dialnorm:float prop ->
  ?drc_line:string prop ->
  ?drc_rf:string prop ->
  ?height_trim:float prop ->
  ?surround_trim:float prop ->
  unit ->
  encoder_settings__audio_descriptions__codec_settings__eac3_atmos_settings

type encoder_settings__audio_descriptions__codec_settings__eac3_settings

val encoder_settings__audio_descriptions__codec_settings__eac3_settings :
  ?attenuation_control:string prop ->
  ?bitrate:float prop ->
  ?bitstream_mode:string prop ->
  ?coding_mode:string prop ->
  ?dc_filter:string prop ->
  ?dialnorm:float prop ->
  ?drc_line:string prop ->
  ?drc_rf:string prop ->
  ?lfe_control:string prop ->
  ?lfe_filter:string prop ->
  ?lo_ro_center_mix_level:float prop ->
  ?lo_ro_surround_mix_level:float prop ->
  ?lt_rt_center_mix_level:float prop ->
  ?lt_rt_surround_mix_level:float prop ->
  ?metadata_control:string prop ->
  ?passthrough_control:string prop ->
  ?phase_control:string prop ->
  ?stereo_downmix:string prop ->
  ?surround_ex_mode:string prop ->
  ?surround_mode:string prop ->
  unit ->
  encoder_settings__audio_descriptions__codec_settings__eac3_settings

type encoder_settings__audio_descriptions__codec_settings__mp2_settings

val encoder_settings__audio_descriptions__codec_settings__mp2_settings :
  ?bitrate:float prop ->
  ?coding_mode:string prop ->
  ?sample_rate:float prop ->
  unit ->
  encoder_settings__audio_descriptions__codec_settings__mp2_settings

type encoder_settings__audio_descriptions__codec_settings__pass_through_settings

val encoder_settings__audio_descriptions__codec_settings__pass_through_settings :
  unit ->
  encoder_settings__audio_descriptions__codec_settings__pass_through_settings

type encoder_settings__audio_descriptions__codec_settings__wav_settings

val encoder_settings__audio_descriptions__codec_settings__wav_settings :
  ?bit_depth:float prop ->
  ?coding_mode:string prop ->
  ?sample_rate:float prop ->
  unit ->
  encoder_settings__audio_descriptions__codec_settings__wav_settings

type encoder_settings__audio_descriptions__codec_settings

val encoder_settings__audio_descriptions__codec_settings :
  ?aac_settings:
    encoder_settings__audio_descriptions__codec_settings__aac_settings
    list ->
  ?ac3_settings:
    encoder_settings__audio_descriptions__codec_settings__ac3_settings
    list ->
  ?eac3_atmos_settings:
    encoder_settings__audio_descriptions__codec_settings__eac3_atmos_settings
    list ->
  ?eac3_settings:
    encoder_settings__audio_descriptions__codec_settings__eac3_settings
    list ->
  ?mp2_settings:
    encoder_settings__audio_descriptions__codec_settings__mp2_settings
    list ->
  ?pass_through_settings:
    encoder_settings__audio_descriptions__codec_settings__pass_through_settings
    list ->
  ?wav_settings:
    encoder_settings__audio_descriptions__codec_settings__wav_settings
    list ->
  unit ->
  encoder_settings__audio_descriptions__codec_settings

type encoder_settings__audio_descriptions__remix_settings__channel_mappings__input_channel_levels

val encoder_settings__audio_descriptions__remix_settings__channel_mappings__input_channel_levels :
  gain:float prop ->
  input_channel:float prop ->
  unit ->
  encoder_settings__audio_descriptions__remix_settings__channel_mappings__input_channel_levels

type encoder_settings__audio_descriptions__remix_settings__channel_mappings

val encoder_settings__audio_descriptions__remix_settings__channel_mappings :
  output_channel:float prop ->
  input_channel_levels:
    encoder_settings__audio_descriptions__remix_settings__channel_mappings__input_channel_levels
    list ->
  unit ->
  encoder_settings__audio_descriptions__remix_settings__channel_mappings

type encoder_settings__audio_descriptions__remix_settings

val encoder_settings__audio_descriptions__remix_settings :
  ?channels_in:float prop ->
  ?channels_out:float prop ->
  channel_mappings:
    encoder_settings__audio_descriptions__remix_settings__channel_mappings
    list ->
  unit ->
  encoder_settings__audio_descriptions__remix_settings

type encoder_settings__audio_descriptions

val encoder_settings__audio_descriptions :
  ?audio_type:string prop ->
  ?audio_type_control:string prop ->
  ?language_code:string prop ->
  ?language_code_control:string prop ->
  ?stream_name:string prop ->
  ?audio_normalization_settings:
    encoder_settings__audio_descriptions__audio_normalization_settings
    list ->
  ?audio_watermark_settings:
    encoder_settings__audio_descriptions__audio_watermark_settings
    list ->
  ?codec_settings:
    encoder_settings__audio_descriptions__codec_settings list ->
  ?remix_settings:
    encoder_settings__audio_descriptions__remix_settings list ->
  audio_selector_name:string prop ->
  name:string prop ->
  unit ->
  encoder_settings__audio_descriptions

type encoder_settings__avail_blanking__avail_blanking_image

val encoder_settings__avail_blanking__avail_blanking_image :
  ?password_param:string prop ->
  ?username:string prop ->
  uri:string prop ->
  unit ->
  encoder_settings__avail_blanking__avail_blanking_image

type encoder_settings__avail_blanking

val encoder_settings__avail_blanking :
  ?state:string prop ->
  ?avail_blanking_image:
    encoder_settings__avail_blanking__avail_blanking_image list ->
  unit ->
  encoder_settings__avail_blanking

type encoder_settings__caption_descriptions__destination_settings__arib_destination_settings

val encoder_settings__caption_descriptions__destination_settings__arib_destination_settings :
  unit ->
  encoder_settings__caption_descriptions__destination_settings__arib_destination_settings

type encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings__font

val encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings__font :
  ?password_param:string prop ->
  ?username:string prop ->
  uri:string prop ->
  unit ->
  encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings__font

type encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings

val encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings :
  ?alignment:string prop ->
  ?background_color:string prop ->
  ?background_opacity:float prop ->
  ?font_color:string prop ->
  ?font_opacity:float prop ->
  ?font_resolution:float prop ->
  ?font_size:string prop ->
  ?outline_size:float prop ->
  ?shadow_color:string prop ->
  ?shadow_opacity:float prop ->
  ?shadow_x_offset:float prop ->
  ?shadow_y_offset:float prop ->
  ?x_position:float prop ->
  ?y_position:float prop ->
  ?font:
    encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings__font
    list ->
  outline_color:string prop ->
  teletext_grid_control:string prop ->
  unit ->
  encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings

type encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings__font

val encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings__font :
  ?password_param:string prop ->
  ?username:string prop ->
  uri:string prop ->
  unit ->
  encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings__font

type encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings

val encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings :
  ?alignment:string prop ->
  ?background_color:string prop ->
  ?background_opacity:float prop ->
  ?font_color:string prop ->
  ?font_opacity:float prop ->
  ?font_resolution:float prop ->
  ?font_size:string prop ->
  ?outline_color:string prop ->
  ?outline_size:float prop ->
  ?shadow_color:string prop ->
  ?shadow_opacity:float prop ->
  ?shadow_x_offset:float prop ->
  ?shadow_y_offset:float prop ->
  ?teletext_grid_control:string prop ->
  ?x_position:float prop ->
  ?y_position:float prop ->
  ?font:
    encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings__font
    list ->
  unit ->
  encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings

type encoder_settings__caption_descriptions__destination_settings__ebu_tt_d_destination_settings

val encoder_settings__caption_descriptions__destination_settings__ebu_tt_d_destination_settings :
  ?copyright_holder:string prop ->
  ?fill_line_gap:string prop ->
  ?font_family:string prop ->
  ?style_control:string prop ->
  unit ->
  encoder_settings__caption_descriptions__destination_settings__ebu_tt_d_destination_settings

type encoder_settings__caption_descriptions__destination_settings__embedded_destination_settings

val encoder_settings__caption_descriptions__destination_settings__embedded_destination_settings :
  unit ->
  encoder_settings__caption_descriptions__destination_settings__embedded_destination_settings

type encoder_settings__caption_descriptions__destination_settings__embedded_plus_scte20_destination_settings

val encoder_settings__caption_descriptions__destination_settings__embedded_plus_scte20_destination_settings :
  unit ->
  encoder_settings__caption_descriptions__destination_settings__embedded_plus_scte20_destination_settings

type encoder_settings__caption_descriptions__destination_settings__rtmp_caption_info_destination_settings

val encoder_settings__caption_descriptions__destination_settings__rtmp_caption_info_destination_settings :
  unit ->
  encoder_settings__caption_descriptions__destination_settings__rtmp_caption_info_destination_settings

type encoder_settings__caption_descriptions__destination_settings__scte20_plus_embedded_destination_settings

val encoder_settings__caption_descriptions__destination_settings__scte20_plus_embedded_destination_settings :
  unit ->
  encoder_settings__caption_descriptions__destination_settings__scte20_plus_embedded_destination_settings

type encoder_settings__caption_descriptions__destination_settings__scte27_destination_settings

val encoder_settings__caption_descriptions__destination_settings__scte27_destination_settings :
  unit ->
  encoder_settings__caption_descriptions__destination_settings__scte27_destination_settings

type encoder_settings__caption_descriptions__destination_settings__smpte_tt_destination_settings

val encoder_settings__caption_descriptions__destination_settings__smpte_tt_destination_settings :
  unit ->
  encoder_settings__caption_descriptions__destination_settings__smpte_tt_destination_settings

type encoder_settings__caption_descriptions__destination_settings__teletext_destination_settings

val encoder_settings__caption_descriptions__destination_settings__teletext_destination_settings :
  unit ->
  encoder_settings__caption_descriptions__destination_settings__teletext_destination_settings

type encoder_settings__caption_descriptions__destination_settings__ttml_destination_settings

val encoder_settings__caption_descriptions__destination_settings__ttml_destination_settings :
  style_control:string prop ->
  unit ->
  encoder_settings__caption_descriptions__destination_settings__ttml_destination_settings

type encoder_settings__caption_descriptions__destination_settings__webvtt_destination_settings

val encoder_settings__caption_descriptions__destination_settings__webvtt_destination_settings :
  style_control:string prop ->
  unit ->
  encoder_settings__caption_descriptions__destination_settings__webvtt_destination_settings

type encoder_settings__caption_descriptions__destination_settings

val encoder_settings__caption_descriptions__destination_settings :
  ?arib_destination_settings:
    encoder_settings__caption_descriptions__destination_settings__arib_destination_settings
    list ->
  ?burn_in_destination_settings:
    encoder_settings__caption_descriptions__destination_settings__burn_in_destination_settings
    list ->
  ?dvb_sub_destination_settings:
    encoder_settings__caption_descriptions__destination_settings__dvb_sub_destination_settings
    list ->
  ?ebu_tt_d_destination_settings:
    encoder_settings__caption_descriptions__destination_settings__ebu_tt_d_destination_settings
    list ->
  ?embedded_destination_settings:
    encoder_settings__caption_descriptions__destination_settings__embedded_destination_settings
    list ->
  ?embedded_plus_scte20_destination_settings:
    encoder_settings__caption_descriptions__destination_settings__embedded_plus_scte20_destination_settings
    list ->
  ?rtmp_caption_info_destination_settings:
    encoder_settings__caption_descriptions__destination_settings__rtmp_caption_info_destination_settings
    list ->
  ?scte20_plus_embedded_destination_settings:
    encoder_settings__caption_descriptions__destination_settings__scte20_plus_embedded_destination_settings
    list ->
  ?scte27_destination_settings:
    encoder_settings__caption_descriptions__destination_settings__scte27_destination_settings
    list ->
  ?smpte_tt_destination_settings:
    encoder_settings__caption_descriptions__destination_settings__smpte_tt_destination_settings
    list ->
  ?teletext_destination_settings:
    encoder_settings__caption_descriptions__destination_settings__teletext_destination_settings
    list ->
  ?ttml_destination_settings:
    encoder_settings__caption_descriptions__destination_settings__ttml_destination_settings
    list ->
  ?webvtt_destination_settings:
    encoder_settings__caption_descriptions__destination_settings__webvtt_destination_settings
    list ->
  unit ->
  encoder_settings__caption_descriptions__destination_settings

type encoder_settings__caption_descriptions

val encoder_settings__caption_descriptions :
  ?accessibility:string prop ->
  ?language_code:string prop ->
  ?language_description:string prop ->
  ?destination_settings:
    encoder_settings__caption_descriptions__destination_settings list ->
  caption_selector_name:string prop ->
  name:string prop ->
  unit ->
  encoder_settings__caption_descriptions

type encoder_settings__global_configuration__input_loss_behavior__input_loss_image_slate

val encoder_settings__global_configuration__input_loss_behavior__input_loss_image_slate :
  ?password_param:string prop ->
  ?username:string prop ->
  uri:string prop ->
  unit ->
  encoder_settings__global_configuration__input_loss_behavior__input_loss_image_slate

type encoder_settings__global_configuration__input_loss_behavior

val encoder_settings__global_configuration__input_loss_behavior :
  ?black_frame_msec:float prop ->
  ?input_loss_image_color:string prop ->
  ?input_loss_image_type:string prop ->
  ?repeat_frame_msec:float prop ->
  ?input_loss_image_slate:
    encoder_settings__global_configuration__input_loss_behavior__input_loss_image_slate
    list ->
  unit ->
  encoder_settings__global_configuration__input_loss_behavior

type encoder_settings__global_configuration

val encoder_settings__global_configuration :
  ?initial_audio_gain:float prop ->
  ?input_end_action:string prop ->
  ?output_locking_mode:string prop ->
  ?output_timing_source:string prop ->
  ?support_low_framerate_inputs:string prop ->
  ?input_loss_behavior:
    encoder_settings__global_configuration__input_loss_behavior list ->
  unit ->
  encoder_settings__global_configuration

type encoder_settings__motion_graphics_configuration__motion_graphics_settings__html_motion_graphics_settings

val encoder_settings__motion_graphics_configuration__motion_graphics_settings__html_motion_graphics_settings :
  unit ->
  encoder_settings__motion_graphics_configuration__motion_graphics_settings__html_motion_graphics_settings

type encoder_settings__motion_graphics_configuration__motion_graphics_settings

val encoder_settings__motion_graphics_configuration__motion_graphics_settings :
  ?html_motion_graphics_settings:
    encoder_settings__motion_graphics_configuration__motion_graphics_settings__html_motion_graphics_settings
    list ->
  unit ->
  encoder_settings__motion_graphics_configuration__motion_graphics_settings

type encoder_settings__motion_graphics_configuration

val encoder_settings__motion_graphics_configuration :
  ?motion_graphics_insertion:string prop ->
  motion_graphics_settings:
    encoder_settings__motion_graphics_configuration__motion_graphics_settings
    list ->
  unit ->
  encoder_settings__motion_graphics_configuration

type encoder_settings__nielsen_configuration

val encoder_settings__nielsen_configuration :
  ?distributor_id:string prop ->
  ?nielsen_pcm_to_id3_tagging:string prop ->
  unit ->
  encoder_settings__nielsen_configuration

type encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings__archive_s3_settings

val encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings__archive_s3_settings :
  ?canned_acl:string prop ->
  unit ->
  encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings__archive_s3_settings

type encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings

val encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings :
  ?archive_s3_settings:
    encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings__archive_s3_settings
    list ->
  unit ->
  encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings

type encoder_settings__output_groups__output_group_settings__archive_group_settings__destination

val encoder_settings__output_groups__output_group_settings__archive_group_settings__destination :
  destination_ref_id:string prop ->
  unit ->
  encoder_settings__output_groups__output_group_settings__archive_group_settings__destination

type encoder_settings__output_groups__output_group_settings__archive_group_settings

val encoder_settings__output_groups__output_group_settings__archive_group_settings :
  ?rollover_interval:float prop ->
  ?archive_cdn_settings:
    encoder_settings__output_groups__output_group_settings__archive_group_settings__archive_cdn_settings
    list ->
  destination:
    encoder_settings__output_groups__output_group_settings__archive_group_settings__destination
    list ->
  unit ->
  encoder_settings__output_groups__output_group_settings__archive_group_settings

type encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__destination

val encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__destination :
  destination_ref_id:string prop ->
  unit ->
  encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__destination

type encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings__frame_capture_s3_settings

val encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings__frame_capture_s3_settings :
  ?canned_acl:string prop ->
  unit ->
  encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings__frame_capture_s3_settings

type encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings

val encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings :
  ?frame_capture_s3_settings:
    encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings__frame_capture_s3_settings
    list ->
  unit ->
  encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings

type encoder_settings__output_groups__output_group_settings__frame_capture_group_settings

val encoder_settings__output_groups__output_group_settings__frame_capture_group_settings :
  ?frame_capture_cdn_settings:
    encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__frame_capture_cdn_settings
    list ->
  destination:
    encoder_settings__output_groups__output_group_settings__frame_capture_group_settings__destination
    list ->
  unit ->
  encoder_settings__output_groups__output_group_settings__frame_capture_group_settings

type encoder_settings__output_groups__output_group_settings__hls_group_settings__caption_language_mappings

val encoder_settings__output_groups__output_group_settings__hls_group_settings__caption_language_mappings :
  caption_channel:float prop ->
  language_code:string prop ->
  language_description:string prop ->
  unit ->
  encoder_settings__output_groups__output_group_settings__hls_group_settings__caption_language_mappings

type encoder_settings__output_groups__output_group_settings__hls_group_settings__destination

val encoder_settings__output_groups__output_group_settings__hls_group_settings__destination :
  destination_ref_id:string prop ->
  unit ->
  encoder_settings__output_groups__output_group_settings__hls_group_settings__destination

type encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_akamai_settings

val encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_akamai_settings :
  ?connection_retry_interval:float prop ->
  ?filecache_duration:float prop ->
  ?http_transfer_mode:string prop ->
  ?num_retries:float prop ->
  ?restart_delay:float prop ->
  ?salt:string prop ->
  ?token:string prop ->
  unit ->
  encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_akamai_settings

type encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_basic_put_settings

val encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_basic_put_settings :
  ?connection_retry_interval:float prop ->
  ?filecache_duration:float prop ->
  ?num_retries:float prop ->
  ?restart_delay:float prop ->
  unit ->
  encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_basic_put_settings

type encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_media_store_settings

val encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_media_store_settings :
  ?connection_retry_interval:float prop ->
  ?filecache_duration:float prop ->
  ?media_store_storage_class:string prop ->
  ?num_retries:float prop ->
  ?restart_delay:float prop ->
  unit ->
  encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_media_store_settings

type encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_s3_settings

val encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_s3_settings :
  ?canned_acl:string prop ->
  unit ->
  encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_s3_settings

type encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_webdav_settings

val encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_webdav_settings :
  ?connection_retry_interval:float prop ->
  ?filecache_duration:float prop ->
  ?http_transfer_mode:string prop ->
  ?num_retries:float prop ->
  ?restart_delay:float prop ->
  unit ->
  encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_webdav_settings

type encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings

val encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings :
  ?hls_akamai_settings:
    encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_akamai_settings
    list ->
  ?hls_basic_put_settings:
    encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_basic_put_settings
    list ->
  ?hls_media_store_settings:
    encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_media_store_settings
    list ->
  ?hls_s3_settings:
    encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_s3_settings
    list ->
  ?hls_webdav_settings:
    encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings__hls_webdav_settings
    list ->
  unit ->
  encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings

type encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings__key_provider_server

val encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings__key_provider_server :
  ?password_param:string prop ->
  ?username:string prop ->
  uri:string prop ->
  unit ->
  encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings__key_provider_server

type encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings

val encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings :
  ?key_provider_server:
    encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings__key_provider_server
    list ->
  static_key_value:string prop ->
  unit ->
  encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings

type encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings

val encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings :
  ?static_key_settings:
    encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings__static_key_settings
    list ->
  unit ->
  encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings

type encoder_settings__output_groups__output_group_settings__hls_group_settings

val encoder_settings__output_groups__output_group_settings__hls_group_settings :
  ?ad_markers:string prop list ->
  ?base_url_content:string prop ->
  ?base_url_content1:string prop ->
  ?base_url_manifest:string prop ->
  ?base_url_manifest1:string prop ->
  ?caption_language_setting:string prop ->
  ?client_cache:string prop ->
  ?codec_specification:string prop ->
  ?constant_iv:string prop ->
  ?directory_structure:string prop ->
  ?discontinuity_tags:string prop ->
  ?encryption_type:string prop ->
  ?hls_id3_segment_tagging:string prop ->
  ?iframe_only_playlists:string prop ->
  ?incomplete_segment_behavior:string prop ->
  ?index_n_segments:float prop ->
  ?input_loss_action:string prop ->
  ?iv_in_manifest:string prop ->
  ?iv_source:string prop ->
  ?keep_segments:float prop ->
  ?key_format:string prop ->
  ?key_format_versions:string prop ->
  ?manifest_compression:string prop ->
  ?manifest_duration_format:string prop ->
  ?min_segment_length:float prop ->
  ?mode:string prop ->
  ?output_selection:string prop ->
  ?program_date_time:string prop ->
  ?program_date_time_clock:string prop ->
  ?program_date_time_period:float prop ->
  ?redundant_manifest:string prop ->
  ?segment_length:float prop ->
  ?segments_per_subdirectory:float prop ->
  ?stream_inf_resolution:string prop ->
  ?timed_metadata_id3_frame:string prop ->
  ?timed_metadata_id3_period:float prop ->
  ?timestamp_delta_milliseconds:float prop ->
  ?ts_file_mode:string prop ->
  ?hls_cdn_settings:
    encoder_settings__output_groups__output_group_settings__hls_group_settings__hls_cdn_settings
    list ->
  ?key_provider_settings:
    encoder_settings__output_groups__output_group_settings__hls_group_settings__key_provider_settings
    list ->
  caption_language_mappings:
    encoder_settings__output_groups__output_group_settings__hls_group_settings__caption_language_mappings
    list ->
  destination:
    encoder_settings__output_groups__output_group_settings__hls_group_settings__destination
    list ->
  unit ->
  encoder_settings__output_groups__output_group_settings__hls_group_settings

type encoder_settings__output_groups__output_group_settings__media_package_group_settings__destination

val encoder_settings__output_groups__output_group_settings__media_package_group_settings__destination :
  destination_ref_id:string prop ->
  unit ->
  encoder_settings__output_groups__output_group_settings__media_package_group_settings__destination

type encoder_settings__output_groups__output_group_settings__media_package_group_settings

val encoder_settings__output_groups__output_group_settings__media_package_group_settings :
  destination:
    encoder_settings__output_groups__output_group_settings__media_package_group_settings__destination
    list ->
  unit ->
  encoder_settings__output_groups__output_group_settings__media_package_group_settings

type encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings__destination

val encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings__destination :
  destination_ref_id:string prop ->
  unit ->
  encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings__destination

type encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings

val encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings :
  ?acquisition_point_id:string prop ->
  ?audio_only_timecode_control:string prop ->
  ?certificate_mode:string prop ->
  ?connection_retry_interval:float prop ->
  ?event_id:string prop ->
  ?event_id_mode:string prop ->
  ?event_stop_behavior:string prop ->
  ?filecache_duration:float prop ->
  ?fragment_length:float prop ->
  ?input_loss_action:string prop ->
  ?num_retries:float prop ->
  ?restart_delay:float prop ->
  ?segmentation_mode:string prop ->
  ?send_delay_ms:float prop ->
  ?sparse_track_type:string prop ->
  ?stream_manifest_behavior:string prop ->
  ?timestamp_offset:string prop ->
  ?timestamp_offset_mode:string prop ->
  destination:
    encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings__destination
    list ->
  unit ->
  encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings

type encoder_settings__output_groups__output_group_settings__multiplex_group_settings

val encoder_settings__output_groups__output_group_settings__multiplex_group_settings :
  unit ->
  encoder_settings__output_groups__output_group_settings__multiplex_group_settings

type encoder_settings__output_groups__output_group_settings__rtmp_group_settings

val encoder_settings__output_groups__output_group_settings__rtmp_group_settings :
  ?ad_markers:string prop list ->
  ?authentication_scheme:string prop ->
  ?cache_full_behavior:string prop ->
  ?cache_length:float prop ->
  ?caption_data:string prop ->
  ?input_loss_action:string prop ->
  ?restart_delay:float prop ->
  unit ->
  encoder_settings__output_groups__output_group_settings__rtmp_group_settings

type encoder_settings__output_groups__output_group_settings__udp_group_settings

val encoder_settings__output_groups__output_group_settings__udp_group_settings :
  ?input_loss_action:string prop ->
  ?timed_metadata_id3_frame:string prop ->
  ?timed_metadata_id3_period:float prop ->
  unit ->
  encoder_settings__output_groups__output_group_settings__udp_group_settings

type encoder_settings__output_groups__output_group_settings

val encoder_settings__output_groups__output_group_settings :
  ?archive_group_settings:
    encoder_settings__output_groups__output_group_settings__archive_group_settings
    list ->
  ?frame_capture_group_settings:
    encoder_settings__output_groups__output_group_settings__frame_capture_group_settings
    list ->
  ?hls_group_settings:
    encoder_settings__output_groups__output_group_settings__hls_group_settings
    list ->
  ?media_package_group_settings:
    encoder_settings__output_groups__output_group_settings__media_package_group_settings
    list ->
  ?ms_smooth_group_settings:
    encoder_settings__output_groups__output_group_settings__ms_smooth_group_settings
    list ->
  ?multiplex_group_settings:
    encoder_settings__output_groups__output_group_settings__multiplex_group_settings
    list ->
  ?rtmp_group_settings:
    encoder_settings__output_groups__output_group_settings__rtmp_group_settings
    list ->
  ?udp_group_settings:
    encoder_settings__output_groups__output_group_settings__udp_group_settings
    list ->
  unit ->
  encoder_settings__output_groups__output_group_settings

type encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_nit_settings

val encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_nit_settings :
  ?rep_interval:float prop ->
  network_id:float prop ->
  network_name:string prop ->
  unit ->
  encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_nit_settings

type encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_sdt_settings

val encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_sdt_settings :
  ?output_sdt:string prop ->
  ?rep_interval:float prop ->
  ?service_name:string prop ->
  ?service_provider_name:string prop ->
  unit ->
  encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_sdt_settings

type encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_tdt_settings

val encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_tdt_settings :
  ?rep_interval:float prop ->
  unit ->
  encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_tdt_settings

type encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings

val encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings :
  ?absent_input_audio_behavior:string prop ->
  ?arib:string prop ->
  ?arib_captions_pid:string prop ->
  ?arib_captions_pid_control:string prop ->
  ?audio_buffer_model:string prop ->
  ?audio_frames_per_pes:float prop ->
  ?audio_pids:string prop ->
  ?audio_stream_type:string prop ->
  ?bitrate:float prop ->
  ?buffer_model:string prop ->
  ?cc_descriptor:string prop ->
  ?dvb_sub_pids:string prop ->
  ?dvb_teletext_pid:string prop ->
  ?ebif:string prop ->
  ?ebp_audio_interval:string prop ->
  ?ebp_lookahead_ms:float prop ->
  ?ebp_placement:string prop ->
  ?ecm_pid:string prop ->
  ?es_rate_in_pes:string prop ->
  ?etv_platform_pid:string prop ->
  ?etv_signal_pid:string prop ->
  ?fragment_time:float prop ->
  ?klv:string prop ->
  ?klv_data_pids:string prop ->
  ?nielsen_id3_behavior:string prop ->
  ?null_packet_bitrate:float prop ->
  ?pat_interval:float prop ->
  ?pcr_control:string prop ->
  ?pcr_period:float prop ->
  ?pcr_pid:string prop ->
  ?pmt_interval:float prop ->
  ?pmt_pid:string prop ->
  ?program_num:float prop ->
  ?rate_mode:string prop ->
  ?scte27_pids:string prop ->
  ?scte35_control:string prop ->
  ?scte35_pid:string prop ->
  ?segmentation_markers:string prop ->
  ?segmentation_style:string prop ->
  ?segmentation_time:float prop ->
  ?timed_metadata_behavior:string prop ->
  ?timed_metadata_pid:string prop ->
  ?transport_stream_id:float prop ->
  ?video_pid:string prop ->
  ?dvb_nit_settings:
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_nit_settings
    list ->
  ?dvb_sdt_settings:
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_sdt_settings
    list ->
  ?dvb_tdt_settings:
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings__dvb_tdt_settings
    list ->
  unit ->
  encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings

type encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__raw_settings

val encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__raw_settings :
  unit ->
  encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__raw_settings

type encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings

val encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings :
  ?m2ts_settings:
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__m2ts_settings
    list ->
  ?raw_settings:
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings__raw_settings
    list ->
  unit ->
  encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings

type encoder_settings__output_groups__outputs__output_settings__archive_output_settings

val encoder_settings__output_groups__outputs__output_settings__archive_output_settings :
  ?extension:string prop ->
  ?name_modifier:string prop ->
  ?container_settings:
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings__container_settings
    list ->
  unit ->
  encoder_settings__output_groups__outputs__output_settings__archive_output_settings

type encoder_settings__output_groups__outputs__output_settings__frame_capture_output_settings

val encoder_settings__output_groups__outputs__output_settings__frame_capture_output_settings :
  ?name_modifier:string prop ->
  unit ->
  encoder_settings__output_groups__outputs__output_settings__frame_capture_output_settings

type encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings__audio_only_image

val encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings__audio_only_image :
  ?password_param:string prop ->
  ?username:string prop ->
  uri:string prop ->
  unit ->
  encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings__audio_only_image

type encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings

val encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings :
  ?audio_group_id:string prop ->
  ?audio_track_type:string prop ->
  ?segment_type:string prop ->
  ?audio_only_image:
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings__audio_only_image
    list ->
  unit ->
  encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings

type encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__fmp4_hls_settings

val encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__fmp4_hls_settings :
  ?audio_rendition_sets:string prop ->
  ?nielsen_id3_behavior:string prop ->
  ?timed_metadata_behavior:string prop ->
  unit ->
  encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__fmp4_hls_settings

type encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__frame_capture_hls_settings

val encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__frame_capture_hls_settings :
  unit ->
  encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__frame_capture_hls_settings

type encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings__m3u8_settings

val encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings__m3u8_settings :
  ?audio_frames_per_pes:float prop ->
  ?audio_pids:string prop ->
  ?ecm_pid:string prop ->
  ?nielsen_id3_behavior:string prop ->
  ?pat_interval:float prop ->
  ?pcr_control:string prop ->
  ?pcr_period:float prop ->
  ?pcr_pid:string prop ->
  ?pmt_interval:float prop ->
  ?pmt_pid:string prop ->
  ?program_num:float prop ->
  ?scte35_behavior:string prop ->
  ?scte35_pid:string prop ->
  ?timed_metadata_behavior:string prop ->
  ?timed_metadata_pid:string prop ->
  ?transport_stream_id:float prop ->
  ?video_pid:string prop ->
  unit ->
  encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings__m3u8_settings

type encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings

val encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings :
  ?audio_rendition_sets:string prop ->
  m3u8_settings:
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings__m3u8_settings
    list ->
  unit ->
  encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings

type encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings

val encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings :
  ?audio_only_hls_settings:
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__audio_only_hls_settings
    list ->
  ?fmp4_hls_settings:
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__fmp4_hls_settings
    list ->
  ?frame_capture_hls_settings:
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__frame_capture_hls_settings
    list ->
  ?standard_hls_settings:
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings__standard_hls_settings
    list ->
  unit ->
  encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings

type encoder_settings__output_groups__outputs__output_settings__hls_output_settings

val encoder_settings__output_groups__outputs__output_settings__hls_output_settings :
  ?h265_packaging_type:string prop ->
  ?name_modifier:string prop ->
  ?segment_modifier:string prop ->
  hls_settings:
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings__hls_settings
    list ->
  unit ->
  encoder_settings__output_groups__outputs__output_settings__hls_output_settings

type encoder_settings__output_groups__outputs__output_settings__media_package_output_settings

val encoder_settings__output_groups__outputs__output_settings__media_package_output_settings :
  unit ->
  encoder_settings__output_groups__outputs__output_settings__media_package_output_settings

type encoder_settings__output_groups__outputs__output_settings__ms_smooth_output_settings

val encoder_settings__output_groups__outputs__output_settings__ms_smooth_output_settings :
  ?h265_packaging_type:string prop ->
  ?name_modifier:string prop ->
  unit ->
  encoder_settings__output_groups__outputs__output_settings__ms_smooth_output_settings

type encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings__destination

val encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings__destination :
  destination_ref_id:string prop ->
  unit ->
  encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings__destination

type encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings

val encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings :
  destination:
    encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings__destination
    list ->
  unit ->
  encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings

type encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings__destination

val encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings__destination :
  destination_ref_id:string prop ->
  unit ->
  encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings__destination

type encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings

val encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings :
  ?certificate_mode:string prop ->
  ?connection_retry_interval:float prop ->
  ?num_retries:float prop ->
  destination:
    encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings__destination
    list ->
  unit ->
  encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings

type encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_nit_settings

val encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_nit_settings :
  ?rep_interval:float prop ->
  network_id:float prop ->
  network_name:string prop ->
  unit ->
  encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_nit_settings

type encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_sdt_settings

val encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_sdt_settings :
  ?output_sdt:string prop ->
  ?rep_interval:float prop ->
  ?service_name:string prop ->
  ?service_provider_name:string prop ->
  unit ->
  encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_sdt_settings

type encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_tdt_settings

val encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_tdt_settings :
  ?rep_interval:float prop ->
  unit ->
  encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_tdt_settings

type encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings

val encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings :
  ?absent_input_audio_behavior:string prop ->
  ?arib:string prop ->
  ?arib_captions_pid:string prop ->
  ?arib_captions_pid_control:string prop ->
  ?audio_buffer_model:string prop ->
  ?audio_frames_per_pes:float prop ->
  ?audio_pids:string prop ->
  ?audio_stream_type:string prop ->
  ?bitrate:float prop ->
  ?buffer_model:string prop ->
  ?cc_descriptor:string prop ->
  ?dvb_sub_pids:string prop ->
  ?dvb_teletext_pid:string prop ->
  ?ebif:string prop ->
  ?ebp_audio_interval:string prop ->
  ?ebp_lookahead_ms:float prop ->
  ?ebp_placement:string prop ->
  ?ecm_pid:string prop ->
  ?es_rate_in_pes:string prop ->
  ?etv_platform_pid:string prop ->
  ?etv_signal_pid:string prop ->
  ?fragment_time:float prop ->
  ?klv:string prop ->
  ?klv_data_pids:string prop ->
  ?nielsen_id3_behavior:string prop ->
  ?null_packet_bitrate:float prop ->
  ?pat_interval:float prop ->
  ?pcr_control:string prop ->
  ?pcr_period:float prop ->
  ?pcr_pid:string prop ->
  ?pmt_interval:float prop ->
  ?pmt_pid:string prop ->
  ?program_num:float prop ->
  ?rate_mode:string prop ->
  ?scte27_pids:string prop ->
  ?scte35_control:string prop ->
  ?scte35_pid:string prop ->
  ?segmentation_markers:string prop ->
  ?segmentation_style:string prop ->
  ?segmentation_time:float prop ->
  ?timed_metadata_behavior:string prop ->
  ?timed_metadata_pid:string prop ->
  ?transport_stream_id:float prop ->
  ?video_pid:string prop ->
  ?dvb_nit_settings:
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_nit_settings
    list ->
  ?dvb_sdt_settings:
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_sdt_settings
    list ->
  ?dvb_tdt_settings:
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings__dvb_tdt_settings
    list ->
  unit ->
  encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings

type encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings

val encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings :
  ?m2ts_settings:
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings__m2ts_settings
    list ->
  unit ->
  encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings

type encoder_settings__output_groups__outputs__output_settings__udp_output_settings__destination

val encoder_settings__output_groups__outputs__output_settings__udp_output_settings__destination :
  destination_ref_id:string prop ->
  unit ->
  encoder_settings__output_groups__outputs__output_settings__udp_output_settings__destination

type encoder_settings__output_groups__outputs__output_settings__udp_output_settings__fec_output_settings

val encoder_settings__output_groups__outputs__output_settings__udp_output_settings__fec_output_settings :
  ?column_depth:float prop ->
  ?include_fec:string prop ->
  ?row_length:float prop ->
  unit ->
  encoder_settings__output_groups__outputs__output_settings__udp_output_settings__fec_output_settings

type encoder_settings__output_groups__outputs__output_settings__udp_output_settings

val encoder_settings__output_groups__outputs__output_settings__udp_output_settings :
  ?buffer_msec:float prop ->
  ?fec_output_settings:
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__fec_output_settings
    list ->
  container_settings:
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__container_settings
    list ->
  destination:
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings__destination
    list ->
  unit ->
  encoder_settings__output_groups__outputs__output_settings__udp_output_settings

type encoder_settings__output_groups__outputs__output_settings

val encoder_settings__output_groups__outputs__output_settings :
  ?archive_output_settings:
    encoder_settings__output_groups__outputs__output_settings__archive_output_settings
    list ->
  ?frame_capture_output_settings:
    encoder_settings__output_groups__outputs__output_settings__frame_capture_output_settings
    list ->
  ?hls_output_settings:
    encoder_settings__output_groups__outputs__output_settings__hls_output_settings
    list ->
  ?media_package_output_settings:
    encoder_settings__output_groups__outputs__output_settings__media_package_output_settings
    list ->
  ?ms_smooth_output_settings:
    encoder_settings__output_groups__outputs__output_settings__ms_smooth_output_settings
    list ->
  ?multiplex_output_settings:
    encoder_settings__output_groups__outputs__output_settings__multiplex_output_settings
    list ->
  ?rtmp_output_settings:
    encoder_settings__output_groups__outputs__output_settings__rtmp_output_settings
    list ->
  ?udp_output_settings:
    encoder_settings__output_groups__outputs__output_settings__udp_output_settings
    list ->
  unit ->
  encoder_settings__output_groups__outputs__output_settings

type encoder_settings__output_groups__outputs

val encoder_settings__output_groups__outputs :
  ?audio_description_names:string prop list ->
  ?caption_description_names:string prop list ->
  ?output_name:string prop ->
  ?video_description_name:string prop ->
  output_settings:
    encoder_settings__output_groups__outputs__output_settings list ->
  unit ->
  encoder_settings__output_groups__outputs

type encoder_settings__output_groups

val encoder_settings__output_groups :
  ?name:string prop ->
  output_group_settings:
    encoder_settings__output_groups__output_group_settings list ->
  outputs:encoder_settings__output_groups__outputs list ->
  unit ->
  encoder_settings__output_groups

type encoder_settings__timecode_config

val encoder_settings__timecode_config :
  ?sync_threshold:float prop ->
  source:string prop ->
  unit ->
  encoder_settings__timecode_config

type encoder_settings__video_descriptions__codec_settings__frame_capture_settings

val encoder_settings__video_descriptions__codec_settings__frame_capture_settings :
  ?capture_interval:float prop ->
  ?capture_interval_units:string prop ->
  unit ->
  encoder_settings__video_descriptions__codec_settings__frame_capture_settings

type encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings__temporal_filter_settings

val encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings__temporal_filter_settings :
  ?post_filter_sharpening:string prop ->
  ?strength:string prop ->
  unit ->
  encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings__temporal_filter_settings

type encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings

val encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings :
  ?temporal_filter_settings:
    encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings__temporal_filter_settings
    list ->
  unit ->
  encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings

type encoder_settings__video_descriptions__codec_settings__h264_settings

val encoder_settings__video_descriptions__codec_settings__h264_settings :
  ?adaptive_quantization:string prop ->
  ?afd_signaling:string prop ->
  ?bitrate:float prop ->
  ?buf_fill_pct:float prop ->
  ?buf_size:float prop ->
  ?color_metadata:string prop ->
  ?entropy_encoding:string prop ->
  ?fixed_afd:string prop ->
  ?flicker_aq:string prop ->
  ?force_field_pictures:string prop ->
  ?framerate_control:string prop ->
  ?framerate_denominator:float prop ->
  ?framerate_numerator:float prop ->
  ?gop_b_reference:string prop ->
  ?gop_closed_cadence:float prop ->
  ?gop_num_b_frames:float prop ->
  ?gop_size:float prop ->
  ?gop_size_units:string prop ->
  ?level:string prop ->
  ?look_ahead_rate_control:string prop ->
  ?max_bitrate:float prop ->
  ?min_i_interval:float prop ->
  ?num_ref_frames:float prop ->
  ?par_control:string prop ->
  ?par_denominator:float prop ->
  ?par_numerator:float prop ->
  ?profile:string prop ->
  ?quality_level:string prop ->
  ?qvbr_quality_level:float prop ->
  ?rate_control_mode:string prop ->
  ?scan_type:string prop ->
  ?scene_change_detect:string prop ->
  ?slices:float prop ->
  ?softness:float prop ->
  ?spatial_aq:string prop ->
  ?subgop_length:string prop ->
  ?syntax:string prop ->
  ?temporal_aq:string prop ->
  ?timecode_insertion:string prop ->
  ?filter_settings:
    encoder_settings__video_descriptions__codec_settings__h264_settings__filter_settings
    list ->
  unit ->
  encoder_settings__video_descriptions__codec_settings__h264_settings

type encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__color_space_passthrough_settings

val encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__color_space_passthrough_settings :
  unit ->
  encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__color_space_passthrough_settings

type encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__dolby_vision81_settings

val encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__dolby_vision81_settings :
  unit ->
  encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__dolby_vision81_settings

type encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__hdr10_settings

val encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__hdr10_settings :
  ?max_cll:float prop ->
  ?max_fall:float prop ->
  unit ->
  encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__hdr10_settings

type encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec601_settings

val encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec601_settings :
  unit ->
  encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec601_settings

type encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec709_settings

val encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec709_settings :
  unit ->
  encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec709_settings

type encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings

val encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings :
  ?color_space_passthrough_settings:
    encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__color_space_passthrough_settings
    list ->
  ?dolby_vision81_settings:
    encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__dolby_vision81_settings
    list ->
  ?hdr10_settings:
    encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__hdr10_settings
    list ->
  ?rec601_settings:
    encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec601_settings
    list ->
  ?rec709_settings:
    encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings__rec709_settings
    list ->
  unit ->
  encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings

type encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings__temporal_filter_settings

val encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings__temporal_filter_settings :
  ?post_filter_sharpening:string prop ->
  ?strength:string prop ->
  unit ->
  encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings__temporal_filter_settings

type encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings

val encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings :
  ?temporal_filter_settings:
    encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings__temporal_filter_settings
    list ->
  unit ->
  encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings

type encoder_settings__video_descriptions__codec_settings__h265_settings__timecode_burnin_settings

val encoder_settings__video_descriptions__codec_settings__h265_settings__timecode_burnin_settings :
  ?prefix:string prop ->
  ?timecode_burnin_font_size:string prop ->
  ?timecode_burnin_position:string prop ->
  unit ->
  encoder_settings__video_descriptions__codec_settings__h265_settings__timecode_burnin_settings

type encoder_settings__video_descriptions__codec_settings__h265_settings

val encoder_settings__video_descriptions__codec_settings__h265_settings :
  ?adaptive_quantization:string prop ->
  ?afd_signaling:string prop ->
  ?alternative_transfer_function:string prop ->
  ?buf_size:float prop ->
  ?color_metadata:string prop ->
  ?fixed_afd:string prop ->
  ?flicker_aq:string prop ->
  ?gop_closed_cadence:float prop ->
  ?gop_size:float prop ->
  ?gop_size_units:string prop ->
  ?level:string prop ->
  ?look_ahead_rate_control:string prop ->
  ?max_bitrate:float prop ->
  ?min_i_interval:float prop ->
  ?par_denominator:float prop ->
  ?par_numerator:float prop ->
  ?profile:string prop ->
  ?qvbr_quality_level:float prop ->
  ?rate_control_mode:string prop ->
  ?scan_type:string prop ->
  ?scene_change_detect:string prop ->
  ?slices:float prop ->
  ?tier:string prop ->
  ?timecode_insertion:string prop ->
  ?color_space_settings:
    encoder_settings__video_descriptions__codec_settings__h265_settings__color_space_settings
    list ->
  ?filter_settings:
    encoder_settings__video_descriptions__codec_settings__h265_settings__filter_settings
    list ->
  ?timecode_burnin_settings:
    encoder_settings__video_descriptions__codec_settings__h265_settings__timecode_burnin_settings
    list ->
  bitrate:float prop ->
  framerate_denominator:float prop ->
  framerate_numerator:float prop ->
  unit ->
  encoder_settings__video_descriptions__codec_settings__h265_settings

type encoder_settings__video_descriptions__codec_settings

val encoder_settings__video_descriptions__codec_settings :
  ?frame_capture_settings:
    encoder_settings__video_descriptions__codec_settings__frame_capture_settings
    list ->
  ?h264_settings:
    encoder_settings__video_descriptions__codec_settings__h264_settings
    list ->
  ?h265_settings:
    encoder_settings__video_descriptions__codec_settings__h265_settings
    list ->
  unit ->
  encoder_settings__video_descriptions__codec_settings

type encoder_settings__video_descriptions

val encoder_settings__video_descriptions :
  ?height:float prop ->
  ?respond_to_afd:string prop ->
  ?scaling_behavior:string prop ->
  ?sharpness:float prop ->
  ?width:float prop ->
  ?codec_settings:
    encoder_settings__video_descriptions__codec_settings list ->
  name:string prop ->
  unit ->
  encoder_settings__video_descriptions

type encoder_settings

val encoder_settings :
  ?avail_blanking:encoder_settings__avail_blanking list ->
  ?caption_descriptions:encoder_settings__caption_descriptions list ->
  ?global_configuration:encoder_settings__global_configuration list ->
  ?motion_graphics_configuration:
    encoder_settings__motion_graphics_configuration list ->
  ?nielsen_configuration:encoder_settings__nielsen_configuration list ->
  ?video_descriptions:encoder_settings__video_descriptions list ->
  audio_descriptions:encoder_settings__audio_descriptions list ->
  output_groups:encoder_settings__output_groups list ->
  timecode_config:encoder_settings__timecode_config list ->
  unit ->
  encoder_settings

type input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__audio_silence_settings

val input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__audio_silence_settings :
  ?audio_silence_threshold_msec:float prop ->
  audio_selector_name:string prop ->
  unit ->
  input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__audio_silence_settings

type input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__input_loss_settings

val input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__input_loss_settings :
  ?input_loss_threshold_msec:float prop ->
  unit ->
  input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__input_loss_settings

type input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__video_black_settings

val input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__video_black_settings :
  ?black_detect_threshold:float prop ->
  ?video_black_threshold_msec:float prop ->
  unit ->
  input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__video_black_settings

type input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings

val input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings :
  ?audio_silence_settings:
    input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__audio_silence_settings
    list ->
  ?input_loss_settings:
    input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__input_loss_settings
    list ->
  ?video_black_settings:
    input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings__video_black_settings
    list ->
  unit ->
  input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings

type input_attachments__automatic_input_failover_settings__failover_condition

val input_attachments__automatic_input_failover_settings__failover_condition :
  ?failover_condition_settings:
    input_attachments__automatic_input_failover_settings__failover_condition__failover_condition_settings
    list ->
  unit ->
  input_attachments__automatic_input_failover_settings__failover_condition

type input_attachments__automatic_input_failover_settings

val input_attachments__automatic_input_failover_settings :
  ?error_clear_time_msec:float prop ->
  ?input_preference:string prop ->
  secondary_input_id:string prop ->
  failover_condition:
    input_attachments__automatic_input_failover_settings__failover_condition
    list ->
  unit ->
  input_attachments__automatic_input_failover_settings

type input_attachments__input_settings__audio_selector__selector_settings__audio_hls_rendition_selection

val input_attachments__input_settings__audio_selector__selector_settings__audio_hls_rendition_selection :
  group_id:string prop ->
  name:string prop ->
  unit ->
  input_attachments__input_settings__audio_selector__selector_settings__audio_hls_rendition_selection

type input_attachments__input_settings__audio_selector__selector_settings__audio_language_selection

val input_attachments__input_settings__audio_selector__selector_settings__audio_language_selection :
  ?language_selection_policy:string prop ->
  language_code:string prop ->
  unit ->
  input_attachments__input_settings__audio_selector__selector_settings__audio_language_selection

type input_attachments__input_settings__audio_selector__selector_settings__audio_pid_selection

val input_attachments__input_settings__audio_selector__selector_settings__audio_pid_selection :
  pid:float prop ->
  unit ->
  input_attachments__input_settings__audio_selector__selector_settings__audio_pid_selection

type input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__dolby_e_decode

val input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__dolby_e_decode :
  program_selection:string prop ->
  unit ->
  input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__dolby_e_decode

type input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__tracks

val input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__tracks :
  track:float prop ->
  unit ->
  input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__tracks

type input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection

val input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection :
  ?dolby_e_decode:
    input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__dolby_e_decode
    list ->
  tracks:
    input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection__tracks
    list ->
  unit ->
  input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection

type input_attachments__input_settings__audio_selector__selector_settings

val input_attachments__input_settings__audio_selector__selector_settings :
  ?audio_hls_rendition_selection:
    input_attachments__input_settings__audio_selector__selector_settings__audio_hls_rendition_selection
    list ->
  ?audio_language_selection:
    input_attachments__input_settings__audio_selector__selector_settings__audio_language_selection
    list ->
  ?audio_pid_selection:
    input_attachments__input_settings__audio_selector__selector_settings__audio_pid_selection
    list ->
  ?audio_track_selection:
    input_attachments__input_settings__audio_selector__selector_settings__audio_track_selection
    list ->
  unit ->
  input_attachments__input_settings__audio_selector__selector_settings

type input_attachments__input_settings__audio_selector

val input_attachments__input_settings__audio_selector :
  ?selector_settings:
    input_attachments__input_settings__audio_selector__selector_settings
    list ->
  name:string prop ->
  unit ->
  input_attachments__input_settings__audio_selector

type input_attachments__input_settings__caption_selector__selector_settings__ancillary_source_settings

val input_attachments__input_settings__caption_selector__selector_settings__ancillary_source_settings :
  ?source_ancillary_channel_number:float prop ->
  unit ->
  input_attachments__input_settings__caption_selector__selector_settings__ancillary_source_settings

type input_attachments__input_settings__caption_selector__selector_settings__arib_source_settings

val input_attachments__input_settings__caption_selector__selector_settings__arib_source_settings :
  unit ->
  input_attachments__input_settings__caption_selector__selector_settings__arib_source_settings

type input_attachments__input_settings__caption_selector__selector_settings__dvb_sub_source_settings

val input_attachments__input_settings__caption_selector__selector_settings__dvb_sub_source_settings :
  ?ocr_language:string prop ->
  ?pid:float prop ->
  unit ->
  input_attachments__input_settings__caption_selector__selector_settings__dvb_sub_source_settings

type input_attachments__input_settings__caption_selector__selector_settings__embedded_source_settings

val input_attachments__input_settings__caption_selector__selector_settings__embedded_source_settings :
  ?convert_608_to_708:string prop ->
  ?scte20_detection:string prop ->
  ?source_608_channel_number:float prop ->
  unit ->
  input_attachments__input_settings__caption_selector__selector_settings__embedded_source_settings

type input_attachments__input_settings__caption_selector__selector_settings__scte20_source_settings

val input_attachments__input_settings__caption_selector__selector_settings__scte20_source_settings :
  ?convert_608_to_708:string prop ->
  ?source_608_channel_number:float prop ->
  unit ->
  input_attachments__input_settings__caption_selector__selector_settings__scte20_source_settings

type input_attachments__input_settings__caption_selector__selector_settings__scte27_source_settings

val input_attachments__input_settings__caption_selector__selector_settings__scte27_source_settings :
  ?ocr_language:string prop ->
  ?pid:float prop ->
  unit ->
  input_attachments__input_settings__caption_selector__selector_settings__scte27_source_settings

type input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings__output_rectangle

val input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings__output_rectangle :
  height:float prop ->
  left_offset:float prop ->
  top_offset:float prop ->
  width:float prop ->
  unit ->
  input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings__output_rectangle

type input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings

val input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings :
  ?page_number:string prop ->
  ?output_rectangle:
    input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings__output_rectangle
    list ->
  unit ->
  input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings

type input_attachments__input_settings__caption_selector__selector_settings

val input_attachments__input_settings__caption_selector__selector_settings :
  ?ancillary_source_settings:
    input_attachments__input_settings__caption_selector__selector_settings__ancillary_source_settings
    list ->
  ?arib_source_settings:
    input_attachments__input_settings__caption_selector__selector_settings__arib_source_settings
    list ->
  ?dvb_sub_source_settings:
    input_attachments__input_settings__caption_selector__selector_settings__dvb_sub_source_settings
    list ->
  ?embedded_source_settings:
    input_attachments__input_settings__caption_selector__selector_settings__embedded_source_settings
    list ->
  ?scte20_source_settings:
    input_attachments__input_settings__caption_selector__selector_settings__scte20_source_settings
    list ->
  ?scte27_source_settings:
    input_attachments__input_settings__caption_selector__selector_settings__scte27_source_settings
    list ->
  ?teletext_source_settings:
    input_attachments__input_settings__caption_selector__selector_settings__teletext_source_settings
    list ->
  unit ->
  input_attachments__input_settings__caption_selector__selector_settings

type input_attachments__input_settings__caption_selector

val input_attachments__input_settings__caption_selector :
  ?language_code:string prop ->
  ?selector_settings:
    input_attachments__input_settings__caption_selector__selector_settings
    list ->
  name:string prop ->
  unit ->
  input_attachments__input_settings__caption_selector

type input_attachments__input_settings__network_input_settings__hls_input_settings

val input_attachments__input_settings__network_input_settings__hls_input_settings :
  ?bandwidth:float prop ->
  ?buffer_segments:float prop ->
  ?retries:float prop ->
  ?retry_interval:float prop ->
  ?scte35_source:string prop ->
  unit ->
  input_attachments__input_settings__network_input_settings__hls_input_settings

type input_attachments__input_settings__network_input_settings

val input_attachments__input_settings__network_input_settings :
  ?server_validation:string prop ->
  ?hls_input_settings:
    input_attachments__input_settings__network_input_settings__hls_input_settings
    list ->
  unit ->
  input_attachments__input_settings__network_input_settings

type input_attachments__input_settings__video_selector

val input_attachments__input_settings__video_selector :
  ?color_space:string prop ->
  ?color_space_usage:string prop ->
  unit ->
  input_attachments__input_settings__video_selector

type input_attachments__input_settings

val input_attachments__input_settings :
  ?deblock_filter:string prop ->
  ?denoise_filter:string prop ->
  ?filter_strength:float prop ->
  ?input_filter:string prop ->
  ?scte35_pid:float prop ->
  ?smpte2038_data_preference:string prop ->
  ?source_end_behavior:string prop ->
  ?audio_selector:
    input_attachments__input_settings__audio_selector list ->
  ?caption_selector:
    input_attachments__input_settings__caption_selector list ->
  ?network_input_settings:
    input_attachments__input_settings__network_input_settings list ->
  ?video_selector:
    input_attachments__input_settings__video_selector list ->
  unit ->
  input_attachments__input_settings

type input_attachments

val input_attachments :
  ?automatic_input_failover_settings:
    input_attachments__automatic_input_failover_settings list ->
  ?input_settings:input_attachments__input_settings list ->
  input_attachment_name:string prop ->
  input_id:string prop ->
  unit ->
  input_attachments

type input_specification

val input_specification :
  codec:string prop ->
  input_resolution:string prop ->
  maximum_bitrate:string prop ->
  unit ->
  input_specification

type maintenance

val maintenance :
  maintenance_day:string prop ->
  maintenance_start_time:string prop ->
  unit ->
  maintenance

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type vpc

val vpc :
  ?security_group_ids:string prop list ->
  public_address_allocation_ids:string prop list ->
  subnet_ids:string prop list ->
  unit ->
  vpc

type aws_medialive_channel

val aws_medialive_channel :
  ?id:string prop ->
  ?log_level:string prop ->
  ?role_arn:string prop ->
  ?start_channel:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?cdi_input_specification:cdi_input_specification list ->
  ?maintenance:maintenance list ->
  ?timeouts:timeouts ->
  ?vpc:vpc list ->
  channel_class:string prop ->
  name:string prop ->
  destinations:destinations list ->
  encoder_settings:encoder_settings list ->
  input_attachments:input_attachments list ->
  input_specification:input_specification list ->
  unit ->
  aws_medialive_channel

val yojson_of_aws_medialive_channel : aws_medialive_channel -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?log_level:string prop ->
  ?role_arn:string prop ->
  ?start_channel:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?cdi_input_specification:cdi_input_specification list ->
  ?maintenance:maintenance list ->
  ?timeouts:timeouts ->
  ?vpc:vpc list ->
  channel_class:string prop ->
  name:string prop ->
  destinations:destinations list ->
  encoder_settings:encoder_settings list ->
  input_attachments:input_attachments list ->
  input_specification:input_specification list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?log_level:string prop ->
  ?role_arn:string prop ->
  ?start_channel:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?cdi_input_specification:cdi_input_specification list ->
  ?maintenance:maintenance list ->
  ?timeouts:timeouts ->
  ?vpc:vpc list ->
  channel_class:string prop ->
  name:string prop ->
  destinations:destinations list ->
  encoder_settings:encoder_settings list ->
  input_attachments:input_attachments list ->
  input_specification:input_specification list ->
  string ->
  t Tf_core.resource

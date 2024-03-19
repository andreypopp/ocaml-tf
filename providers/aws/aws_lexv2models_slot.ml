(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type multiple_values_setting = {
  allow_multiple_values : bool prop option; [@option]
      (** allow_multiple_values *)
}
[@@deriving yojson_of]
(** multiple_values_setting *)

type obfuscation_setting = {
  obfuscation_setting_type : string prop;
      (** obfuscation_setting_type *)
}
[@@deriving yojson_of]
(** obfuscation_setting *)

type timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** timeouts *)

type value_elicitation_setting__default_value_specification__default_value_list = {
  default_value : string prop;  (** default_value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__default_value_specification__default_value_list *)

type value_elicitation_setting__default_value_specification = {
  default_value_list :
    value_elicitation_setting__default_value_specification__default_value_list
    list;
}
[@@deriving yojson_of]
(** value_elicitation_setting__default_value_specification *)

type value_elicitation_setting__prompt_specification__message_group__message__custom_playload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__prompt_specification__message_group__message__custom_playload *)

type value_elicitation_setting__prompt_specification__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__prompt_specification__message_group__message__image_response_card__button *)

type value_elicitation_setting__prompt_specification__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    value_elicitation_setting__prompt_specification__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** value_elicitation_setting__prompt_specification__message_group__message__image_response_card *)

type value_elicitation_setting__prompt_specification__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__prompt_specification__message_group__message__plain_text_message *)

type value_elicitation_setting__prompt_specification__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__prompt_specification__message_group__message__ssml_message *)

type value_elicitation_setting__prompt_specification__message_group__message = {
  custom_playload :
    value_elicitation_setting__prompt_specification__message_group__message__custom_playload
    list;
  image_response_card :
    value_elicitation_setting__prompt_specification__message_group__message__image_response_card
    list;
  plain_text_message :
    value_elicitation_setting__prompt_specification__message_group__message__plain_text_message
    list;
  ssml_message :
    value_elicitation_setting__prompt_specification__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** value_elicitation_setting__prompt_specification__message_group__message *)

type value_elicitation_setting__prompt_specification__message_group__variation__custom_playload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__prompt_specification__message_group__variation__custom_playload *)

type value_elicitation_setting__prompt_specification__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__prompt_specification__message_group__variation__image_response_card__button *)

type value_elicitation_setting__prompt_specification__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    value_elicitation_setting__prompt_specification__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** value_elicitation_setting__prompt_specification__message_group__variation__image_response_card *)

type value_elicitation_setting__prompt_specification__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__prompt_specification__message_group__variation__plain_text_message *)

type value_elicitation_setting__prompt_specification__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__prompt_specification__message_group__variation__ssml_message *)

type value_elicitation_setting__prompt_specification__message_group__variation = {
  custom_playload :
    value_elicitation_setting__prompt_specification__message_group__variation__custom_playload
    list;
  image_response_card :
    value_elicitation_setting__prompt_specification__message_group__variation__image_response_card
    list;
  plain_text_message :
    value_elicitation_setting__prompt_specification__message_group__variation__plain_text_message
    list;
  ssml_message :
    value_elicitation_setting__prompt_specification__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** value_elicitation_setting__prompt_specification__message_group__variation *)

type value_elicitation_setting__prompt_specification__message_group = {
  message :
    value_elicitation_setting__prompt_specification__message_group__message
    list;
  variation :
    value_elicitation_setting__prompt_specification__message_group__variation
    list;
}
[@@deriving yojson_of]
(** value_elicitation_setting__prompt_specification__message_group *)

type value_elicitation_setting__prompt_specification__prompt_attempts_specification__allowed_input_types = {
  allow_audio_input : bool prop;  (** allow_audio_input *)
  allow_dtmf_input : bool prop;  (** allow_dtmf_input *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__prompt_specification__prompt_attempts_specification__allowed_input_types *)

type value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__audio_specification = {
  end_timeout_ms : float prop;  (** end_timeout_ms *)
  max_length_ms : float prop;  (** max_length_ms *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__audio_specification *)

type value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__dtmf_specification = {
  deletion_character : string prop;  (** deletion_character *)
  end_character : string prop;  (** end_character *)
  end_timeout_ms : float prop;  (** end_timeout_ms *)
  max_length : float prop;  (** max_length *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__dtmf_specification *)

type value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification = {
  start_timeout_ms : float prop;  (** start_timeout_ms *)
  audio_specification :
    value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__audio_specification
    list;
  dtmf_specification :
    value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__dtmf_specification
    list;
}
[@@deriving yojson_of]
(** value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification *)

type value_elicitation_setting__prompt_specification__prompt_attempts_specification__text_input_specification = {
  start_timeout_ms : float prop;  (** start_timeout_ms *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__prompt_specification__prompt_attempts_specification__text_input_specification *)

type value_elicitation_setting__prompt_specification__prompt_attempts_specification = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  map_block_key : string prop;  (** map_block_key *)
  allowed_input_types :
    value_elicitation_setting__prompt_specification__prompt_attempts_specification__allowed_input_types
    list;
  audio_and_dtmf_input_specification :
    value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification
    list;
  text_input_specification :
    value_elicitation_setting__prompt_specification__prompt_attempts_specification__text_input_specification
    list;
}
[@@deriving yojson_of]
(** value_elicitation_setting__prompt_specification__prompt_attempts_specification *)

type value_elicitation_setting__prompt_specification = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  max_retries : float prop;  (** max_retries *)
  message_selection_strategy : string prop option; [@option]
      (** message_selection_strategy *)
  message_group :
    value_elicitation_setting__prompt_specification__message_group
    list;
  prompt_attempts_specification :
    value_elicitation_setting__prompt_specification__prompt_attempts_specification
    list;
}
[@@deriving yojson_of]
(** value_elicitation_setting__prompt_specification *)

type value_elicitation_setting__sample_utterance = {
  utterance : string prop;  (** utterance *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__sample_utterance *)

type value_elicitation_setting__slot_resolution_setting = {
  slot_resolution_strategy : string prop;
      (** slot_resolution_strategy *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__slot_resolution_setting *)

type value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__custom_playload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__custom_playload *)

type value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card__button *)

type value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card *)

type value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__plain_text_message *)

type value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__ssml_message *)

type value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message = {
  custom_playload :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__custom_playload
    list;
  image_response_card :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card
    list;
  plain_text_message :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__plain_text_message
    list;
  ssml_message :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message *)

type value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__custom_playload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__custom_playload *)

type value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card__button *)

type value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card *)

type value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__plain_text_message *)

type value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__ssml_message *)

type value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation = {
  custom_playload :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__custom_playload
    list;
  image_response_card :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation *)

type value_elicitation_setting__wait_and_continue_specification__continue_response__message_group = {
  message :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message
    list;
  variation :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__continue_response__message_group *)

type value_elicitation_setting__wait_and_continue_specification__continue_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group
    list;
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__continue_response *)

type value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__custom_playload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__custom_playload *)

type value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card__button *)

type value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card *)

type value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__plain_text_message *)

type value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__ssml_message *)

type value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message = {
  custom_playload :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__custom_playload
    list;
  image_response_card :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card
    list;
  plain_text_message :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__plain_text_message
    list;
  ssml_message :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message *)

type value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__custom_playload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__custom_playload *)

type value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card__button *)

type value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card *)

type value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__plain_text_message *)

type value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__ssml_message *)

type value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation = {
  custom_playload :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__custom_playload
    list;
  image_response_card :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation *)

type value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group = {
  message :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message
    list;
  variation :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group *)

type value_elicitation_setting__wait_and_continue_specification__still_waiting_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  frequency_in_seconds : float prop;  (** frequency_in_seconds *)
  timeout_in_seconds : float prop;  (** timeout_in_seconds *)
  message_group :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group
    list;
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__still_waiting_response *)

type value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__custom_playload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__custom_playload *)

type value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card__button *)

type value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card *)

type value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__plain_text_message *)

type value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__ssml_message *)

type value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message = {
  custom_playload :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__custom_playload
    list;
  image_response_card :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card
    list;
  plain_text_message :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__plain_text_message
    list;
  ssml_message :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message *)

type value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__custom_playload = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__custom_playload *)

type value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card__button = {
  text : string prop;  (** text *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card__button *)

type value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card = {
  image_url : string prop option; [@option]  (** image_url *)
  subtitle : string prop option; [@option]  (** subtitle *)
  title : string prop;  (** title *)
  button :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card *)

type value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__plain_text_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__plain_text_message *)

type value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__ssml_message = {
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__ssml_message *)

type value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation = {
  custom_playload :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__custom_playload
    list;
  image_response_card :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation *)

type value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group = {
  message :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message
    list;
  variation :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group *)

type value_elicitation_setting__wait_and_continue_specification__waiting_response = {
  allow_interrupt : bool prop option; [@option]
      (** allow_interrupt *)
  message_group :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group
    list;
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification__waiting_response *)

type value_elicitation_setting__wait_and_continue_specification = {
  active : bool prop option; [@option]  (** active *)
  continue_response :
    value_elicitation_setting__wait_and_continue_specification__continue_response
    list;
  still_waiting_response :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response
    list;
  waiting_response :
    value_elicitation_setting__wait_and_continue_specification__waiting_response
    list;
}
[@@deriving yojson_of]
(** value_elicitation_setting__wait_and_continue_specification *)

type value_elicitation_setting = {
  slot_constraint : string prop;  (** slot_constraint *)
  default_value_specification :
    value_elicitation_setting__default_value_specification list;
  prompt_specification :
    value_elicitation_setting__prompt_specification list;
  sample_utterance :
    value_elicitation_setting__sample_utterance list;
  slot_resolution_setting :
    value_elicitation_setting__slot_resolution_setting list;
  wait_and_continue_specification :
    value_elicitation_setting__wait_and_continue_specification list;
}
[@@deriving yojson_of]
(** value_elicitation_setting *)

type aws_lexv2models_slot = {
  bot_id : string prop;  (** bot_id *)
  bot_version : string prop;  (** bot_version *)
  description : string prop option; [@option]  (** description *)
  intent_id : string prop;  (** intent_id *)
  locale_id : string prop;  (** locale_id *)
  name : string prop;  (** name *)
  slot_type_id : string prop option; [@option]  (** slot_type_id *)
  multiple_values_setting : multiple_values_setting list;
  obfuscation_setting : obfuscation_setting list;
  timeouts : timeouts option;
  value_elicitation_setting : value_elicitation_setting list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot *)

let multiple_values_setting ?allow_multiple_values () :
    multiple_values_setting =
  { allow_multiple_values }

let obfuscation_setting ~obfuscation_setting_type () :
    obfuscation_setting =
  { obfuscation_setting_type }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let value_elicitation_setting__default_value_specification__default_value_list
    ~default_value () :
    value_elicitation_setting__default_value_specification__default_value_list
    =
  { default_value }

let value_elicitation_setting__default_value_specification
    ~default_value_list () :
    value_elicitation_setting__default_value_specification =
  { default_value_list }

let value_elicitation_setting__prompt_specification__message_group__message__custom_playload
    ~value () :
    value_elicitation_setting__prompt_specification__message_group__message__custom_playload
    =
  { value }

let value_elicitation_setting__prompt_specification__message_group__message__image_response_card__button
    ~text ~value () :
    value_elicitation_setting__prompt_specification__message_group__message__image_response_card__button
    =
  { text; value }

let value_elicitation_setting__prompt_specification__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    value_elicitation_setting__prompt_specification__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let value_elicitation_setting__prompt_specification__message_group__message__plain_text_message
    ~value () :
    value_elicitation_setting__prompt_specification__message_group__message__plain_text_message
    =
  { value }

let value_elicitation_setting__prompt_specification__message_group__message__ssml_message
    ~value () :
    value_elicitation_setting__prompt_specification__message_group__message__ssml_message
    =
  { value }

let value_elicitation_setting__prompt_specification__message_group__message
    ~custom_playload ~image_response_card ~plain_text_message
    ~ssml_message () :
    value_elicitation_setting__prompt_specification__message_group__message
    =
  {
    custom_playload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let value_elicitation_setting__prompt_specification__message_group__variation__custom_playload
    ~value () :
    value_elicitation_setting__prompt_specification__message_group__variation__custom_playload
    =
  { value }

let value_elicitation_setting__prompt_specification__message_group__variation__image_response_card__button
    ~text ~value () :
    value_elicitation_setting__prompt_specification__message_group__variation__image_response_card__button
    =
  { text; value }

let value_elicitation_setting__prompt_specification__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    value_elicitation_setting__prompt_specification__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let value_elicitation_setting__prompt_specification__message_group__variation__plain_text_message
    ~value () :
    value_elicitation_setting__prompt_specification__message_group__variation__plain_text_message
    =
  { value }

let value_elicitation_setting__prompt_specification__message_group__variation__ssml_message
    ~value () :
    value_elicitation_setting__prompt_specification__message_group__variation__ssml_message
    =
  { value }

let value_elicitation_setting__prompt_specification__message_group__variation
    ~custom_playload ~image_response_card ~plain_text_message
    ~ssml_message () :
    value_elicitation_setting__prompt_specification__message_group__variation
    =
  {
    custom_playload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let value_elicitation_setting__prompt_specification__message_group
    ~message ~variation () :
    value_elicitation_setting__prompt_specification__message_group =
  { message; variation }

let value_elicitation_setting__prompt_specification__prompt_attempts_specification__allowed_input_types
    ~allow_audio_input ~allow_dtmf_input () :
    value_elicitation_setting__prompt_specification__prompt_attempts_specification__allowed_input_types
    =
  { allow_audio_input; allow_dtmf_input }

let value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__audio_specification
    ~end_timeout_ms ~max_length_ms () :
    value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__audio_specification
    =
  { end_timeout_ms; max_length_ms }

let value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__dtmf_specification
    ~deletion_character ~end_character ~end_timeout_ms ~max_length ()
    :
    value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__dtmf_specification
    =
  { deletion_character; end_character; end_timeout_ms; max_length }

let value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification
    ~start_timeout_ms ~audio_specification ~dtmf_specification () :
    value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification
    =
  { start_timeout_ms; audio_specification; dtmf_specification }

let value_elicitation_setting__prompt_specification__prompt_attempts_specification__text_input_specification
    ~start_timeout_ms () :
    value_elicitation_setting__prompt_specification__prompt_attempts_specification__text_input_specification
    =
  { start_timeout_ms }

let value_elicitation_setting__prompt_specification__prompt_attempts_specification
    ?allow_interrupt ~map_block_key ~allowed_input_types
    ~audio_and_dtmf_input_specification ~text_input_specification ()
    :
    value_elicitation_setting__prompt_specification__prompt_attempts_specification
    =
  {
    allow_interrupt;
    map_block_key;
    allowed_input_types;
    audio_and_dtmf_input_specification;
    text_input_specification;
  }

let value_elicitation_setting__prompt_specification ?allow_interrupt
    ?message_selection_strategy ~max_retries ~message_group
    ~prompt_attempts_specification () :
    value_elicitation_setting__prompt_specification =
  {
    allow_interrupt;
    max_retries;
    message_selection_strategy;
    message_group;
    prompt_attempts_specification;
  }

let value_elicitation_setting__sample_utterance ~utterance () :
    value_elicitation_setting__sample_utterance =
  { utterance }

let value_elicitation_setting__slot_resolution_setting
    ~slot_resolution_strategy () :
    value_elicitation_setting__slot_resolution_setting =
  { slot_resolution_strategy }

let value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__custom_playload
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__custom_playload
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card__button
    ~text ~value () :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card__button
    =
  { text; value }

let value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__plain_text_message
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__plain_text_message
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__ssml_message
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__ssml_message
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message
    ~custom_playload ~image_response_card ~plain_text_message
    ~ssml_message () :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message
    =
  {
    custom_playload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__custom_playload
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__custom_playload
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card__button
    ~text ~value () :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card__button
    =
  { text; value }

let value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__plain_text_message
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__plain_text_message
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__ssml_message
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__ssml_message
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation
    ~custom_playload ~image_response_card ~plain_text_message
    ~ssml_message () :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation
    =
  {
    custom_playload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let value_elicitation_setting__wait_and_continue_specification__continue_response__message_group
    ~message ~variation () :
    value_elicitation_setting__wait_and_continue_specification__continue_response__message_group
    =
  { message; variation }

let value_elicitation_setting__wait_and_continue_specification__continue_response
    ?allow_interrupt ~message_group () :
    value_elicitation_setting__wait_and_continue_specification__continue_response
    =
  { allow_interrupt; message_group }

let value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__custom_playload
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__custom_playload
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card__button
    ~text ~value () :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card__button
    =
  { text; value }

let value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__plain_text_message
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__plain_text_message
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__ssml_message
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__ssml_message
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message
    ~custom_playload ~image_response_card ~plain_text_message
    ~ssml_message () :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message
    =
  {
    custom_playload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__custom_playload
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__custom_playload
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card__button
    ~text ~value () :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card__button
    =
  { text; value }

let value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__plain_text_message
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__plain_text_message
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__ssml_message
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__ssml_message
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation
    ~custom_playload ~image_response_card ~plain_text_message
    ~ssml_message () :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation
    =
  {
    custom_playload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group
    ~message ~variation () :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group
    =
  { message; variation }

let value_elicitation_setting__wait_and_continue_specification__still_waiting_response
    ?allow_interrupt ~frequency_in_seconds ~timeout_in_seconds
    ~message_group () :
    value_elicitation_setting__wait_and_continue_specification__still_waiting_response
    =
  {
    allow_interrupt;
    frequency_in_seconds;
    timeout_in_seconds;
    message_group;
  }

let value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__custom_playload
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__custom_playload
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card__button
    ~text ~value () :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card__button
    =
  { text; value }

let value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card
    ?image_url ?subtitle ~title ~button () :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card
    =
  { image_url; subtitle; title; button }

let value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__plain_text_message
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__plain_text_message
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__ssml_message
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__ssml_message
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message
    ~custom_playload ~image_response_card ~plain_text_message
    ~ssml_message () :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message
    =
  {
    custom_playload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__custom_playload
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__custom_playload
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card__button
    ~text ~value () :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card__button
    =
  { text; value }

let value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card
    ?image_url ?subtitle ~title ~button () :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card
    =
  { image_url; subtitle; title; button }

let value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__plain_text_message
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__plain_text_message
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__ssml_message
    ~value () :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__ssml_message
    =
  { value }

let value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation
    ~custom_playload ~image_response_card ~plain_text_message
    ~ssml_message () :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation
    =
  {
    custom_playload;
    image_response_card;
    plain_text_message;
    ssml_message;
  }

let value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group
    ~message ~variation () :
    value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group
    =
  { message; variation }

let value_elicitation_setting__wait_and_continue_specification__waiting_response
    ?allow_interrupt ~message_group () :
    value_elicitation_setting__wait_and_continue_specification__waiting_response
    =
  { allow_interrupt; message_group }

let value_elicitation_setting__wait_and_continue_specification
    ?active ~continue_response ~still_waiting_response
    ~waiting_response () :
    value_elicitation_setting__wait_and_continue_specification =
  {
    active;
    continue_response;
    still_waiting_response;
    waiting_response;
  }

let value_elicitation_setting ~slot_constraint
    ~default_value_specification ~prompt_specification
    ~sample_utterance ~slot_resolution_setting
    ~wait_and_continue_specification () : value_elicitation_setting =
  {
    slot_constraint;
    default_value_specification;
    prompt_specification;
    sample_utterance;
    slot_resolution_setting;
    wait_and_continue_specification;
  }

let aws_lexv2models_slot ?description ?slot_type_id ?timeouts ~bot_id
    ~bot_version ~intent_id ~locale_id ~name ~multiple_values_setting
    ~obfuscation_setting ~value_elicitation_setting () :
    aws_lexv2models_slot =
  {
    bot_id;
    bot_version;
    description;
    intent_id;
    locale_id;
    name;
    slot_type_id;
    multiple_values_setting;
    obfuscation_setting;
    timeouts;
    value_elicitation_setting;
  }

type t = {
  bot_id : string prop;
  bot_version : string prop;
  description : string prop;
  id : string prop;
  intent_id : string prop;
  locale_id : string prop;
  name : string prop;
  slot_id : string prop;
  slot_type_id : string prop;
}

let register ?tf_module ?description ?slot_type_id ?timeouts ~bot_id
    ~bot_version ~intent_id ~locale_id ~name ~multiple_values_setting
    ~obfuscation_setting ~value_elicitation_setting __resource_id =
  let __resource_type = "aws_lexv2models_slot" in
  let __resource =
    aws_lexv2models_slot ?description ?slot_type_id ?timeouts ~bot_id
      ~bot_version ~intent_id ~locale_id ~name
      ~multiple_values_setting ~obfuscation_setting
      ~value_elicitation_setting ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lexv2models_slot __resource);
  let __resource_attributes =
    ({
       bot_id = Prop.computed __resource_type __resource_id "bot_id";
       bot_version =
         Prop.computed __resource_type __resource_id "bot_version";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       intent_id =
         Prop.computed __resource_type __resource_id "intent_id";
       locale_id =
         Prop.computed __resource_type __resource_id "locale_id";
       name = Prop.computed __resource_type __resource_id "name";
       slot_id =
         Prop.computed __resource_type __resource_id "slot_id";
       slot_type_id =
         Prop.computed __resource_type __resource_id "slot_type_id";
     }
      : t)
  in
  __resource_attributes

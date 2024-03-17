(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lexv2models_slot__multiple_values_setting = {
  allow_multiple_values : bool option; [@option]
      (** allow_multiple_values *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__multiple_values_setting *)

type aws_lexv2models_slot__obfuscation_setting = {
  obfuscation_setting_type : string;  (** obfuscation_setting_type *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__obfuscation_setting *)

type aws_lexv2models_slot__timeouts = {
  create : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__timeouts *)

type aws_lexv2models_slot__value_elicitation_setting__default_value_specification__default_value_list = {
  default_value : string;  (** default_value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__default_value_specification__default_value_list *)

type aws_lexv2models_slot__value_elicitation_setting__default_value_specification = {
  default_value_list :
    aws_lexv2models_slot__value_elicitation_setting__default_value_specification__default_value_list
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__default_value_specification *)

type aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__message__custom_playload = {
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__message__custom_playload *)

type aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__message__image_response_card__button = {
  text : string;  (** text *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__message__image_response_card__button *)

type aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__message__image_response_card = {
  image_url : string option; [@option]  (** image_url *)
  subtitle : string option; [@option]  (** subtitle *)
  title : string;  (** title *)
  button :
    aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__message__image_response_card *)

type aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__message__plain_text_message = {
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__message__plain_text_message *)

type aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__message__ssml_message = {
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__message__ssml_message *)

type aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__message = {
  custom_playload :
    aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__message__custom_playload
    list;
  image_response_card :
    aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__message *)

type aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__variation__custom_playload = {
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__variation__custom_playload *)

type aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__variation__image_response_card__button = {
  text : string;  (** text *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__variation__image_response_card__button *)

type aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__variation__image_response_card = {
  image_url : string option; [@option]  (** image_url *)
  subtitle : string option; [@option]  (** subtitle *)
  title : string;  (** title *)
  button :
    aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__variation__image_response_card *)

type aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__variation__plain_text_message = {
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__variation__plain_text_message *)

type aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__variation__ssml_message = {
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__variation__ssml_message *)

type aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__variation = {
  custom_playload :
    aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__variation__custom_playload
    list;
  image_response_card :
    aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__variation *)

type aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group = {
  message :
    aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__message
    list;
  variation :
    aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group *)

type aws_lexv2models_slot__value_elicitation_setting__prompt_specification__prompt_attempts_specification__allowed_input_types = {
  allow_audio_input : bool;  (** allow_audio_input *)
  allow_dtmf_input : bool;  (** allow_dtmf_input *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__prompt_specification__prompt_attempts_specification__allowed_input_types *)

type aws_lexv2models_slot__value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__audio_specification = {
  end_timeout_ms : float;  (** end_timeout_ms *)
  max_length_ms : float;  (** max_length_ms *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__audio_specification *)

type aws_lexv2models_slot__value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__dtmf_specification = {
  deletion_character : string;  (** deletion_character *)
  end_character : string;  (** end_character *)
  end_timeout_ms : float;  (** end_timeout_ms *)
  max_length : float;  (** max_length *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__dtmf_specification *)

type aws_lexv2models_slot__value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification = {
  start_timeout_ms : float;  (** start_timeout_ms *)
  audio_specification :
    aws_lexv2models_slot__value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__audio_specification
    list;
  dtmf_specification :
    aws_lexv2models_slot__value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification__dtmf_specification
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification *)

type aws_lexv2models_slot__value_elicitation_setting__prompt_specification__prompt_attempts_specification__text_input_specification = {
  start_timeout_ms : float;  (** start_timeout_ms *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__prompt_specification__prompt_attempts_specification__text_input_specification *)

type aws_lexv2models_slot__value_elicitation_setting__prompt_specification__prompt_attempts_specification = {
  allow_interrupt : bool option; [@option]  (** allow_interrupt *)
  map_block_key : string;  (** map_block_key *)
  allowed_input_types :
    aws_lexv2models_slot__value_elicitation_setting__prompt_specification__prompt_attempts_specification__allowed_input_types
    list;
  audio_and_dtmf_input_specification :
    aws_lexv2models_slot__value_elicitation_setting__prompt_specification__prompt_attempts_specification__audio_and_dtmf_input_specification
    list;
  text_input_specification :
    aws_lexv2models_slot__value_elicitation_setting__prompt_specification__prompt_attempts_specification__text_input_specification
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__prompt_specification__prompt_attempts_specification *)

type aws_lexv2models_slot__value_elicitation_setting__prompt_specification = {
  allow_interrupt : bool option; [@option]  (** allow_interrupt *)
  max_retries : float;  (** max_retries *)
  message_selection_strategy : string option; [@option]
      (** message_selection_strategy *)
  message_group :
    aws_lexv2models_slot__value_elicitation_setting__prompt_specification__message_group
    list;
  prompt_attempts_specification :
    aws_lexv2models_slot__value_elicitation_setting__prompt_specification__prompt_attempts_specification
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__prompt_specification *)

type aws_lexv2models_slot__value_elicitation_setting__sample_utterance = {
  utterance : string;  (** utterance *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__sample_utterance *)

type aws_lexv2models_slot__value_elicitation_setting__slot_resolution_setting = {
  slot_resolution_strategy : string;  (** slot_resolution_strategy *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__slot_resolution_setting *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__custom_playload = {
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__custom_playload *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card__button = {
  text : string;  (** text *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card__button *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card = {
  image_url : string option; [@option]  (** image_url *)
  subtitle : string option; [@option]  (** subtitle *)
  title : string;  (** title *)
  button :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__plain_text_message = {
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__plain_text_message *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__ssml_message = {
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__ssml_message *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message = {
  custom_playload :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__custom_playload
    list;
  image_response_card :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__custom_playload = {
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__custom_playload *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card__button = {
  text : string;  (** text *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card__button *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card = {
  image_url : string option; [@option]  (** image_url *)
  subtitle : string option; [@option]  (** subtitle *)
  title : string;  (** title *)
  button :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__plain_text_message = {
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__plain_text_message *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__ssml_message = {
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__ssml_message *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation = {
  custom_playload :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__custom_playload
    list;
  image_response_card :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group = {
  message :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__message
    list;
  variation :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response = {
  allow_interrupt : bool option; [@option]  (** allow_interrupt *)
  message_group :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__custom_playload = {
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__custom_playload *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card__button = {
  text : string;  (** text *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card__button *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card = {
  image_url : string option; [@option]  (** image_url *)
  subtitle : string option; [@option]  (** subtitle *)
  title : string;  (** title *)
  button :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__plain_text_message = {
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__plain_text_message *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__ssml_message = {
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__ssml_message *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message = {
  custom_playload :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__custom_playload
    list;
  image_response_card :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__custom_playload = {
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__custom_playload *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card__button = {
  text : string;  (** text *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card__button *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card = {
  image_url : string option; [@option]  (** image_url *)
  subtitle : string option; [@option]  (** subtitle *)
  title : string;  (** title *)
  button :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__plain_text_message = {
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__plain_text_message *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__ssml_message = {
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__ssml_message *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation = {
  custom_playload :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__custom_playload
    list;
  image_response_card :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group = {
  message :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__message
    list;
  variation :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response = {
  allow_interrupt : bool option; [@option]  (** allow_interrupt *)
  frequency_in_seconds : float;  (** frequency_in_seconds *)
  timeout_in_seconds : float;  (** timeout_in_seconds *)
  message_group :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__custom_playload = {
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__custom_playload *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card__button = {
  text : string;  (** text *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card__button *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card = {
  image_url : string option; [@option]  (** image_url *)
  subtitle : string option; [@option]  (** subtitle *)
  title : string;  (** title *)
  button :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__plain_text_message = {
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__plain_text_message *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__ssml_message = {
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__ssml_message *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message = {
  custom_playload :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__custom_playload
    list;
  image_response_card :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__custom_playload = {
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__custom_playload *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card__button = {
  text : string;  (** text *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card__button *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card = {
  image_url : string option; [@option]  (** image_url *)
  subtitle : string option; [@option]  (** subtitle *)
  title : string;  (** title *)
  button :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card__button
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__plain_text_message = {
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__plain_text_message *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__ssml_message = {
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__ssml_message *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation = {
  custom_playload :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__custom_playload
    list;
  image_response_card :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__image_response_card
    list;
  plain_text_message :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__plain_text_message
    list;
  ssml_message :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation__ssml_message
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group = {
  message :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__message
    list;
  variation :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group__variation
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response = {
  allow_interrupt : bool option; [@option]  (** allow_interrupt *)
  message_group :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response__message_group
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response *)

type aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification = {
  active : bool option; [@option]  (** active *)
  continue_response :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__continue_response
    list;
  still_waiting_response :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__still_waiting_response
    list;
  waiting_response :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification__waiting_response
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification *)

type aws_lexv2models_slot__value_elicitation_setting = {
  slot_constraint : string;  (** slot_constraint *)
  default_value_specification :
    aws_lexv2models_slot__value_elicitation_setting__default_value_specification
    list;
  prompt_specification :
    aws_lexv2models_slot__value_elicitation_setting__prompt_specification
    list;
  sample_utterance :
    aws_lexv2models_slot__value_elicitation_setting__sample_utterance
    list;
  slot_resolution_setting :
    aws_lexv2models_slot__value_elicitation_setting__slot_resolution_setting
    list;
  wait_and_continue_specification :
    aws_lexv2models_slot__value_elicitation_setting__wait_and_continue_specification
    list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot__value_elicitation_setting *)

type aws_lexv2models_slot = {
  bot_id : string;  (** bot_id *)
  bot_version : string;  (** bot_version *)
  description : string option; [@option]  (** description *)
  intent_id : string;  (** intent_id *)
  locale_id : string;  (** locale_id *)
  name : string;  (** name *)
  slot_type_id : string option; [@option]  (** slot_type_id *)
  multiple_values_setting :
    aws_lexv2models_slot__multiple_values_setting list;
  obfuscation_setting :
    aws_lexv2models_slot__obfuscation_setting list;
  timeouts : aws_lexv2models_slot__timeouts option;
  value_elicitation_setting :
    aws_lexv2models_slot__value_elicitation_setting list;
}
[@@deriving yojson_of]
(** aws_lexv2models_slot *)

let aws_lexv2models_slot ?description ?slot_type_id ?timeouts ~bot_id
    ~bot_version ~intent_id ~locale_id ~name ~multiple_values_setting
    ~obfuscation_setting ~value_elicitation_setting __resource_id =
  let __resource_type = "aws_lexv2models_slot" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lexv2models_slot __resource);
  ()

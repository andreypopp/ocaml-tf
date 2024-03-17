(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_data_loss_prevention_deidentify_template__deidentify_config__image_transformations__transforms__all_info_types =
  unit
[@@deriving yojson_of]

type google_data_loss_prevention_deidentify_template__deidentify_config__image_transformations__transforms__all_text =
  unit
[@@deriving yojson_of]

type google_data_loss_prevention_deidentify_template__deidentify_config__image_transformations__transforms__redaction_color = {
  blue : float prop option; [@option]
      (** The amount of blue in the color as a value in the interval [0, 1]. *)
  green : float prop option; [@option]
      (** The amount of green in the color as a value in the interval [0, 1]. *)
  red : float prop option; [@option]
      (** The amount of red in the color as a value in the interval [0, 1]. *)
}
[@@deriving yojson_of]
(** The color to use when redacting content from an image. If not specified, the default is black. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__image_transformations__transforms__selected_info_types__info_types__sensitivity_score = {
  score : string prop;
      (** The sensitivity score applied to the resource. Possible values: [SENSITIVITY_LOW, SENSITIVITY_MODERATE, SENSITIVITY_HIGH] *)
}
[@@deriving yojson_of]
(** Optional custom sensitivity for this InfoType. This only applies to data profiling. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__image_transformations__transforms__selected_info_types__info_types = {
  name : string prop;  (** Name of the information type. *)
  version : string prop option; [@option]
      (** Version name for this InfoType. *)
  sensitivity_score :
    google_data_loss_prevention_deidentify_template__deidentify_config__image_transformations__transforms__selected_info_types__info_types__sensitivity_score
    list;
}
[@@deriving yojson_of]
(** InfoTypes to apply the transformation to. Leaving this empty will apply the transformation to apply to
all findings that correspond to infoTypes that were requested in InspectConfig. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__image_transformations__transforms__selected_info_types = {
  info_types :
    google_data_loss_prevention_deidentify_template__deidentify_config__image_transformations__transforms__selected_info_types__info_types
    list;
}
[@@deriving yojson_of]
(** Apply transformation to the selected infoTypes. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__image_transformations__transforms = {
  all_info_types :
    google_data_loss_prevention_deidentify_template__deidentify_config__image_transformations__transforms__all_info_types
    list;
  all_text :
    google_data_loss_prevention_deidentify_template__deidentify_config__image_transformations__transforms__all_text
    list;
  redaction_color :
    google_data_loss_prevention_deidentify_template__deidentify_config__image_transformations__transforms__redaction_color
    list;
  selected_info_types :
    google_data_loss_prevention_deidentify_template__deidentify_config__image_transformations__transforms__selected_info_types
    list;
}
[@@deriving yojson_of]
(** For determination of how redaction of images should occur. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__image_transformations = {
  transforms :
    google_data_loss_prevention_deidentify_template__deidentify_config__image_transformations__transforms
    list;
}
[@@deriving yojson_of]
(** Treat the dataset as an image and redact. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__info_types__sensitivity_score = {
  score : string prop;
      (** The sensitivity score applied to the resource. Possible values: [SENSITIVITY_LOW, SENSITIVITY_MODERATE, SENSITIVITY_HIGH] *)
}
[@@deriving yojson_of]
(** Optional custom sensitivity for this InfoType. This only applies to data profiling. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__info_types = {
  name : string prop;  (** Name of the information type. *)
  version : string prop option; [@option]
      (** Version name for this InfoType. *)
  sensitivity_score :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__info_types__sensitivity_score
    list;
}
[@@deriving yojson_of]
(** InfoTypes to apply the transformation to. Leaving this empty will apply the transformation to apply to
all findings that correspond to infoTypes that were requested in InspectConfig. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__date_value = {
  day : float prop option; [@option]
      (** Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant. *)
  month : float prop option; [@option]
      (** Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. *)
  year : float prop option; [@option]
      (** Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. *)
}
[@@deriving yojson_of]
(** Represents a whole or partial calendar date. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__time_value = {
  hours : float prop option; [@option]
      (** Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value 24:00:00 for scenarios like business closing time. *)
  minutes : float prop option; [@option]
      (** Minutes of hour of day. Must be from 0 to 59. *)
  nanos : float prop option; [@option]
      (** Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. *)
  seconds : float prop option; [@option]
      (** Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds. *)
}
[@@deriving yojson_of]
(** Represents a time of day. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max = {
  day_of_week_value : string prop option; [@option]
      (** Represents a day of the week. Possible values: [MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY] *)
  float_value : float prop option; [@option]  (** A float value. *)
  integer_value : string prop option; [@option]
      (** An integer value (int64 format) *)
  string_value : string prop option; [@option]
      (** A string value. *)
  timestamp_value : string prop option; [@option]
      (** A timestamp in RFC3339 UTC Zulu format, with nanosecond resolution and up to nine fractional digits. Examples: 2014-10-02T15:01:23Z and 2014-10-02T15:01:23.045123456Z. *)
  date_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__date_value
    list;
  time_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__time_value
    list;
}
[@@deriving yojson_of]
(** Upper bound of the range, exclusive; type must match min.
The 'max' block must only contain one argument. See the 'bucketing_config' block description for more information about choosing a data type. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__date_value = {
  day : float prop option; [@option]
      (** Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant. *)
  month : float prop option; [@option]
      (** Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. *)
  year : float prop option; [@option]
      (** Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. *)
}
[@@deriving yojson_of]
(** Represents a whole or partial calendar date. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__time_value = {
  hours : float prop option; [@option]
      (** Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value 24:00:00 for scenarios like business closing time. *)
  minutes : float prop option; [@option]
      (** Minutes of hour of day. Must be from 0 to 59. *)
  nanos : float prop option; [@option]
      (** Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. *)
  seconds : float prop option; [@option]
      (** Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds. *)
}
[@@deriving yojson_of]
(** Represents a time of day. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min = {
  day_of_week_value : string prop option; [@option]
      (** Represents a day of the week. Possible values: [MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY] *)
  float_value : float prop option; [@option]  (** A float value. *)
  integer_value : string prop option; [@option]
      (** An integer value (int64 format) *)
  string_value : string prop option; [@option]
      (** A string value. *)
  timestamp_value : string prop option; [@option]
      (** A timestamp in RFC3339 UTC Zulu format, with nanosecond resolution and up to nine fractional digits. Examples: 2014-10-02T15:01:23Z and 2014-10-02T15:01:23.045123456Z. *)
  date_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__date_value
    list;
  time_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__time_value
    list;
}
[@@deriving yojson_of]
(** Lower bound of the range, inclusive. Type should be the same as max if used.
The 'min' block must only contain one argument. See the 'bucketing_config' block description for more information about choosing a data type. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value = {
  day : float prop option; [@option]
      (** Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant. *)
  month : float prop option; [@option]
      (** Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. *)
  year : float prop option; [@option]
      (** Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. *)
}
[@@deriving yojson_of]
(** Represents a whole or partial calendar date. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value = {
  hours : float prop option; [@option]
      (** Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value 24:00:00 for scenarios like business closing time. *)
  minutes : float prop option; [@option]
      (** Minutes of hour of day. Must be from 0 to 59. *)
  nanos : float prop option; [@option]
      (** Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. *)
  seconds : float prop option; [@option]
      (** Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds. *)
}
[@@deriving yojson_of]
(** Represents a time of day. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value = {
  day_of_week_value : string prop option; [@option]
      (** Represents a day of the week. Possible values: [MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY] *)
  float_value : float prop option; [@option]  (** A float value. *)
  integer_value : string prop option; [@option]
      (** An integer value (int64 format) *)
  string_value : string prop option; [@option]
      (** A string value. *)
  timestamp_value : string prop option; [@option]
      (** A timestamp in RFC3339 UTC Zulu format, with nanosecond resolution and up to nine fractional digits. Examples: 2014-10-02T15:01:23Z and 2014-10-02T15:01:23.045123456Z. *)
  date_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value
    list;
  time_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value
    list;
}
[@@deriving yojson_of]
(** Replacement value for this bucket.
The 'replacement_value' block must only contain one argument. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets = {
  max :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max
    list;
  min :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min
    list;
  replacement_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value
    list;
}
[@@deriving yojson_of]
(** Set of buckets. Ranges must be non-overlapping.
Bucket is represented as a range, along with replacement values. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config = {
  buckets :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets
    list;
}
[@@deriving yojson_of]
(** Generalization function that buckets values based on ranges. The ranges and replacement values are dynamically provided by the user for custom behavior, such as 1-30 -> LOW 31-65 -> MEDIUM 66-100 -> HIGH
This can be used on data of type: number, long, string, timestamp.
If the provided value type differs from the type of data being transformed, we will first attempt converting the type of the data to be transformed to match the type of the bound before comparing.
See https://cloud.google.com/dlp/docs/concepts-bucketing to learn more. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__character_mask_config__characters_to_ignore = {
  characters_to_skip : string prop option; [@option]
      (** Characters to not transform when masking. *)
  common_characters_to_ignore : string prop option; [@option]
      (** Common characters to not transform when masking. Useful to avoid removing punctuation. Possible values: [NUMERIC, ALPHA_UPPER_CASE, ALPHA_LOWER_CASE, PUNCTUATION, WHITESPACE] *)
}
[@@deriving yojson_of]
(** Characters to skip when doing de-identification of a value. These will be left alone and skipped. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__character_mask_config = {
  masking_character : string prop option; [@option]
      (** Character to use to mask the sensitive values—for example, * for an alphabetic string such as a name, or 0 for a numeric string
such as ZIP code or credit card number. This string must have a length of 1. If not supplied, this value defaults to * for
strings, and 0 for digits. *)
  number_to_mask : float prop option; [@option]
      (** Number of characters to mask. If not set, all matching chars will be masked. Skipped characters do not count towards this tally. *)
  reverse_order : bool prop option; [@option]
      (** Mask characters in reverse order. For example, if masking_character is 0, number_to_mask is 14, and reverse_order is 'false', then the
input string '1234-5678-9012-3456' is masked as '00000000000000-3456'. *)
  characters_to_ignore :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__character_mask_config__characters_to_ignore
    list;
}
[@@deriving yojson_of]
(** Partially mask a string by replacing a given number of characters with a fixed character.
Masking can start from the beginning or end of the string. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__context = {
  name : string prop option; [@option]
      (** Name describing the field. *)
}
[@@deriving yojson_of]
(** A context may be used for higher security and maintaining referential integrity such that the same identifier in two different contexts will be given a distinct surrogate. The context is appended to plaintext value being encrypted. On decryption the provided context is validated against the value used during encryption. If a context was provided during encryption, same context must be provided during decryption as well.

If the context is not set, plaintext would be used as is for encryption. If the context is set but:

1.  there is no record present when transforming a given value or
2.  the field is not present when transforming a given value,

plaintext would be used as is for encryption.

Note that case (1) is expected when an 'InfoTypeTransformation' is applied to both structured and non-structured 'ContentItem's. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped = {
  crypto_key_name : string prop;
      (** The resource name of the KMS CryptoKey to use for unwrapping. *)
  wrapped_key : string prop;
      (** The wrapped data crypto key.

A base64-encoded string. *)
}
[@@deriving yojson_of]
(** KMS wrapped key.
Include to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. Authorization requires the following IAM permissions when sending a request to perform a crypto transformation using a KMS-wrapped crypto key: dlp.kms.encrypt
For more information, see [Creating a wrapped key](https://cloud.google.com/dlp/docs/create-wrapped-key).
Note: When you use Cloud KMS for cryptographic operations, [charges apply](https://cloud.google.com/kms/pricing). *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient = {
  name : string prop;
      (** Name of the key. This is an arbitrary string used to differentiate different keys. A unique key is generated per name: two separate 'TransientCryptoKey' protos share the same generated key if their names are the same. When the data crypto key is generated, this name is not used in any way (repeating the api call will result in a different key being generated). *)
}
[@@deriving yojson_of]
(** Transient crypto key. Use this to have a random data crypto key generated. It will be discarded after the request finishes. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped = {
  key : string prop;
      (** A 128/192/256 bit key.

A base64-encoded string. *)
}
[@@deriving yojson_of]
(** Unwrapped crypto key. Using raw keys is prone to security risks due to accidentally leaking the key. Choose another type of key if possible. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key = {
  kms_wrapped :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped
    list;
  transient :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient
    list;
  unwrapped :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped
    list;
}
[@@deriving yojson_of]
(** The key used by the encryption function. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score = {
  score : string prop;
      (** The sensitivity score applied to the resource. Possible values: [SENSITIVITY_LOW, SENSITIVITY_MODERATE, SENSITIVITY_HIGH] *)
}
[@@deriving yojson_of]
(** Optional custom sensitivity for this InfoType. This only applies to data profiling. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type = {
  name : string prop option; [@option]
      (** Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed at [https://cloud.google.com/dlp/docs/infotypes-reference](https://cloud.google.com/dlp/docs/infotypes-reference) when specifying a built-in type. When sending Cloud DLP results to Data Catalog, infoType names should conform to the pattern '[A-Za-z0-9$-_]{1,64}'. *)
  version : string prop option; [@option]
      (** Optional version name for this InfoType. *)
  sensitivity_score :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score
    list;
}
[@@deriving yojson_of]
(** The custom info type to annotate the surrogate with. This annotation will be applied to the surrogate by prefixing it with the name of the custom info type followed by the number of characters comprising the surrogate. The following scheme defines the format: {info type name}({surrogate character count}):{surrogate}

For example, if the name of custom info type is 'MY\_TOKEN\_INFO\_TYPE' and the surrogate is 'abc', the full replacement value will be: 'MY\_TOKEN\_INFO\_TYPE(3):abc'

This annotation identifies the surrogate when inspecting content using the custom info type 'Surrogate'. This facilitates reversal of the surrogate when it occurs in free text.

Note: For record transformations where the entire cell in a table is being transformed, surrogates are not mandatory. Surrogates are used to denote the location of the token and are necessary for re-identification in free form text.

In order for inspection to work properly, the name of this info type must not occur naturally anywhere in your data; otherwise, inspection may either

*   reverse a surrogate that does not correspond to an actual identifier
*   be unable to parse the surrogate and result in an error

Therefore, choose your custom info type name carefully after considering what your data looks like. One way to select a name that has a high chance of yielding reliable detection is to include one or more unicode characters that are highly improbable to exist in your data. For example, assuming your data is entered from a regular ASCII keyboard, the symbol with the hex code point 29DD might be used like so: ⧝MY\_TOKEN\_TYPE. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config = {
  context :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__context
    list;
  crypto_key :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key
    list;
  surrogate_info_type :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type
    list;
}
[@@deriving yojson_of]
(** Pseudonymization method that generates deterministic encryption for the given input. Outputs a base64 encoded representation of the encrypted output. Uses AES-SIV based on the RFC [https://tools.ietf.org/html/rfc5297](https://tools.ietf.org/html/rfc5297). *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped = {
  crypto_key_name : string prop;
      (** The resource name of the KMS CryptoKey to use for unwrapping. *)
  wrapped_key : string prop;
      (** The wrapped data crypto key.

A base64-encoded string. *)
}
[@@deriving yojson_of]
(** KMS wrapped key.
Include to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. Authorization requires the following IAM permissions when sending a request to perform a crypto transformation using a KMS-wrapped crypto key: dlp.kms.encrypt
For more information, see [Creating a wrapped key](https://cloud.google.com/dlp/docs/create-wrapped-key).
Note: When you use Cloud KMS for cryptographic operations, [charges apply](https://cloud.google.com/kms/pricing). *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__transient = {
  name : string prop;
      (** Name of the key. This is an arbitrary string used to differentiate different keys. A unique key is generated per name: two separate 'TransientCryptoKey' protos share the same generated key if their names are the same. When the data crypto key is generated, this name is not used in any way (repeating the api call will result in a different key being generated). *)
}
[@@deriving yojson_of]
(** Transient crypto key. Use this to have a random data crypto key generated. It will be discarded after the request finishes. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped = {
  key : string prop;
      (** A 128/192/256 bit key.

A base64-encoded string. *)
}
[@@deriving yojson_of]
(** Unwrapped crypto key. Using raw keys is prone to security risks due to accidentally leaking the key. Choose another type of key if possible. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key = {
  kms_wrapped :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped
    list;
  transient :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__transient
    list;
  unwrapped :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped
    list;
}
[@@deriving yojson_of]
(** The key used by the encryption function. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config = {
  crypto_key :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key
    list;
}
[@@deriving yojson_of]
(** Pseudonymization method that generates surrogates via cryptographic hashing. Uses SHA-256. The key size must be either 32 or 64 bytes.
Outputs a base64 encoded representation of the hashed output (for example, L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=).
Currently, only string and integer values can be hashed.
See https://cloud.google.com/dlp/docs/pseudonymization to learn more. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context = {
  name : string prop option; [@option]
      (** Name describing the field. *)
}
[@@deriving yojson_of]
(** The 'tweak', a context may be used for higher security since the same identifier in two different contexts won't be given the same surrogate. If the context is not set, a default tweak will be used.

If the context is set but:

1.  there is no record present when transforming a given value or
2.  the field is not present when transforming a given value,

a default tweak will be used.

Note that case (1) is expected when an 'InfoTypeTransformation' is applied to both structured and non-structured 'ContentItem's. Currently, the referenced field may be of value type integer or string.

The tweak is constructed as a sequence of bytes in big endian byte order such that:

*   a 64 bit integer is encoded followed by a single byte of value 1
*   a string is encoded in UTF-8 format followed by a single byte of value 2 *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped = {
  crypto_key_name : string prop;
      (** The resource name of the KMS CryptoKey to use for unwrapping. *)
  wrapped_key : string prop;
      (** The wrapped data crypto key.

A base64-encoded string. *)
}
[@@deriving yojson_of]
(** KMS wrapped key.
Include to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. Authorization requires the following IAM permissions when sending a request to perform a crypto transformation using a KMS-wrapped crypto key: dlp.kms.encrypt
For more information, see [Creating a wrapped key](https://cloud.google.com/dlp/docs/create-wrapped-key).
Note: When you use Cloud KMS for cryptographic operations, [charges apply](https://cloud.google.com/kms/pricing). *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient = {
  name : string prop;
      (** Name of the key. This is an arbitrary string used to differentiate different keys. A unique key is generated per name: two separate 'TransientCryptoKey' protos share the same generated key if their names are the same. When the data crypto key is generated, this name is not used in any way (repeating the api call will result in a different key being generated). *)
}
[@@deriving yojson_of]
(** Transient crypto key. Use this to have a random data crypto key generated. It will be discarded after the request finishes. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped = {
  key : string prop;
      (** A 128/192/256 bit key.

A base64-encoded string. *)
}
[@@deriving yojson_of]
(** Unwrapped crypto key. Using raw keys is prone to security risks due to accidentally leaking the key. Choose another type of key if possible. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key = {
  kms_wrapped :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped
    list;
  transient :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient
    list;
  unwrapped :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped
    list;
}
[@@deriving yojson_of]
(** The key used by the encryption algorithm. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score = {
  score : string prop;
      (** The sensitivity score applied to the resource. Possible values: [SENSITIVITY_LOW, SENSITIVITY_MODERATE, SENSITIVITY_HIGH] *)
}
[@@deriving yojson_of]
(** Optional custom sensitivity for this InfoType. This only applies to data profiling. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type = {
  name : string prop option; [@option]
      (** Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed at [https://cloud.google.com/dlp/docs/infotypes-reference](https://cloud.google.com/dlp/docs/infotypes-reference) when specifying a built-in type. When sending Cloud DLP results to Data Catalog, infoType names should conform to the pattern '[A-Za-z0-9$-_]{1,64}'. *)
  version : string prop option; [@option]
      (** Optional version name for this InfoType. *)
  sensitivity_score :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score
    list;
}
[@@deriving yojson_of]
(** The custom infoType to annotate the surrogate with. This annotation will be applied to the surrogate by prefixing it with the name of the custom infoType followed by the number of characters comprising the surrogate. The following scheme defines the format: info\_type\_name(surrogate\_character\_count):surrogate

For example, if the name of custom infoType is 'MY\_TOKEN\_INFO\_TYPE' and the surrogate is 'abc', the full replacement value will be: 'MY\_TOKEN\_INFO\_TYPE(3):abc'

This annotation identifies the surrogate when inspecting content using the custom infoType ['SurrogateType'](https://cloud.google.com/dlp/docs/reference/rest/v2/InspectConfig#surrogatetype). This facilitates reversal of the surrogate when it occurs in free text.

In order for inspection to work properly, the name of this infoType must not occur naturally anywhere in your data; otherwise, inspection may find a surrogate that does not correspond to an actual identifier. Therefore, choose your custom infoType name carefully after considering what your data looks like. One way to select a name that has a high chance of yielding reliable detection is to include one or more unicode characters that are highly improbable to exist in your data. For example, assuming your data is entered from a regular ASCII keyboard, the symbol with the hex code point 29DD might be used like so: ⧝MY\_TOKEN\_TYPE *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config = {
  common_alphabet : string prop option; [@option]
      (** Common alphabets. Possible values: [FFX_COMMON_NATIVE_ALPHABET_UNSPECIFIED, NUMERIC, HEXADECIMAL, UPPER_CASE_ALPHA_NUMERIC, ALPHA_NUMERIC] *)
  custom_alphabet : string prop option; [@option]
      (** This is supported by mapping these to the alphanumeric characters that the FFX mode natively supports. This happens before/after encryption/decryption. Each character listed must appear only once. Number of characters must be in the range \[2, 95\]. This must be encoded as ASCII. The order of characters does not matter. The full list of allowed characters is:

''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ~'!@#$%^&*()_-+={[}]|:;'<,>.?/'' *)
  radix : float prop option; [@option]
      (** The native way to select the alphabet. Must be in the range \[2, 95\]. *)
  context :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context
    list;
  crypto_key :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key
    list;
  surrogate_info_type :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type
    list;
}
[@@deriving yojson_of]
(** Replaces an identifier with a surrogate using Format Preserving Encryption (FPE) with the FFX mode of operation; however when used in the 'content.reidentify' API method, it serves the opposite function by reversing the surrogate back into the original identifier. The identifier must be encoded as ASCII. For a given crypto key and context, the same identifier will be replaced with the same surrogate. Identifiers must be at least two characters long. In the case that the identifier is the empty string, it will be skipped. See [https://cloud.google.com/dlp/docs/pseudonymization](https://cloud.google.com/dlp/docs/pseudonymization) to learn more.

Note: We recommend using CryptoDeterministicConfig for all use cases which do not require preserving the input alphabet space and size, plus warrant referential integrity. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__context = {
  name : string prop;  (** Name describing the field. *)
}
[@@deriving yojson_of]
(** Points to the field that contains the context, for example, an entity id.
If set, must also set cryptoKey. If set, shift will be consistent for the given context. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped = {
  crypto_key_name : string prop;
      (** The resource name of the KMS CryptoKey to use for unwrapping. *)
  wrapped_key : string prop;
      (** The wrapped data crypto key.
A base64-encoded string. *)
}
[@@deriving yojson_of]
(** KMS wrapped key.
Include to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. Authorization requires the following IAM permissions when sending a request to perform a crypto transformation using a KMS-wrapped crypto key: dlp.kms.encrypt
For more information, see [Creating a wrapped key](https://cloud.google.com/dlp/docs/create-wrapped-key).
Note: When you use Cloud KMS for cryptographic operations, [charges apply](https://cloud.google.com/kms/pricing). *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__transient = {
  name : string prop;
      (** Name of the key. This is an arbitrary string used to differentiate different keys. A unique key is generated per name: two separate 'TransientCryptoKey' protos share the same generated key if their names are the same. When the data crypto key is generated, this name is not used in any way (repeating the api call will result in a different key being generated). *)
}
[@@deriving yojson_of]
(** Transient crypto key. Use this to have a random data crypto key generated. It will be discarded after the request finishes. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped = {
  key : string prop;
      (** A 128/192/256 bit key.
A base64-encoded string. *)
}
[@@deriving yojson_of]
(** Unwrapped crypto key. Using raw keys is prone to security risks due to accidentally leaking the key. Choose another type of key if possible. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key = {
  kms_wrapped :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped
    list;
  transient :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__transient
    list;
  unwrapped :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped
    list;
}
[@@deriving yojson_of]
(** The key used by the encryption function. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config = {
  lower_bound_days : float prop;
      (** Range of shift in days. Negative means shift to earlier in time. *)
  upper_bound_days : float prop;
      (** Range of shift in days. Actual shift will be selected at random within this range (inclusive ends).
Negative means shift to earlier in time. Must not be more than 365250 days (1000 years) each direction. *)
  context :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__context
    list;
  crypto_key :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key
    list;
}
[@@deriving yojson_of]
(** Shifts dates by random number of days, with option to be consistent for the same context. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound = {
  float_value : float prop option; [@option]  (** A float value. *)
  integer_value : string prop option; [@option]
      (** An integer value (int64 format) *)
}
[@@deriving yojson_of]
(** Lower bound value of buckets.
All values less than lower_bound are grouped together into a single bucket; for example if lower_bound = 10, then all values less than 10 are replaced with the value -10.
The 'lower_bound' block must only contain one argument. See the 'fixed_size_bucketing_config' block description for more information about choosing a data type. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound = {
  float_value : float prop option; [@option]  (** A float value. *)
  integer_value : string prop option; [@option]
      (** An integer value (int64 format) *)
}
[@@deriving yojson_of]
(** Upper bound value of buckets.
All values greater than upper_bound are grouped together into a single bucket; for example if upper_bound = 89, then all values greater than 89 are replaced with the value 89+.
The 'upper_bound' block must only contain one argument. See the 'fixed_size_bucketing_config' block description for more information about choosing a data type. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config = {
  bucket_size : float prop;
      (** Size of each bucket (except for minimum and maximum buckets).
So if lower_bound = 10, upper_bound = 89, and bucketSize = 10, then the following buckets would be used: -10, 10-20, 20-30, 30-40, 40-50, 50-60, 60-70, 70-80, 80-89, 89+.
Precision up to 2 decimals works. *)
  lower_bound :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound
    list;
  upper_bound :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound
    list;
}
[@@deriving yojson_of]
(** Buckets values based on fixed size ranges. The Bucketing transformation can provide all of this functionality, but requires more configuration. This message is provided as a convenience to the user for simple bucketing strategies.

The transformed value will be a hyphenated string of {lower_bound}-{upper_bound}. For example, if lower_bound = 10 and upper_bound = 20, all values that are within this bucket will be replaced with 10-20.

This can be used on data of type: double, long.

If the bound Value type differs from the type of data being transformed, we will first attempt converting the type of the data to be transformed to match the type of the bound before comparing.

See https://cloud.google.com/dlp/docs/concepts-bucketing to learn more. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__redact_config =
  unit
[@@deriving yojson_of]

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__date_value = {
  day : float prop option; [@option]
      (** Day of month. Must be from 1 to 31 and valid for the year and month, or 0 if specifying a
year by itself or a year and month where the day is not significant. *)
  month : float prop option; [@option]
      (** Month of year. Must be from 1 to 12, or 0 if specifying a year without a month and day. *)
  year : float prop option; [@option]
      (** Year of date. Must be from 1 to 9999, or 0 if specifying a date without a year. *)
}
[@@deriving yojson_of]
(** Represents a whole or partial calendar date. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__time_value = {
  hours : float prop option; [@option]
      (** Hours of day in 24 hour format. Should be from 0 to 23. *)
  minutes : float prop option; [@option]
      (** Minutes of hour of day. Must be from 0 to 59. *)
  nanos : float prop option; [@option]
      (** Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. *)
  seconds : float prop option; [@option]
      (** Seconds of minutes of the time. Must normally be from 0 to 59. *)
}
[@@deriving yojson_of]
(** Represents a time of day. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value = {
  boolean_value : bool prop option; [@option]
      (** A boolean value. *)
  day_of_week_value : string prop option; [@option]
      (** Represents a day of the week. Possible values: [MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY] *)
  float_value : float prop option; [@option]  (** A float value. *)
  integer_value : float prop option; [@option]
      (** An integer value. *)
  string_value : string prop option; [@option]
      (** A string value. *)
  timestamp_value : string prop option; [@option]
      (** A timestamp in RFC3339 UTC Zulu format, with nanosecond resolution and up to nine fractional digits.
Examples: 2014-10-02T15:01:23Z and 2014-10-02T15:01:23.045123456Z. *)
  date_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__date_value
    list;
  time_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__time_value
    list;
}
[@@deriving yojson_of]
(** Replace each input value with a given value.
The 'new_value' block must only contain one argument. For example when replacing the contents of a string-type field, only 'string_value' should be set. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config = {
  new_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value
    list;
}
[@@deriving yojson_of]
(** Replace each input value with a given value. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config__word_list = {
  words : string prop list;
      (** Words or phrases defining the dictionary. The dictionary must contain at least one phrase and every phrase must contain at least 2 characters that are letters or digits. *)
}
[@@deriving yojson_of]
(** A list of words to select from for random replacement. The [limits](https://cloud.google.com/dlp/limits) page contains details about the size limits of dictionaries. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config = {
  word_list :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config__word_list
    list;
}
[@@deriving yojson_of]
(** Replace with a value randomly drawn (with replacement) from a dictionary. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__time_part_config = {
  part_to_extract : string prop option; [@option]
      (** The part of the time to keep. Possible values: [YEAR, MONTH, DAY_OF_MONTH, DAY_OF_WEEK, WEEK_OF_YEAR, HOUR_OF_DAY] *)
}
[@@deriving yojson_of]
(** For use with Date, Timestamp, and TimeOfDay, extract or preserve a portion of the value. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation = {
  replace_with_info_type_config : bool prop option; [@option]
      (** Replace each matching finding with the name of the info type. *)
  bucketing_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config
    list;
  character_mask_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__character_mask_config
    list;
  crypto_deterministic_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config
    list;
  crypto_hash_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config
    list;
  crypto_replace_ffx_fpe_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config
    list;
  date_shift_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config
    list;
  fixed_size_bucketing_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config
    list;
  redact_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__redact_config
    list;
  replace_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config
    list;
  replace_dictionary_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config
    list;
  time_part_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation__time_part_config
    list;
}
[@@deriving yojson_of]
(** Primitive transformation to apply to the infoType.
The 'primitive_transformation' block must only contain one argument, corresponding to the type of transformation. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations = {
  info_types :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__info_types
    list;
  primitive_transformation :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations__primitive_transformation
    list;
}
[@@deriving yojson_of]
(** Transformation for each infoType. Cannot specify more than one for a given infoType. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations = {
  transformations :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations__transformations
    list;
}
[@@deriving yojson_of]
(** Treat the dataset as free-form text and apply the same free text transformation everywhere *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__field = {
  name : string prop option; [@option]
      (** Name describing the field. *)
}
[@@deriving yojson_of]
(** Field within the record this condition is evaluated against. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value__date_value = {
  day : float prop option; [@option]
      (** Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant. *)
  month : float prop option; [@option]
      (** Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. *)
  year : float prop option; [@option]
      (** Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. *)
}
[@@deriving yojson_of]
(** Represents a whole or partial calendar date. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value__time_value = {
  hours : float prop option; [@option]
      (** Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value 24:00:00 for scenarios like business closing time. *)
  minutes : float prop option; [@option]
      (** Minutes of hour of day. Must be from 0 to 59. *)
  nanos : float prop option; [@option]
      (** Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. *)
  seconds : float prop option; [@option]
      (** Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds. *)
}
[@@deriving yojson_of]
(** Represents a time of day. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value = {
  boolean_value : bool prop option; [@option]
      (** A boolean value. *)
  day_of_week_value : string prop option; [@option]
      (** Represents a day of the week. Possible values: [MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY] *)
  float_value : float prop option; [@option]  (** A float value. *)
  integer_value : string prop option; [@option]
      (** An integer value (int64 format) *)
  string_value : string prop option; [@option]
      (** A string value. *)
  timestamp_value : string prop option; [@option]
      (** A timestamp in RFC3339 UTC Zulu format, with nanosecond resolution and up to nine fractional digits. Examples: 2014-10-02T15:01:23Z and 2014-10-02T15:01:23.045123456Z. *)
  date_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value__date_value
    list;
  time_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value__time_value
    list;
}
[@@deriving yojson_of]
(** Value to compare against.
The 'value' block must only contain one argument. For example when a condition is evaluated against a string-type field, only 'string_value' should be set.
This argument is mandatory, except for conditions using the 'EXISTS' operator. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions = {
  operator : string prop;
      (** Operator used to compare the field or infoType to the value. Possible values: [EQUAL_TO, NOT_EQUAL_TO, GREATER_THAN, LESS_THAN, GREATER_THAN_OR_EQUALS, LESS_THAN_OR_EQUALS, EXISTS] *)
  field :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__field
    list;
  value :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value
    list;
}
[@@deriving yojson_of]
(** A collection of conditions. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__condition__expressions__conditions = {
  conditions :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions
    list;
}
[@@deriving yojson_of]
(** Conditions to apply to the expression. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__condition__expressions = {
  logical_operator : string prop option; [@option]
      (** The operator to apply to the result of conditions. Default and currently only supported value is AND Default value: AND Possible values: [AND] *)
  conditions :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__condition__expressions__conditions
    list;
}
[@@deriving yojson_of]
(** An expression. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__condition = {
  expressions :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__condition__expressions
    list;
}
[@@deriving yojson_of]
(** Only apply the transformation if the condition evaluates to true for the given RecordCondition. The conditions are allowed to reference fields that are not used in the actual transformation.
Example Use Cases:
- Apply a different bucket transformation to an age column if the zip code column for the same record is within a specific range.
- Redact a field if the date of birth field is greater than 85. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__fields = {
  name : string prop option; [@option]
      (** Name describing the field. *)
}
[@@deriving yojson_of]
(** Input field(s) to apply the transformation to. When you have columns that reference their position within a list, omit the index from the FieldId.
FieldId name matching ignores the index. For example, instead of contact.nums[0].type, use contact.nums.type. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__info_types__sensitivity_score = {
  score : string prop;
      (** The sensitivity score applied to the resource. Possible values: [SENSITIVITY_LOW, SENSITIVITY_MODERATE, SENSITIVITY_HIGH] *)
}
[@@deriving yojson_of]
(** Optional custom sensitivity for this InfoType. This only applies to data profiling. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__info_types = {
  name : string prop;  (** Name of the information type. *)
  version : string prop option; [@option]
      (** Version name for this InfoType. *)
  sensitivity_score :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__info_types__sensitivity_score
    list;
}
[@@deriving yojson_of]
(** InfoTypes to apply the transformation to. Leaving this empty will apply the transformation to apply to
all findings that correspond to infoTypes that were requested in InspectConfig. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__date_value = {
  day : float prop option; [@option]
      (** Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant. *)
  month : float prop option; [@option]
      (** Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. *)
  year : float prop option; [@option]
      (** Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. *)
}
[@@deriving yojson_of]
(** Represents a whole or partial calendar date. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__time_value = {
  hours : float prop option; [@option]
      (** Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value 24:00:00 for scenarios like business closing time. *)
  minutes : float prop option; [@option]
      (** Minutes of hour of day. Must be from 0 to 59. *)
  nanos : float prop option; [@option]
      (** Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. *)
  seconds : float prop option; [@option]
      (** Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds. *)
}
[@@deriving yojson_of]
(** Represents a time of day. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max = {
  day_of_week_value : string prop option; [@option]
      (** Represents a day of the week. Possible values: [MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY] *)
  float_value : float prop option; [@option]  (** A float value. *)
  integer_value : string prop option; [@option]
      (** An integer value (int64 format) *)
  string_value : string prop option; [@option]
      (** A string value. *)
  timestamp_value : string prop option; [@option]
      (** A timestamp in RFC3339 UTC Zulu format, with nanosecond resolution and up to nine fractional digits. Examples: 2014-10-02T15:01:23Z and 2014-10-02T15:01:23.045123456Z. *)
  date_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__date_value
    list;
  time_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__time_value
    list;
}
[@@deriving yojson_of]
(** Upper bound of the range, exclusive; type must match min.
The 'max' block must only contain one argument. See the 'bucketing_config' block description for more information about choosing a data type. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__date_value = {
  day : float prop option; [@option]
      (** Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant. *)
  month : float prop option; [@option]
      (** Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. *)
  year : float prop option; [@option]
      (** Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. *)
}
[@@deriving yojson_of]
(** Represents a whole or partial calendar date. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__time_value = {
  hours : float prop option; [@option]
      (** Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value 24:00:00 for scenarios like business closing time. *)
  minutes : float prop option; [@option]
      (** Minutes of hour of day. Must be from 0 to 59. *)
  nanos : float prop option; [@option]
      (** Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. *)
  seconds : float prop option; [@option]
      (** Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds. *)
}
[@@deriving yojson_of]
(** Represents a time of day. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min = {
  day_of_week_value : string prop option; [@option]
      (** Represents a day of the week. Possible values: [MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY] *)
  float_value : float prop option; [@option]  (** A float value. *)
  integer_value : string prop option; [@option]
      (** An integer value (int64 format) *)
  string_value : string prop option; [@option]
      (** A string value. *)
  timestamp_value : string prop option; [@option]
      (** A timestamp in RFC3339 UTC Zulu format, with nanosecond resolution and up to nine fractional digits. Examples: 2014-10-02T15:01:23Z and 2014-10-02T15:01:23.045123456Z. *)
  date_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__date_value
    list;
  time_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__time_value
    list;
}
[@@deriving yojson_of]
(** Lower bound of the range, inclusive. Type should be the same as max if used.
The 'min' block must only contain one argument. See the 'bucketing_config' block description for more information about choosing a data type. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value = {
  day : float prop option; [@option]
      (** Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant. *)
  month : float prop option; [@option]
      (** Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. *)
  year : float prop option; [@option]
      (** Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. *)
}
[@@deriving yojson_of]
(** Represents a whole or partial calendar date. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value = {
  hours : float prop option; [@option]
      (** Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value 24:00:00 for scenarios like business closing time. *)
  minutes : float prop option; [@option]
      (** Minutes of hour of day. Must be from 0 to 59. *)
  nanos : float prop option; [@option]
      (** Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. *)
  seconds : float prop option; [@option]
      (** Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds. *)
}
[@@deriving yojson_of]
(** Represents a time of day. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value = {
  day_of_week_value : string prop option; [@option]
      (** Represents a day of the week. Possible values: [MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY] *)
  float_value : float prop option; [@option]  (** A float value. *)
  integer_value : string prop option; [@option]
      (** An integer value (int64 format) *)
  string_value : string prop option; [@option]
      (** A string value. *)
  timestamp_value : string prop option; [@option]
      (** A timestamp in RFC3339 UTC Zulu format, with nanosecond resolution and up to nine fractional digits. Examples: 2014-10-02T15:01:23Z and 2014-10-02T15:01:23.045123456Z. *)
  date_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value
    list;
  time_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value
    list;
}
[@@deriving yojson_of]
(** Replacement value for this bucket.
The 'replacement_value' block must only contain one argument. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets = {
  max :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max
    list;
  min :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min
    list;
  replacement_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value
    list;
}
[@@deriving yojson_of]
(** Set of buckets. Ranges must be non-overlapping.
Bucket is represented as a range, along with replacement values. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config = {
  buckets :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets
    list;
}
[@@deriving yojson_of]
(** Generalization function that buckets values based on ranges. The ranges and replacement values are dynamically provided by the user for custom behavior, such as 1-30 -> LOW 31-65 -> MEDIUM 66-100 -> HIGH
This can be used on data of type: number, long, string, timestamp.
If the provided value type differs from the type of data being transformed, we will first attempt converting the type of the data to be transformed to match the type of the bound before comparing.
See https://cloud.google.com/dlp/docs/concepts-bucketing to learn more. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__character_mask_config__characters_to_ignore = {
  characters_to_skip : string prop option; [@option]
      (** Characters to not transform when masking. Only one of this or 'common_characters_to_ignore' must be specified. *)
  common_characters_to_ignore : string prop option; [@option]
      (** Common characters to not transform when masking. Useful to avoid removing punctuation. Only one of this or 'characters_to_skip' must be specified. Possible values: [NUMERIC, ALPHA_UPPER_CASE, ALPHA_LOWER_CASE, PUNCTUATION, WHITESPACE] *)
}
[@@deriving yojson_of]
(** Characters to skip when doing de-identification of a value. These will be left alone and skipped. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__character_mask_config = {
  masking_character : string prop option; [@option]
      (** Character to use to mask the sensitive values—for example, * for an alphabetic string such as a name, or 0 for a numeric string
such as ZIP code or credit card number. This string must have a length of 1. If not supplied, this value defaults to * for
strings, and 0 for digits. *)
  number_to_mask : float prop option; [@option]
      (** Number of characters to mask. If not set, all matching chars will be masked. Skipped characters do not count towards this tally.
If number_to_mask is negative, this denotes inverse masking. Cloud DLP masks all but a number of characters. For example, suppose you have the following values:
- 'masking_character' is *
- 'number_to_mask' is -4
- 'reverse_order' is false
- 'characters_to_ignore' includes -
- Input string is 1234-5678-9012-3456

The resulting de-identified string is ****-****-****-3456. Cloud DLP masks all but the last four characters. If reverseOrder is true, all but the first four characters are masked as 1234-****-****-****. *)
  reverse_order : bool prop option; [@option]
      (** Mask characters in reverse order. For example, if masking_character is 0, number_to_mask is 14, and reverse_order is 'false', then the
input string '1234-5678-9012-3456' is masked as '00000000000000-3456'. *)
  characters_to_ignore :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__character_mask_config__characters_to_ignore
    list;
}
[@@deriving yojson_of]
(** Partially mask a string by replacing a given number of characters with a fixed character. Masking can start from the beginning or end of the string. This can be used on data of any type (numbers, longs, and so on) and when de-identifying structured data we'll attempt to preserve the original data's type. (This allows you to take a long like 123 and modify it to a string like **3). *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__context = {
  name : string prop;  (** Name describing the field. *)
}
[@@deriving yojson_of]
(** A context may be used for higher security and maintaining referential integrity such that the same identifier in two different contexts will be given a distinct surrogate. The context is appended to plaintext value being encrypted. On decryption the provided context is validated against the value used during encryption. If a context was provided during encryption, same context must be provided during decryption as well.

If the context is not set, plaintext would be used as is for encryption. If the context is set but:

1. there is no record present when transforming a given value or
2. the field is not present when transforming a given value,

plaintext would be used as is for encryption.

Note that case (1) is expected when an InfoTypeTransformation is applied to both structured and unstructured ContentItems. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped = {
  crypto_key_name : string prop;
      (** The resource name of the KMS CryptoKey to use for unwrapping. *)
  wrapped_key : string prop;
      (** The wrapped data crypto key.

A base64-encoded string. *)
}
[@@deriving yojson_of]
(** KMS wrapped key.
Include to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. Authorization requires the following IAM permissions when sending a request to perform a crypto transformation using a KMS-wrapped crypto key: dlp.kms.encrypt
For more information, see [Creating a wrapped key](https://cloud.google.com/dlp/docs/create-wrapped-key). Only one of this, 'transient' or 'unwrapped' must be specified.
Note: When you use Cloud KMS for cryptographic operations, [charges apply](https://cloud.google.com/kms/pricing). *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient = {
  name : string prop;
      (** Name of the key. This is an arbitrary string used to differentiate different keys. A unique key is generated per name: two separate 'TransientCryptoKey' protos share the same generated key if their names are the same. When the data crypto key is generated, this name is not used in any way (repeating the api call will result in a different key being generated). *)
}
[@@deriving yojson_of]
(** Transient crypto key. Use this to have a random data crypto key generated. It will be discarded after the request finishes. Only one of this, 'unwrapped' or 'kms_wrapped' must be specified. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped = {
  key : string prop;
      (** A 128/192/256 bit key.

A base64-encoded string. *)
}
[@@deriving yojson_of]
(** Unwrapped crypto key. Using raw keys is prone to security risks due to accidentally leaking the key. Choose another type of key if possible. Only one of this, 'transient' or 'kms_wrapped' must be specified. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key = {
  kms_wrapped :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped
    list;
  transient :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient
    list;
  unwrapped :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped
    list;
}
[@@deriving yojson_of]
(** The key used by the encryption function. For deterministic encryption using AES-SIV, the provided key is internally expanded to 64 bytes prior to use. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score = {
  score : string prop;
      (** The sensitivity score applied to the resource. Possible values: [SENSITIVITY_LOW, SENSITIVITY_MODERATE, SENSITIVITY_HIGH] *)
}
[@@deriving yojson_of]
(** Optional custom sensitivity for this InfoType. This only applies to data profiling. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type = {
  name : string prop;
      (** Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed at [https://cloud.google.com/dlp/docs/infotypes-reference](https://cloud.google.com/dlp/docs/infotypes-reference) when specifying a built-in type. When sending Cloud DLP results to Data Catalog, infoType names should conform to the pattern '[A-Za-z0-9$-_]{1,64}'. *)
  version : string prop option; [@option]
      (** Optional version name for this InfoType. *)
  sensitivity_score :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score
    list;
}
[@@deriving yojson_of]
(** The custom info type to annotate the surrogate with. This annotation will be applied to the surrogate by prefixing it with the name of the custom info type followed by the number of characters comprising the surrogate. The following scheme defines the format: {info type name}({surrogate character count}):{surrogate}

For example, if the name of custom info type is 'MY\_TOKEN\_INFO\_TYPE' and the surrogate is 'abc', the full replacement value will be: 'MY\_TOKEN\_INFO\_TYPE(3):abc'

This annotation identifies the surrogate when inspecting content using the custom info type 'Surrogate'. This facilitates reversal of the surrogate when it occurs in free text.

Note: For record transformations where the entire cell in a table is being transformed, surrogates are not mandatory. Surrogates are used to denote the location of the token and are necessary for re-identification in free form text.

In order for inspection to work properly, the name of this info type must not occur naturally anywhere in your data; otherwise, inspection may either

*   reverse a surrogate that does not correspond to an actual identifier
*   be unable to parse the surrogate and result in an error

Therefore, choose your custom info type name carefully after considering what your data looks like. One way to select a name that has a high chance of yielding reliable detection is to include one or more unicode characters that are highly improbable to exist in your data. For example, assuming your data is entered from a regular ASCII keyboard, the symbol with the hex code point 29DD might be used like so: ⧝MY\_TOKEN\_TYPE. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config = {
  context :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__context
    list;
  crypto_key :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key
    list;
  surrogate_info_type :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type
    list;
}
[@@deriving yojson_of]
(** Pseudonymization method that generates deterministic encryption for the given input. Outputs a base64 encoded representation of the encrypted output. Uses AES-SIV based on the RFC [https://tools.ietf.org/html/rfc5297](https://tools.ietf.org/html/rfc5297). *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped = {
  crypto_key_name : string prop;
      (** The resource name of the KMS CryptoKey to use for unwrapping. *)
  wrapped_key : string prop;
      (** The wrapped data crypto key.

A base64-encoded string. *)
}
[@@deriving yojson_of]
(** KMS wrapped key.
Include to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. Authorization requires the following IAM permissions when sending a request to perform a crypto transformation using a KMS-wrapped crypto key: dlp.kms.encrypt
For more information, see [Creating a wrapped key](https://cloud.google.com/dlp/docs/create-wrapped-key). Only one of this, 'transient' or 'unwrapped' must be specified.
Note: When you use Cloud KMS for cryptographic operations, [charges apply](https://cloud.google.com/kms/pricing). *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__transient = {
  name : string prop;
      (** Name of the key. This is an arbitrary string used to differentiate different keys. A unique key is generated per name: two separate 'TransientCryptoKey' protos share the same generated key if their names are the same. When the data crypto key is generated, this name is not used in any way (repeating the api call will result in a different key being generated). *)
}
[@@deriving yojson_of]
(** Transient crypto key. Use this to have a random data crypto key generated. It will be discarded after the request finishes. Only one of this, 'unwrapped' or 'kms_wrapped' must be specified. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped = {
  key : string prop;
      (** A 128/192/256 bit key.

A base64-encoded string. *)
}
[@@deriving yojson_of]
(** Unwrapped crypto key. Using raw keys is prone to security risks due to accidentally leaking the key. Choose another type of key if possible. Only one of this, 'transient' or 'kms_wrapped' must be specified. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key = {
  kms_wrapped :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped
    list;
  transient :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__transient
    list;
  unwrapped :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped
    list;
}
[@@deriving yojson_of]
(** The key used by the encryption function. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config = {
  crypto_key :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key
    list;
}
[@@deriving yojson_of]
(** Pseudonymization method that generates surrogates via cryptographic hashing. Uses SHA-256. The key size must be either 32 or 64 bytes.
Outputs a base64 encoded representation of the hashed output (for example, L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=).
Currently, only string and integer values can be hashed.
See https://cloud.google.com/dlp/docs/pseudonymization to learn more. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context = {
  name : string prop;  (** Name describing the field. *)
}
[@@deriving yojson_of]
(** The 'tweak', a context may be used for higher security since the same identifier in two different contexts won't be given the same surrogate. If the context is not set, a default tweak will be used.

If the context is set but:

1.  there is no record present when transforming a given value or
2.  the field is not present when transforming a given value,

a default tweak will be used.

Note that case (1) is expected when an 'InfoTypeTransformation' is applied to both structured and non-structured 'ContentItem's. Currently, the referenced field may be of value type integer or string.

The tweak is constructed as a sequence of bytes in big endian byte order such that:

*   a 64 bit integer is encoded followed by a single byte of value 1
*   a string is encoded in UTF-8 format followed by a single byte of value 2 *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped = {
  crypto_key_name : string prop;
      (** The resource name of the KMS CryptoKey to use for unwrapping. *)
  wrapped_key : string prop;
      (** The wrapped data crypto key.

A base64-encoded string. *)
}
[@@deriving yojson_of]
(** KMS wrapped key.
Include to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. Authorization requires the following IAM permissions when sending a request to perform a crypto transformation using a KMS-wrapped crypto key: dlp.kms.encrypt
For more information, see [Creating a wrapped key](https://cloud.google.com/dlp/docs/create-wrapped-key). Only one of this, 'transient' or 'unwrapped' must be specified.
Note: When you use Cloud KMS for cryptographic operations, [charges apply](https://cloud.google.com/kms/pricing). *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient = {
  name : string prop;
      (** Name of the key. This is an arbitrary string used to differentiate different keys. A unique key is generated per name: two separate 'TransientCryptoKey' protos share the same generated key if their names are the same. When the data crypto key is generated, this name is not used in any way (repeating the api call will result in a different key being generated). *)
}
[@@deriving yojson_of]
(** Transient crypto key. Use this to have a random data crypto key generated. It will be discarded after the request finishes. Only one of this, 'unwrapped' or 'kms_wrapped' must be specified. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped = {
  key : string prop;
      (** A 128/192/256 bit key.

A base64-encoded string. *)
}
[@@deriving yojson_of]
(** Unwrapped crypto key. Using raw keys is prone to security risks due to accidentally leaking the key. Choose another type of key if possible. Only one of this, 'transient' or 'kms_wrapped' must be specified. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key = {
  kms_wrapped :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped
    list;
  transient :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient
    list;
  unwrapped :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped
    list;
}
[@@deriving yojson_of]
(** The key used by the encryption algorithm. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score = {
  score : string prop;
      (** The sensitivity score applied to the resource. Possible values: [SENSITIVITY_LOW, SENSITIVITY_MODERATE, SENSITIVITY_HIGH] *)
}
[@@deriving yojson_of]
(** Optional custom sensitivity for this InfoType. This only applies to data profiling. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type = {
  name : string prop;
      (** Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed at [https://cloud.google.com/dlp/docs/infotypes-reference](https://cloud.google.com/dlp/docs/infotypes-reference) when specifying a built-in type. When sending Cloud DLP results to Data Catalog, infoType names should conform to the pattern '[A-Za-z0-9$-_]{1,64}'. *)
  version : string prop option; [@option]
      (** Optional version name for this InfoType. *)
  sensitivity_score :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score
    list;
}
[@@deriving yojson_of]
(** The custom infoType to annotate the surrogate with. This annotation will be applied to the surrogate by prefixing it with the name of the custom infoType followed by the number of characters comprising the surrogate. The following scheme defines the format: info\_type\_name(surrogate\_character\_count):surrogate

For example, if the name of custom infoType is 'MY\_TOKEN\_INFO\_TYPE' and the surrogate is 'abc', the full replacement value will be: 'MY\_TOKEN\_INFO\_TYPE(3):abc'

This annotation identifies the surrogate when inspecting content using the custom infoType ['SurrogateType'](https://cloud.google.com/dlp/docs/reference/rest/v2/InspectConfig#surrogatetype). This facilitates reversal of the surrogate when it occurs in free text.

In order for inspection to work properly, the name of this infoType must not occur naturally anywhere in your data; otherwise, inspection may find a surrogate that does not correspond to an actual identifier. Therefore, choose your custom infoType name carefully after considering what your data looks like. One way to select a name that has a high chance of yielding reliable detection is to include one or more unicode characters that are highly improbable to exist in your data. For example, assuming your data is entered from a regular ASCII keyboard, the symbol with the hex code point 29DD might be used like so: ⧝MY\_TOKEN\_TYPE *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config = {
  common_alphabet : string prop option; [@option]
      (** Common alphabets. Only one of this, 'custom_alphabet' or 'radix' must be specified. Possible values: [NUMERIC, HEXADECIMAL, UPPER_CASE_ALPHA_NUMERIC, ALPHA_NUMERIC] *)
  custom_alphabet : string prop option; [@option]
      (** This is supported by mapping these to the alphanumeric characters that the FFX mode natively supports. This happens before/after encryption/decryption. Each character listed must appear only once. Number of characters must be in the range \[2, 95\]. This must be encoded as ASCII. The order of characters does not matter. The full list of allowed characters is:

''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ~'!@#$%^&*()_-+={[}]|:;'<,>.?/''. Only one of this, 'common_alphabet' or 'radix' must be specified. *)
  radix : float prop option; [@option]
      (** The native way to select the alphabet. Must be in the range \[2, 95\]. Only one of this, 'custom_alphabet' or 'common_alphabet' must be specified. *)
  context :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context
    list;
  crypto_key :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key
    list;
  surrogate_info_type :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type
    list;
}
[@@deriving yojson_of]
(** Replaces an identifier with a surrogate using Format Preserving Encryption (FPE) with the FFX mode of operation; however when used in the 'content.reidentify' API method, it serves the opposite function by reversing the surrogate back into the original identifier. The identifier must be encoded as ASCII. For a given crypto key and context, the same identifier will be replaced with the same surrogate. Identifiers must be at least two characters long. In the case that the identifier is the empty string, it will be skipped. See [https://cloud.google.com/dlp/docs/pseudonymization](https://cloud.google.com/dlp/docs/pseudonymization) to learn more.

Note: We recommend using CryptoDeterministicConfig for all use cases which do not require preserving the input alphabet space and size, plus warrant referential integrity. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__context = {
  name : string prop;  (** Name describing the field. *)
}
[@@deriving yojson_of]
(** Points to the field that contains the context, for example, an entity id.
If set, must also set cryptoKey. If set, shift will be consistent for the given context. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped = {
  crypto_key_name : string prop;
      (** The resource name of the KMS CryptoKey to use for unwrapping. *)
  wrapped_key : string prop;
      (** The wrapped data crypto key.

A base64-encoded string. *)
}
[@@deriving yojson_of]
(** KMS wrapped key.
Include to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. Authorization requires the following IAM permissions when sending a request to perform a crypto transformation using a KMS-wrapped crypto key: dlp.kms.encrypt
For more information, see [Creating a wrapped key](https://cloud.google.com/dlp/docs/create-wrapped-key). Only one of this, 'transient' or 'unwrapped' must be specified.
Note: When you use Cloud KMS for cryptographic operations, [charges apply](https://cloud.google.com/kms/pricing). *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__transient = {
  name : string prop;
      (** Name of the key. This is an arbitrary string used to differentiate different keys. A unique key is generated per name: two separate 'TransientCryptoKey' protos share the same generated key if their names are the same. When the data crypto key is generated, this name is not used in any way (repeating the api call will result in a different key being generated). *)
}
[@@deriving yojson_of]
(** Transient crypto key. Use this to have a random data crypto key generated. It will be discarded after the request finishes. Only one of this, 'unwrapped' or 'kms_wrapped' must be specified. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped = {
  key : string prop;
      (** A 128/192/256 bit key.

A base64-encoded string. *)
}
[@@deriving yojson_of]
(** Unwrapped crypto key. Using raw keys is prone to security risks due to accidentally leaking the key. Choose another type of key if possible. Only one of this, 'transient' or 'kms_wrapped' must be specified. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key = {
  kms_wrapped :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped
    list;
  transient :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__transient
    list;
  unwrapped :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped
    list;
}
[@@deriving yojson_of]
(** Causes the shift to be computed based on this key and the context. This results in the same shift for the same context and cryptoKey. If set, must also set context. Can only be applied to table items. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config = {
  lower_bound_days : float prop;
      (** For example, -5 means shift date to at most 5 days back in the past. *)
  upper_bound_days : float prop;
      (** Range of shift in days. Actual shift will be selected at random within this range (inclusive ends). Negative means shift to earlier in time. Must not be more than 365250 days (1000 years) each direction.

For example, 3 means shift date to at most 3 days into the future. *)
  context :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__context
    list;
  crypto_key :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key
    list;
}
[@@deriving yojson_of]
(** Shifts dates by random number of days, with option to be consistent for the same context. See https://cloud.google.com/dlp/docs/concepts-date-shifting to learn more. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound = {
  float_value : float prop option; [@option]  (** A float value. *)
  integer_value : string prop option; [@option]
      (** An integer value (int64 format) *)
}
[@@deriving yojson_of]
(** Lower bound value of buckets.
All values less than lower_bound are grouped together into a single bucket; for example if lower_bound = 10, then all values less than 10 are replaced with the value -10.
The 'lower_bound' block must only contain one argument. See the 'fixed_size_bucketing_config' block description for more information about choosing a data type. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound = {
  float_value : float prop option; [@option]  (** A float value. *)
  integer_value : string prop option; [@option]
      (** An integer value (int64 format) *)
}
[@@deriving yojson_of]
(** Upper bound value of buckets.
All values greater than upper_bound are grouped together into a single bucket; for example if upper_bound = 89, then all values greater than 89 are replaced with the value 89+.
The 'upper_bound' block must only contain one argument. See the 'fixed_size_bucketing_config' block description for more information about choosing a data type. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config = {
  bucket_size : float prop;
      (** Size of each bucket (except for minimum and maximum buckets).
So if lower_bound = 10, upper_bound = 89, and bucketSize = 10, then the following buckets would be used: -10, 10-20, 20-30, 30-40, 40-50, 50-60, 60-70, 70-80, 80-89, 89+.
Precision up to 2 decimals works. *)
  lower_bound :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound
    list;
  upper_bound :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound
    list;
}
[@@deriving yojson_of]
(** Buckets values based on fixed size ranges. The Bucketing transformation can provide all of this functionality, but requires more configuration. This message is provided as a convenience to the user for simple bucketing strategies.

The transformed value will be a hyphenated string of {lower_bound}-{upper_bound}. For example, if lower_bound = 10 and upper_bound = 20, all values that are within this bucket will be replaced with 10-20.

This can be used on data of type: double, long.

If the bound Value type differs from the type of data being transformed, we will first attempt converting the type of the data to be transformed to match the type of the bound before comparing.

See https://cloud.google.com/dlp/docs/concepts-bucketing to learn more. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__redact_config =
  unit
[@@deriving yojson_of]

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__date_value = {
  day : float prop option; [@option]
      (** Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant. *)
  month : float prop option; [@option]
      (** Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. *)
  year : float prop option; [@option]
      (** Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. *)
}
[@@deriving yojson_of]
(** Represents a whole or partial calendar date. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__time_value = {
  hours : float prop option; [@option]
      (** Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value 24:00:00 for scenarios like business closing time. *)
  minutes : float prop option; [@option]
      (** Minutes of hour of day. Must be from 0 to 59. *)
  nanos : float prop option; [@option]
      (** Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. *)
  seconds : float prop option; [@option]
      (** Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds. *)
}
[@@deriving yojson_of]
(** Represents a time of day. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value = {
  boolean_value : bool prop option; [@option]
      (** A boolean value. *)
  day_of_week_value : string prop option; [@option]
      (** Represents a day of the week. Possible values: [MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY] *)
  float_value : float prop option; [@option]  (** A float value. *)
  integer_value : string prop option; [@option]
      (** An integer value (int64 format) *)
  string_value : string prop option; [@option]
      (** A string value. *)
  timestamp_value : string prop option; [@option]
      (** A timestamp in RFC3339 UTC Zulu format, with nanosecond resolution and up to nine fractional digits.
Examples: 2014-10-02T15:01:23Z and 2014-10-02T15:01:23.045123456Z. *)
  date_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__date_value
    list;
  time_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__time_value
    list;
}
[@@deriving yojson_of]
(** Replace each input value with a given value.
The 'new_value' block must only contain one argument. For example when replacing the contents of a string-type field, only 'string_value' should be set. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config = {
  new_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value
    list;
}
[@@deriving yojson_of]
(** Replace each input value with a given value. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config__word_list = {
  words : string prop list;
      (** Words or phrases defining the dictionary. The dictionary must contain at least one phrase and every phrase must contain at least 2 characters that are letters or digits. *)
}
[@@deriving yojson_of]
(** A list of words to select from for random replacement. The [limits](https://cloud.google.com/dlp/limits) page contains details about the size limits of dictionaries. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config = {
  word_list :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config__word_list
    list;
}
[@@deriving yojson_of]
(** Replace with a value randomly drawn (with replacement) from a dictionary. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_with_info_type_config =
  unit
[@@deriving yojson_of]

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__time_part_config = {
  part_to_extract : string prop;
      (** The part of the time to keep. Possible values: [YEAR, MONTH, DAY_OF_MONTH, DAY_OF_WEEK, WEEK_OF_YEAR, HOUR_OF_DAY] *)
}
[@@deriving yojson_of]
(** For use with Date, Timestamp, and TimeOfDay, extract or preserve a portion of the value. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation = {
  bucketing_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config
    list;
  character_mask_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__character_mask_config
    list;
  crypto_deterministic_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config
    list;
  crypto_hash_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config
    list;
  crypto_replace_ffx_fpe_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config
    list;
  date_shift_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config
    list;
  fixed_size_bucketing_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config
    list;
  redact_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__redact_config
    list;
  replace_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config
    list;
  replace_dictionary_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config
    list;
  replace_with_info_type_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_with_info_type_config
    list;
  time_part_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__time_part_config
    list;
}
[@@deriving yojson_of]
(** Apply the transformation to the entire field.
The 'primitive_transformation' block must only contain one argument, corresponding to the type of transformation. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations = {
  info_types :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__info_types
    list;
  primitive_transformation :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation
    list;
}
[@@deriving yojson_of]
(** Transformation for each infoType. Cannot specify more than one for a given infoType. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations = {
  transformations :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations
    list;
}
[@@deriving yojson_of]
(** Treat the contents of the field as free text, and selectively transform content that matches an InfoType.
Only one of 'primitive_transformation' or 'info_type_transformations' must be specified. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max__date_value = {
  day : float prop option; [@option]
      (** Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant. *)
  month : float prop option; [@option]
      (** Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. *)
  year : float prop option; [@option]
      (** Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. *)
}
[@@deriving yojson_of]
(** Represents a whole or partial calendar date. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max__time_value = {
  hours : float prop option; [@option]
      (** Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value 24:00:00 for scenarios like business closing time. *)
  minutes : float prop option; [@option]
      (** Minutes of hour of day. Must be from 0 to 59. *)
  nanos : float prop option; [@option]
      (** Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. *)
  seconds : float prop option; [@option]
      (** Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds. *)
}
[@@deriving yojson_of]
(** Represents a time of day. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max = {
  boolean_value : bool prop option; [@option]
      (** A boolean value. *)
  day_of_week_value : string prop option; [@option]
      (** Represents a day of the week. Possible values: [MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY] *)
  float_value : float prop option; [@option]  (** A float value. *)
  integer_value : string prop option; [@option]
      (** An integer value (int64 format) *)
  string_value : string prop option; [@option]
      (** A string value. *)
  timestamp_value : string prop option; [@option]
      (** A timestamp in RFC3339 UTC Zulu format, with nanosecond resolution and up to nine fractional digits. Examples: 2014-10-02T15:01:23Z and 2014-10-02T15:01:23.045123456Z. *)
  date_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max__date_value
    list;
  time_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max__time_value
    list;
}
[@@deriving yojson_of]
(** Upper bound of the range, exclusive; type must match min.
The 'max' block must only contain one argument. See the 'bucketing_config' block description for more information about choosing a data type. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min__date_value = {
  day : float prop option; [@option]
      (** Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant. *)
  month : float prop option; [@option]
      (** Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. *)
  year : float prop option; [@option]
      (** Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. *)
}
[@@deriving yojson_of]
(** Represents a whole or partial calendar date. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min__time_value = {
  hours : float prop option; [@option]
      (** Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value 24:00:00 for scenarios like business closing time. *)
  minutes : float prop option; [@option]
      (** Minutes of hour of day. Must be from 0 to 59. *)
  nanos : float prop option; [@option]
      (** Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. *)
  seconds : float prop option; [@option]
      (** Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds. *)
}
[@@deriving yojson_of]
(** Represents a time of day. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min = {
  boolean_value : bool prop option; [@option]
      (** A boolean value. *)
  day_of_week_value : string prop option; [@option]
      (** Represents a day of the week. Possible values: [MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY] *)
  float_value : float prop option; [@option]  (** A float value. *)
  integer_value : string prop option; [@option]
      (** An integer value (int64 format) *)
  string_value : string prop option; [@option]
      (** A string value. *)
  timestamp_value : string prop option; [@option]
      (** A timestamp in RFC3339 UTC Zulu format, with nanosecond resolution and up to nine fractional digits. Examples: 2014-10-02T15:01:23Z and 2014-10-02T15:01:23.045123456Z. *)
  date_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min__date_value
    list;
  time_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min__time_value
    list;
}
[@@deriving yojson_of]
(** Lower bound of the range, inclusive. Type should be the same as max if used.
The 'min' block must only contain one argument. See the 'bucketing_config' block description for more information about choosing a data type. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value = {
  day : float prop option; [@option]
      (** Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant. *)
  month : float prop option; [@option]
      (** Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. *)
  year : float prop option; [@option]
      (** Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. *)
}
[@@deriving yojson_of]
(** Represents a whole or partial calendar date. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value = {
  hours : float prop option; [@option]
      (** Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value 24:00:00 for scenarios like business closing time. *)
  minutes : float prop option; [@option]
      (** Minutes of hour of day. Must be from 0 to 59. *)
  nanos : float prop option; [@option]
      (** Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. *)
  seconds : float prop option; [@option]
      (** Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds. *)
}
[@@deriving yojson_of]
(** Represents a time of day. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value = {
  boolean_value : bool prop option; [@option]
      (** A boolean value. *)
  day_of_week_value : string prop option; [@option]
      (** Represents a day of the week. Possible values: [MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY] *)
  float_value : float prop option; [@option]  (** A float value. *)
  integer_value : string prop option; [@option]
      (** An integer value (int64 format) *)
  string_value : string prop option; [@option]
      (** A string value. *)
  timestamp_value : string prop option; [@option]
      (** A timestamp in RFC3339 UTC Zulu format, with nanosecond resolution and up to nine fractional digits. Examples: 2014-10-02T15:01:23Z and 2014-10-02T15:01:23.045123456Z. *)
  date_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value
    list;
  time_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value
    list;
}
[@@deriving yojson_of]
(** Replacement value for this bucket.
The 'replacement_value' block must only contain one argument. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets = {
  max :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max
    list;
  min :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min
    list;
  replacement_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value
    list;
}
[@@deriving yojson_of]
(** Set of buckets. Ranges must be non-overlapping.
Bucket is represented as a range, along with replacement values. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config = {
  buckets :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets
    list;
}
[@@deriving yojson_of]
(** Generalization function that buckets values based on ranges. The ranges and replacement values are dynamically provided by the user for custom behavior, such as 1-30 -> LOW 31-65 -> MEDIUM 66-100 -> HIGH
This can be used on data of type: number, long, string, timestamp.
If the provided value type differs from the type of data being transformed, we will first attempt converting the type of the data to be transformed to match the type of the bound before comparing.
See https://cloud.google.com/dlp/docs/concepts-bucketing to learn more. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__character_mask_config__characters_to_ignore = {
  characters_to_skip : string prop option; [@option]
      (** Characters to not transform when masking. *)
  common_characters_to_ignore : string prop option; [@option]
      (** Common characters to not transform when masking. Useful to avoid removing punctuation. Possible values: [NUMERIC, ALPHA_UPPER_CASE, ALPHA_LOWER_CASE, PUNCTUATION, WHITESPACE] *)
}
[@@deriving yojson_of]
(** Characters to skip when doing de-identification of a value. These will be left alone and skipped. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__character_mask_config = {
  masking_character : string prop option; [@option]
      (** Character to use to mask the sensitive values—for example, * for an alphabetic string such as a name, or 0 for a numeric string
such as ZIP code or credit card number. This string must have a length of 1. If not supplied, this value defaults to * for
strings, and 0 for digits. *)
  number_to_mask : float prop option; [@option]
      (** Number of characters to mask. If not set, all matching chars will be masked. Skipped characters do not count towards this tally.
If number_to_mask is negative, this denotes inverse masking. Cloud DLP masks all but a number of characters. For example, suppose you have the following values:
- 'masking_character' is *
- 'number_to_mask' is -4
- 'reverse_order' is false
- 'characters_to_ignore' includes -
- Input string is 1234-5678-9012-3456

The resulting de-identified string is ****-****-****-3456. Cloud DLP masks all but the last four characters. If reverseOrder is true, all but the first four characters are masked as 1234-****-****-****. *)
  reverse_order : bool prop option; [@option]
      (** Mask characters in reverse order. For example, if masking_character is 0, number_to_mask is 14, and reverse_order is 'false', then the
input string '1234-5678-9012-3456' is masked as '00000000000000-3456'. *)
  characters_to_ignore :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__character_mask_config__characters_to_ignore
    list;
}
[@@deriving yojson_of]
(** Partially mask a string by replacing a given number of characters with a fixed character. Masking can start from the beginning or end of the string. This can be used on data of any type (numbers, longs, and so on) and when de-identifying structured data we'll attempt to preserve the original data's type. (This allows you to take a long like 123 and modify it to a string like **3). *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__context = {
  name : string prop option; [@option]
      (** Name describing the field. *)
}
[@@deriving yojson_of]
(** A context may be used for higher security and maintaining referential integrity such that the same identifier in two different contexts will be given a distinct surrogate. The context is appended to plaintext value being encrypted. On decryption the provided context is validated against the value used during encryption. If a context was provided during encryption, same context must be provided during decryption as well.

If the context is not set, plaintext would be used as is for encryption. If the context is set but:

1. there is no record present when transforming a given value or
2. the field is not present when transforming a given value,

plaintext would be used as is for encryption.

Note that case (1) is expected when an InfoTypeTransformation is applied to both structured and unstructured ContentItems. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped = {
  crypto_key_name : string prop;
      (** The resource name of the KMS CryptoKey to use for unwrapping. *)
  wrapped_key : string prop;
      (** The wrapped data crypto key.

A base64-encoded string. *)
}
[@@deriving yojson_of]
(** KMS wrapped key.
Include to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. Authorization requires the following IAM permissions when sending a request to perform a crypto transformation using a KMS-wrapped crypto key: dlp.kms.encrypt
For more information, see [Creating a wrapped key](https://cloud.google.com/dlp/docs/create-wrapped-key).
Note: When you use Cloud KMS for cryptographic operations, [charges apply](https://cloud.google.com/kms/pricing). *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient = {
  name : string prop;
      (** Name of the key. This is an arbitrary string used to differentiate different keys. A unique key is generated per name: two separate 'TransientCryptoKey' protos share the same generated key if their names are the same. When the data crypto key is generated, this name is not used in any way (repeating the api call will result in a different key being generated). *)
}
[@@deriving yojson_of]
(** Transient crypto key. Use this to have a random data crypto key generated. It will be discarded after the request finishes. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped = {
  key : string prop;
      (** A 128/192/256 bit key.

A base64-encoded string. *)
}
[@@deriving yojson_of]
(** Unwrapped crypto key. Using raw keys is prone to security risks due to accidentally leaking the key. Choose another type of key if possible. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key = {
  kms_wrapped :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped
    list;
  transient :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient
    list;
  unwrapped :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped
    list;
}
[@@deriving yojson_of]
(** The key used by the encryption function. For deterministic encryption using AES-SIV, the provided key is internally expanded to 64 bytes prior to use. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score = {
  score : string prop;
      (** The sensitivity score applied to the resource. Possible values: [SENSITIVITY_LOW, SENSITIVITY_MODERATE, SENSITIVITY_HIGH] *)
}
[@@deriving yojson_of]
(** Optional custom sensitivity for this InfoType. This only applies to data profiling. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type = {
  name : string prop option; [@option]
      (** Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed at [https://cloud.google.com/dlp/docs/infotypes-reference](https://cloud.google.com/dlp/docs/infotypes-reference) when specifying a built-in type. When sending Cloud DLP results to Data Catalog, infoType names should conform to the pattern '[A-Za-z0-9$-_]{1,64}'. *)
  version : string prop option; [@option]
      (** Optional version name for this InfoType. *)
  sensitivity_score :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score
    list;
}
[@@deriving yojson_of]
(** The custom info type to annotate the surrogate with. This annotation will be applied to the surrogate by prefixing it with the name of the custom info type followed by the number of characters comprising the surrogate. The following scheme defines the format: {info type name}({surrogate character count}):{surrogate}

For example, if the name of custom info type is 'MY\_TOKEN\_INFO\_TYPE' and the surrogate is 'abc', the full replacement value will be: 'MY\_TOKEN\_INFO\_TYPE(3):abc'

This annotation identifies the surrogate when inspecting content using the custom info type 'Surrogate'. This facilitates reversal of the surrogate when it occurs in free text.

Note: For record transformations where the entire cell in a table is being transformed, surrogates are not mandatory. Surrogates are used to denote the location of the token and are necessary for re-identification in free form text.

In order for inspection to work properly, the name of this info type must not occur naturally anywhere in your data; otherwise, inspection may either

*   reverse a surrogate that does not correspond to an actual identifier
*   be unable to parse the surrogate and result in an error

Therefore, choose your custom info type name carefully after considering what your data looks like. One way to select a name that has a high chance of yielding reliable detection is to include one or more unicode characters that are highly improbable to exist in your data. For example, assuming your data is entered from a regular ASCII keyboard, the symbol with the hex code point 29DD might be used like so: ⧝MY\_TOKEN\_TYPE. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config = {
  context :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__context
    list;
  crypto_key :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key
    list;
  surrogate_info_type :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type
    list;
}
[@@deriving yojson_of]
(** Pseudonymization method that generates deterministic encryption for the given input. Outputs a base64 encoded representation of the encrypted output. Uses AES-SIV based on the RFC [https://tools.ietf.org/html/rfc5297](https://tools.ietf.org/html/rfc5297). *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped = {
  crypto_key_name : string prop;
      (** The resource name of the KMS CryptoKey to use for unwrapping. *)
  wrapped_key : string prop;
      (** The wrapped data crypto key.

A base64-encoded string. *)
}
[@@deriving yojson_of]
(** KMS wrapped key.
Include to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. Authorization requires the following IAM permissions when sending a request to perform a crypto transformation using a KMS-wrapped crypto key: dlp.kms.encrypt
For more information, see [Creating a wrapped key](https://cloud.google.com/dlp/docs/create-wrapped-key).
Note: When you use Cloud KMS for cryptographic operations, [charges apply](https://cloud.google.com/kms/pricing). *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__transient = {
  name : string prop;
      (** Name of the key. This is an arbitrary string used to differentiate different keys. A unique key is generated per name: two separate 'TransientCryptoKey' protos share the same generated key if their names are the same. When the data crypto key is generated, this name is not used in any way (repeating the api call will result in a different key being generated). *)
}
[@@deriving yojson_of]
(** Transient crypto key. Use this to have a random data crypto key generated. It will be discarded after the request finishes. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped = {
  key : string prop;
      (** A 128/192/256 bit key.

A base64-encoded string. *)
}
[@@deriving yojson_of]
(** Unwrapped crypto key. Using raw keys is prone to security risks due to accidentally leaking the key. Choose another type of key if possible. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key = {
  kms_wrapped :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped
    list;
  transient :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__transient
    list;
  unwrapped :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped
    list;
}
[@@deriving yojson_of]
(** The key used by the encryption function. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config = {
  crypto_key :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key
    list;
}
[@@deriving yojson_of]
(** Pseudonymization method that generates surrogates via cryptographic hashing. Uses SHA-256. The key size must be either 32 or 64 bytes.
Outputs a base64 encoded representation of the hashed output (for example, L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=).
Currently, only string and integer values can be hashed.
See https://cloud.google.com/dlp/docs/pseudonymization to learn more. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context = {
  name : string prop option; [@option]
      (** Name describing the field. *)
}
[@@deriving yojson_of]
(** The 'tweak', a context may be used for higher security since the same identifier in two different contexts won't be given the same surrogate. If the context is not set, a default tweak will be used.

If the context is set but:

1.  there is no record present when transforming a given value or
2.  the field is not present when transforming a given value,

a default tweak will be used.

Note that case (1) is expected when an 'InfoTypeTransformation' is applied to both structured and non-structured 'ContentItem's. Currently, the referenced field may be of value type integer or string.

The tweak is constructed as a sequence of bytes in big endian byte order such that:

*   a 64 bit integer is encoded followed by a single byte of value 1
*   a string is encoded in UTF-8 format followed by a single byte of value 2 *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped = {
  crypto_key_name : string prop;
      (** The resource name of the KMS CryptoKey to use for unwrapping. *)
  wrapped_key : string prop;
      (** The wrapped data crypto key.

A base64-encoded string. *)
}
[@@deriving yojson_of]
(** KMS wrapped key.
Include to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. Authorization requires the following IAM permissions when sending a request to perform a crypto transformation using a KMS-wrapped crypto key: dlp.kms.encrypt
For more information, see [Creating a wrapped key](https://cloud.google.com/dlp/docs/create-wrapped-key).
Note: When you use Cloud KMS for cryptographic operations, [charges apply](https://cloud.google.com/kms/pricing). *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient = {
  name : string prop;
      (** Name of the key. This is an arbitrary string used to differentiate different keys. A unique key is generated per name: two separate 'TransientCryptoKey' protos share the same generated key if their names are the same. When the data crypto key is generated, this name is not used in any way (repeating the api call will result in a different key being generated). *)
}
[@@deriving yojson_of]
(** Transient crypto key. Use this to have a random data crypto key generated. It will be discarded after the request finishes. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped = {
  key : string prop;
      (** A 128/192/256 bit key.

A base64-encoded string. *)
}
[@@deriving yojson_of]
(** Unwrapped crypto key. Using raw keys is prone to security risks due to accidentally leaking the key. Choose another type of key if possible. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key = {
  kms_wrapped :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped
    list;
  transient :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient
    list;
  unwrapped :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped
    list;
}
[@@deriving yojson_of]
(** The key used by the encryption algorithm. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score = {
  score : string prop;
      (** The sensitivity score applied to the resource. Possible values: [SENSITIVITY_LOW, SENSITIVITY_MODERATE, SENSITIVITY_HIGH] *)
}
[@@deriving yojson_of]
(** Optional custom sensitivity for this InfoType. This only applies to data profiling. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type = {
  name : string prop option; [@option]
      (** Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed at [https://cloud.google.com/dlp/docs/infotypes-reference](https://cloud.google.com/dlp/docs/infotypes-reference) when specifying a built-in type. When sending Cloud DLP results to Data Catalog, infoType names should conform to the pattern '[A-Za-z0-9$-_]{1,64}'. *)
  version : string prop option; [@option]
      (** Optional version name for this InfoType. *)
  sensitivity_score :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score
    list;
}
[@@deriving yojson_of]
(** The custom infoType to annotate the surrogate with. This annotation will be applied to the surrogate by prefixing it with the name of the custom infoType followed by the number of characters comprising the surrogate. The following scheme defines the format: info\_type\_name(surrogate\_character\_count):surrogate

For example, if the name of custom infoType is 'MY\_TOKEN\_INFO\_TYPE' and the surrogate is 'abc', the full replacement value will be: 'MY\_TOKEN\_INFO\_TYPE(3):abc'

This annotation identifies the surrogate when inspecting content using the custom infoType ['SurrogateType'](https://cloud.google.com/dlp/docs/reference/rest/v2/InspectConfig#surrogatetype). This facilitates reversal of the surrogate when it occurs in free text.

In order for inspection to work properly, the name of this infoType must not occur naturally anywhere in your data; otherwise, inspection may find a surrogate that does not correspond to an actual identifier. Therefore, choose your custom infoType name carefully after considering what your data looks like. One way to select a name that has a high chance of yielding reliable detection is to include one or more unicode characters that are highly improbable to exist in your data. For example, assuming your data is entered from a regular ASCII keyboard, the symbol with the hex code point 29DD might be used like so: ⧝MY\_TOKEN\_TYPE *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config = {
  common_alphabet : string prop option; [@option]
      (** Common alphabets. Possible values: [FFX_COMMON_NATIVE_ALPHABET_UNSPECIFIED, NUMERIC, HEXADECIMAL, UPPER_CASE_ALPHA_NUMERIC, ALPHA_NUMERIC] *)
  custom_alphabet : string prop option; [@option]
      (** This is supported by mapping these to the alphanumeric characters that the FFX mode natively supports. This happens before/after encryption/decryption. Each character listed must appear only once. Number of characters must be in the range \[2, 95\]. This must be encoded as ASCII. The order of characters does not matter. The full list of allowed characters is:

''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ~'!@#$%^&*()_-+={[}]|:;'<,>.?/'' *)
  radix : float prop option; [@option]
      (** The native way to select the alphabet. Must be in the range \[2, 95\]. *)
  context :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context
    list;
  crypto_key :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key
    list;
  surrogate_info_type :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type
    list;
}
[@@deriving yojson_of]
(** Replaces an identifier with a surrogate using Format Preserving Encryption (FPE) with the FFX mode of operation; however when used in the 'content.reidentify' API method, it serves the opposite function by reversing the surrogate back into the original identifier. The identifier must be encoded as ASCII. For a given crypto key and context, the same identifier will be replaced with the same surrogate. Identifiers must be at least two characters long. In the case that the identifier is the empty string, it will be skipped. See [https://cloud.google.com/dlp/docs/pseudonymization](https://cloud.google.com/dlp/docs/pseudonymization) to learn more.

Note: We recommend using CryptoDeterministicConfig for all use cases which do not require preserving the input alphabet space and size, plus warrant referential integrity. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__context = {
  name : string prop option; [@option]
      (** Name describing the field. *)
}
[@@deriving yojson_of]
(** Points to the field that contains the context, for example, an entity id.
If set, must also set cryptoKey. If set, shift will be consistent for the given context. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped = {
  crypto_key_name : string prop;
      (** The resource name of the KMS CryptoKey to use for unwrapping. *)
  wrapped_key : string prop;
      (** The wrapped data crypto key.

A base64-encoded string. *)
}
[@@deriving yojson_of]
(** KMS wrapped key.
Include to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. Authorization requires the following IAM permissions when sending a request to perform a crypto transformation using a KMS-wrapped crypto key: dlp.kms.encrypt
For more information, see [Creating a wrapped key](https://cloud.google.com/dlp/docs/create-wrapped-key).
Note: When you use Cloud KMS for cryptographic operations, [charges apply](https://cloud.google.com/kms/pricing). *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__transient = {
  name : string prop;
      (** Name of the key. This is an arbitrary string used to differentiate different keys. A unique key is generated per name: two separate 'TransientCryptoKey' protos share the same generated key if their names are the same. When the data crypto key is generated, this name is not used in any way (repeating the api call will result in a different key being generated). *)
}
[@@deriving yojson_of]
(** Transient crypto key. Use this to have a random data crypto key generated. It will be discarded after the request finishes. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped = {
  key : string prop;
      (** A 128/192/256 bit key.

A base64-encoded string. *)
}
[@@deriving yojson_of]
(** Unwrapped crypto key. Using raw keys is prone to security risks due to accidentally leaking the key. Choose another type of key if possible. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key = {
  kms_wrapped :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped
    list;
  transient :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__transient
    list;
  unwrapped :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped
    list;
}
[@@deriving yojson_of]
(** Causes the shift to be computed based on this key and the context. This results in the same shift for the same context and cryptoKey. If set, must also set context. Can only be applied to table items. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config = {
  lower_bound_days : float prop;
      (** For example, -5 means shift date to at most 5 days back in the past. *)
  upper_bound_days : float prop;
      (** Range of shift in days. Actual shift will be selected at random within this range (inclusive ends). Negative means shift to earlier in time. Must not be more than 365250 days (1000 years) each direction.

For example, 3 means shift date to at most 3 days into the future. *)
  context :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__context
    list;
  crypto_key :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key
    list;
}
[@@deriving yojson_of]
(** Shifts dates by random number of days, with option to be consistent for the same context. See https://cloud.google.com/dlp/docs/concepts-date-shifting to learn more. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound__date_value = {
  day : float prop option; [@option]
      (** Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant. *)
  month : float prop option; [@option]
      (** Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. *)
  year : float prop option; [@option]
      (** Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. *)
}
[@@deriving yojson_of]
(** Represents a whole or partial calendar date. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound__time_value = {
  hours : float prop option; [@option]
      (** Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value 24:00:00 for scenarios like business closing time. *)
  minutes : float prop option; [@option]
      (** Minutes of hour of day. Must be from 0 to 59. *)
  nanos : float prop option; [@option]
      (** Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. *)
  seconds : float prop option; [@option]
      (** Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds. *)
}
[@@deriving yojson_of]
(** Represents a time of day. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound = {
  boolean_value : bool prop option; [@option]
      (** A boolean value. *)
  day_of_week_value : string prop option; [@option]
      (** Represents a day of the week. Possible values: [MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY] *)
  float_value : float prop option; [@option]  (** A float value. *)
  integer_value : string prop option; [@option]
      (** An integer value (int64 format) *)
  string_value : string prop option; [@option]
      (** A string value. *)
  timestamp_value : string prop option; [@option]
      (** A timestamp in RFC3339 UTC Zulu format, with nanosecond resolution and up to nine fractional digits. Examples: 2014-10-02T15:01:23Z and 2014-10-02T15:01:23.045123456Z. *)
  date_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound__date_value
    list;
  time_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound__time_value
    list;
}
[@@deriving yojson_of]
(** Lower bound value of buckets.
All values less than lower_bound are grouped together into a single bucket; for example if lower_bound = 10, then all values less than 10 are replaced with the value -10.
The 'lower_bound' block must only contain one argument. See the 'fixed_size_bucketing_config' block description for more information about choosing a data type. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound__date_value = {
  day : float prop option; [@option]
      (** Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant. *)
  month : float prop option; [@option]
      (** Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. *)
  year : float prop option; [@option]
      (** Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. *)
}
[@@deriving yojson_of]
(** Represents a whole or partial calendar date. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound__time_value = {
  hours : float prop option; [@option]
      (** Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value 24:00:00 for scenarios like business closing time. *)
  minutes : float prop option; [@option]
      (** Minutes of hour of day. Must be from 0 to 59. *)
  nanos : float prop option; [@option]
      (** Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. *)
  seconds : float prop option; [@option]
      (** Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds. *)
}
[@@deriving yojson_of]
(** Represents a time of day. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound = {
  boolean_value : bool prop option; [@option]
      (** A boolean value. *)
  day_of_week_value : string prop option; [@option]
      (** Represents a day of the week. Possible values: [MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY] *)
  float_value : float prop option; [@option]  (** A float value. *)
  integer_value : string prop option; [@option]
      (** An integer value (int64 format) *)
  string_value : string prop option; [@option]
      (** A string value. *)
  timestamp_value : string prop option; [@option]
      (** A timestamp in RFC3339 UTC Zulu format, with nanosecond resolution and up to nine fractional digits. Examples: 2014-10-02T15:01:23Z and 2014-10-02T15:01:23.045123456Z. *)
  date_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound__date_value
    list;
  time_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound__time_value
    list;
}
[@@deriving yojson_of]
(** Upper bound value of buckets.
All values greater than upper_bound are grouped together into a single bucket; for example if upper_bound = 89, then all values greater than 89 are replaced with the value 89+.
The 'upper_bound' block must only contain one argument. See the 'fixed_size_bucketing_config' block description for more information about choosing a data type. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config = {
  bucket_size : float prop;
      (** Size of each bucket (except for minimum and maximum buckets).
So if lower_bound = 10, upper_bound = 89, and bucketSize = 10, then the following buckets would be used: -10, 10-20, 20-30, 30-40, 40-50, 50-60, 60-70, 70-80, 80-89, 89+.
Precision up to 2 decimals works. *)
  lower_bound :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound
    list;
  upper_bound :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound
    list;
}
[@@deriving yojson_of]
(** Buckets values based on fixed size ranges. The Bucketing transformation can provide all of this functionality, but requires more configuration. This message is provided as a convenience to the user for simple bucketing strategies.

The transformed value will be a hyphenated string of {lower_bound}-{upper_bound}. For example, if lower_bound = 10 and upper_bound = 20, all values that are within this bucket will be replaced with 10-20.

This can be used on data of type: double, long.

If the bound Value type differs from the type of data being transformed, we will first attempt converting the type of the data to be transformed to match the type of the bound before comparing.

See https://cloud.google.com/dlp/docs/concepts-bucketing to learn more. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__redact_config =
  unit
[@@deriving yojson_of]

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value__date_value = {
  day : float prop option; [@option]
      (** Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant. *)
  month : float prop option; [@option]
      (** Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. *)
  year : float prop option; [@option]
      (** Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. *)
}
[@@deriving yojson_of]
(** Represents a whole or partial calendar date. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value__time_value = {
  hours : float prop option; [@option]
      (** Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value 24:00:00 for scenarios like business closing time. *)
  minutes : float prop option; [@option]
      (** Minutes of hour of day. Must be from 0 to 59. *)
  nanos : float prop option; [@option]
      (** Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. *)
  seconds : float prop option; [@option]
      (** Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds. *)
}
[@@deriving yojson_of]
(** Represents a time of day. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value = {
  boolean_value : bool prop option; [@option]
      (** A boolean value. *)
  day_of_week_value : string prop option; [@option]
      (** Represents a day of the week. Possible values: [MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY] *)
  float_value : float prop option; [@option]  (** A float value. *)
  integer_value : string prop option; [@option]
      (** An integer value (int64 format) *)
  string_value : string prop option; [@option]
      (** A string value. *)
  timestamp_value : string prop option; [@option]
      (** A timestamp in RFC3339 UTC Zulu format, with nanosecond resolution and up to nine fractional digits. Examples: 2014-10-02T15:01:23Z and 2014-10-02T15:01:23.045123456Z. *)
  date_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value__date_value
    list;
  time_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value__time_value
    list;
}
[@@deriving yojson_of]
(** Replace each input value with a given value.
The 'new_value' block must only contain one argument. For example when replacing the contents of a string-type field, only 'string_value' should be set. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config = {
  new_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value
    list;
}
[@@deriving yojson_of]
(** Replace with a specified value. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_dictionary_config__word_list = {
  words : string prop list;
      (** Words or phrases defining the dictionary. The dictionary must contain at least one phrase and every phrase must contain at least 2 characters that are letters or digits. *)
}
[@@deriving yojson_of]
(** A list of words to select from for random replacement. The [limits](https://cloud.google.com/dlp/limits) page contains details about the size limits of dictionaries. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_dictionary_config = {
  word_list :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_dictionary_config__word_list
    list;
}
[@@deriving yojson_of]
(** Replace with a value randomly drawn (with replacement) from a dictionary. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__time_part_config = {
  part_to_extract : string prop option; [@option]
      (** The part of the time to keep. Possible values: [YEAR, MONTH, DAY_OF_MONTH, DAY_OF_WEEK, WEEK_OF_YEAR, HOUR_OF_DAY] *)
}
[@@deriving yojson_of]
(** For use with Date, Timestamp, and TimeOfDay, extract or preserve a portion of the value. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation = {
  bucketing_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config
    list;
  character_mask_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__character_mask_config
    list;
  crypto_deterministic_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config
    list;
  crypto_hash_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config
    list;
  crypto_replace_ffx_fpe_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config
    list;
  date_shift_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config
    list;
  fixed_size_bucketing_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config
    list;
  redact_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__redact_config
    list;
  replace_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config
    list;
  replace_dictionary_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_dictionary_config
    list;
  time_part_config :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation__time_part_config
    list;
}
[@@deriving yojson_of]
(** Apply the transformation to the entire field.
The 'primitive_transformation' block must only contain one argument, corresponding to the type of transformation.
Only one of 'primitive_transformation' or 'info_type_transformations' must be specified. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations = {
  condition :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__condition
    list;
  fields :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__fields
    list;
  info_type_transformations :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__info_type_transformations
    list;
  primitive_transformation :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations__primitive_transformation
    list;
}
[@@deriving yojson_of]
(** Transform the record by applying various field transformations. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__field = {
  name : string prop option; [@option]
      (** Name describing the field. *)
}
[@@deriving yojson_of]
(** Field within the record this condition is evaluated against. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value__date_value = {
  day : float prop option; [@option]
      (** Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant. *)
  month : float prop option; [@option]
      (** Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. *)
  year : float prop option; [@option]
      (** Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. *)
}
[@@deriving yojson_of]
(** Represents a whole or partial calendar date. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value__time_value = {
  hours : float prop option; [@option]
      (** Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value 24:00:00 for scenarios like business closing time. *)
  minutes : float prop option; [@option]
      (** Minutes of hour of day. Must be from 0 to 59. *)
  nanos : float prop option; [@option]
      (** Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. *)
  seconds : float prop option; [@option]
      (** Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds. *)
}
[@@deriving yojson_of]
(** Represents a time of day. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value = {
  boolean_value : bool prop option; [@option]
      (** A boolean value. *)
  day_of_week_value : string prop option; [@option]
      (** Represents a day of the week. Possible values: [MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY] *)
  float_value : float prop option; [@option]  (** A float value. *)
  integer_value : string prop option; [@option]
      (** An integer value (int64 format) *)
  string_value : string prop option; [@option]
      (** A string value. *)
  timestamp_value : string prop option; [@option]
      (** A timestamp in RFC3339 UTC Zulu format, with nanosecond resolution and up to nine fractional digits. Examples: 2014-10-02T15:01:23Z and 2014-10-02T15:01:23.045123456Z. *)
  date_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value__date_value
    list;
  time_value :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value__time_value
    list;
}
[@@deriving yojson_of]
(** Value to compare against. [Mandatory, except for EXISTS tests.] *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions = {
  operator : string prop;
      (** Operator used to compare the field or infoType to the value. Possible values: [EQUAL_TO, NOT_EQUAL_TO, GREATER_THAN, LESS_THAN, GREATER_THAN_OR_EQUALS, LESS_THAN_OR_EQUALS, EXISTS] *)
  field :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__field
    list;
  value :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value
    list;
}
[@@deriving yojson_of]
(** A collection of conditions. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions = {
  conditions :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions
    list;
}
[@@deriving yojson_of]
(** Conditions to apply to the expression. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__record_suppressions__condition__expressions = {
  logical_operator : string prop option; [@option]
      (** The operator to apply to the result of conditions. Default and currently only supported value is AND. Default value: AND Possible values: [AND] *)
  conditions :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions
    list;
}
[@@deriving yojson_of]
(** An expression, consisting of an operator and conditions. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__record_suppressions__condition = {
  expressions :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__record_suppressions__condition__expressions
    list;
}
[@@deriving yojson_of]
(** A condition that when it evaluates to true will result in the record being evaluated to be suppressed from the transformed content. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__record_suppressions = {
  condition :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__record_suppressions__condition
    list;
}
[@@deriving yojson_of]
(** Configuration defining which records get suppressed entirely. Records that match any suppression rule are omitted from the output. *)

type google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations = {
  field_transformations :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__field_transformations
    list;
  record_suppressions :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations__record_suppressions
    list;
}
[@@deriving yojson_of]
(** Treat the dataset as structured. Transformations can be applied to specific locations within structured datasets, such as transforming a column within a table. *)

type google_data_loss_prevention_deidentify_template__deidentify_config = {
  image_transformations :
    google_data_loss_prevention_deidentify_template__deidentify_config__image_transformations
    list;
  info_type_transformations :
    google_data_loss_prevention_deidentify_template__deidentify_config__info_type_transformations
    list;
  record_transformations :
    google_data_loss_prevention_deidentify_template__deidentify_config__record_transformations
    list;
}
[@@deriving yojson_of]
(** Configuration of the deidentify template *)

type google_data_loss_prevention_deidentify_template__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_data_loss_prevention_deidentify_template__timeouts *)

type google_data_loss_prevention_deidentify_template = {
  description : string prop option; [@option]
      (** A description of the template. *)
  display_name : string prop option; [@option]
      (** User set display name of the template. *)
  id : string prop option; [@option]  (** id *)
  parent : string prop;
      (** The parent of the template in any of the following formats:

* 'projects/{{project}}'
* 'projects/{{project}}/locations/{{location}}'
* 'organizations/{{organization_id}}'
* 'organizations/{{organization_id}}/locations/{{location}}' *)
  template_id : string prop option; [@option]
      (** The template id can contain uppercase and lowercase letters, numbers, and hyphens;
that is, it must match the regular expression: [a-zA-Z\d-_]+. The maximum length is
100 characters. Can be empty to allow the system to generate one. *)
  deidentify_config :
    google_data_loss_prevention_deidentify_template__deidentify_config
    list;
  timeouts :
    google_data_loss_prevention_deidentify_template__timeouts option;
}
[@@deriving yojson_of]
(** google_data_loss_prevention_deidentify_template *)

type t = {
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
  template_id : string prop;
  update_time : string prop;
}

let google_data_loss_prevention_deidentify_template ?description
    ?display_name ?id ?template_id ?timeouts ~parent
    ~deidentify_config __resource_id =
  let __resource_type =
    "google_data_loss_prevention_deidentify_template"
  in
  let __resource =
    ({
       description;
       display_name;
       id;
       parent;
       template_id;
       deidentify_config;
       timeouts;
     }
      : google_data_loss_prevention_deidentify_template)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_data_loss_prevention_deidentify_template
       __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       parent = Prop.computed __resource_type __resource_id "parent";
       template_id =
         Prop.computed __resource_type __resource_id "template_id";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes

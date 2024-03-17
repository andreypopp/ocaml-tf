(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_transcribe_language_model__input_data_config = {
  data_access_role_arn : string;  (** data_access_role_arn *)
  s3_uri : string;  (** s3_uri *)
  tuning_data_s3_uri : string option; [@option]
      (** tuning_data_s3_uri *)
}
[@@deriving yojson_of]
(** aws_transcribe_language_model__input_data_config *)

type aws_transcribe_language_model__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_transcribe_language_model__timeouts *)

type aws_transcribe_language_model = {
  base_model_name : string;  (** base_model_name *)
  language_code : string;  (** language_code *)
  model_name : string;  (** model_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  input_data_config :
    aws_transcribe_language_model__input_data_config list;
  timeouts : aws_transcribe_language_model__timeouts option;
}
[@@deriving yojson_of]
(** aws_transcribe_language_model *)

let aws_transcribe_language_model ?tags ?timeouts ~base_model_name
    ~language_code ~model_name ~input_data_config __resource_id =
  let __resource_type = "aws_transcribe_language_model" in
  let __resource =
    {
      base_model_name;
      language_code;
      model_name;
      tags;
      input_data_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_transcribe_language_model __resource);
  ()

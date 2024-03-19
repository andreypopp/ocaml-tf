(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type input_data_config = {
  data_access_role_arn : string prop;  (** data_access_role_arn *)
  s3_uri : string prop;  (** s3_uri *)
  tuning_data_s3_uri : string prop option; [@option]
      (** tuning_data_s3_uri *)
}
[@@deriving yojson_of]
(** input_data_config *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_transcribe_language_model = {
  base_model_name : string prop;  (** base_model_name *)
  id : string prop option; [@option]  (** id *)
  language_code : string prop;  (** language_code *)
  model_name : string prop;  (** model_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  input_data_config : input_data_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_transcribe_language_model *)

let input_data_config ?tuning_data_s3_uri ~data_access_role_arn
    ~s3_uri () : input_data_config =
  { data_access_role_arn; s3_uri; tuning_data_s3_uri }

let timeouts ?create () : timeouts = { create }

let aws_transcribe_language_model ?id ?tags ?tags_all ?timeouts
    ~base_model_name ~language_code ~model_name ~input_data_config ()
    : aws_transcribe_language_model =
  {
    base_model_name;
    id;
    language_code;
    model_name;
    tags;
    tags_all;
    input_data_config;
    timeouts;
  }

type t = {
  arn : string prop;
  base_model_name : string prop;
  id : string prop;
  language_code : string prop;
  model_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?tags_all ?timeouts
    ~base_model_name ~language_code ~model_name ~input_data_config
    __resource_id =
  let __resource_type = "aws_transcribe_language_model" in
  let __resource =
    aws_transcribe_language_model ?id ?tags ?tags_all ?timeouts
      ~base_model_name ~language_code ~model_name ~input_data_config
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_transcribe_language_model __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       base_model_name =
         Prop.computed __resource_type __resource_id
           "base_model_name";
       id = Prop.computed __resource_type __resource_id "id";
       language_code =
         Prop.computed __resource_type __resource_id "language_code";
       model_name =
         Prop.computed __resource_type __resource_id "model_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes

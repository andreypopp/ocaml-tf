(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_transcribe_vocabulary_filter = {
  id : string prop option; [@option]  (** id *)
  language_code : string prop;  (** language_code *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vocabulary_filter_file_uri : string prop option; [@option]
      (** vocabulary_filter_file_uri *)
  vocabulary_filter_name : string prop;
      (** vocabulary_filter_name *)
  words : string prop list option; [@option]  (** words *)
}
[@@deriving yojson_of]
(** aws_transcribe_vocabulary_filter *)

let aws_transcribe_vocabulary_filter ?id ?tags ?tags_all
    ?vocabulary_filter_file_uri ?words ~language_code
    ~vocabulary_filter_name () : aws_transcribe_vocabulary_filter =
  {
    id;
    language_code;
    tags;
    tags_all;
    vocabulary_filter_file_uri;
    vocabulary_filter_name;
    words;
  }

type t = {
  arn : string prop;
  download_uri : string prop;
  id : string prop;
  language_code : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vocabulary_filter_file_uri : string prop;
  vocabulary_filter_name : string prop;
  words : string list prop;
}

let register ?tf_module ?id ?tags ?tags_all
    ?vocabulary_filter_file_uri ?words ~language_code
    ~vocabulary_filter_name __resource_id =
  let __resource_type = "aws_transcribe_vocabulary_filter" in
  let __resource =
    aws_transcribe_vocabulary_filter ?id ?tags ?tags_all
      ?vocabulary_filter_file_uri ?words ~language_code
      ~vocabulary_filter_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_transcribe_vocabulary_filter __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       download_uri =
         Prop.computed __resource_type __resource_id "download_uri";
       id = Prop.computed __resource_type __resource_id "id";
       language_code =
         Prop.computed __resource_type __resource_id "language_code";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       vocabulary_filter_file_uri =
         Prop.computed __resource_type __resource_id
           "vocabulary_filter_file_uri";
       vocabulary_filter_name =
         Prop.computed __resource_type __resource_id
           "vocabulary_filter_name";
       words = Prop.computed __resource_type __resource_id "words";
     }
      : t)
  in
  __resource_attributes

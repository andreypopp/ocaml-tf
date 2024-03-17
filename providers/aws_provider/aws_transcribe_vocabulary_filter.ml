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
    ~vocabulary_filter_name __resource_id =
  let __resource_type = "aws_transcribe_vocabulary_filter" in
  let __resource =
    {
      id;
      language_code;
      tags;
      tags_all;
      vocabulary_filter_file_uri;
      vocabulary_filter_name;
      words;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_transcribe_vocabulary_filter __resource);
  ()

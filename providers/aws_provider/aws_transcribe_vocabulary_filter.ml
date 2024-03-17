(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_transcribe_vocabulary_filter = {
  language_code : string;  (** language_code *)
  tags : (string * string) list option; [@option]  (** tags *)
  vocabulary_filter_file_uri : string option; [@option]
      (** vocabulary_filter_file_uri *)
  vocabulary_filter_name : string;  (** vocabulary_filter_name *)
  words : string list option; [@option]  (** words *)
}
[@@deriving yojson_of]
(** aws_transcribe_vocabulary_filter *)

let aws_transcribe_vocabulary_filter ?tags
    ?vocabulary_filter_file_uri ?words ~language_code
    ~vocabulary_filter_name __resource_id =
  let __resource_type = "aws_transcribe_vocabulary_filter" in
  let __resource =
    {
      language_code;
      tags;
      vocabulary_filter_file_uri;
      vocabulary_filter_name;
      words;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_transcribe_vocabulary_filter __resource);
  ()

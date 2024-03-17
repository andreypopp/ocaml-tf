(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_transcribe_vocabulary__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_transcribe_vocabulary__timeouts *)

type aws_transcribe_vocabulary = {
  id : string prop option; [@option]  (** id *)
  language_code : string prop;  (** language_code *)
  phrases : string prop list option; [@option]  (** phrases *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vocabulary_file_uri : string prop option; [@option]
      (** vocabulary_file_uri *)
  vocabulary_name : string prop;  (** vocabulary_name *)
  timeouts : aws_transcribe_vocabulary__timeouts option;
}
[@@deriving yojson_of]
(** aws_transcribe_vocabulary *)

let aws_transcribe_vocabulary ?id ?phrases ?tags ?tags_all
    ?vocabulary_file_uri ?timeouts ~language_code ~vocabulary_name
    __resource_id =
  let __resource_type = "aws_transcribe_vocabulary" in
  let __resource =
    {
      id;
      language_code;
      phrases;
      tags;
      tags_all;
      vocabulary_file_uri;
      vocabulary_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_transcribe_vocabulary __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?tags ?tags_all ?vocabulary_filter_file_uri ?words
    ~language_code ~vocabulary_filter_name __id =
  let __type = "aws_transcribe_vocabulary_filter" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       download_uri = Prop.computed __type __id "download_uri";
       id = Prop.computed __type __id "id";
       language_code = Prop.computed __type __id "language_code";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vocabulary_filter_file_uri =
         Prop.computed __type __id "vocabulary_filter_file_uri";
       vocabulary_filter_name =
         Prop.computed __type __id "vocabulary_filter_name";
       words = Prop.computed __type __id "words";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_transcribe_vocabulary_filter
        (aws_transcribe_vocabulary_filter ?id ?tags ?tags_all
           ?vocabulary_filter_file_uri ?words ~language_code
           ~vocabulary_filter_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all
    ?vocabulary_filter_file_uri ?words ~language_code
    ~vocabulary_filter_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?vocabulary_filter_file_uri ?words
      ~language_code ~vocabulary_filter_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

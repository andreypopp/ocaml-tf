(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_transcribe_vocabulary *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_transcribe_vocabulary ?id ?phrases ?tags ?tags_all
    ?vocabulary_file_uri ?timeouts ~language_code ~vocabulary_name ()
    : aws_transcribe_vocabulary =
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

type t = {
  arn : string prop;
  download_uri : string prop;
  id : string prop;
  language_code : string prop;
  phrases : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vocabulary_file_uri : string prop;
  vocabulary_name : string prop;
}

let make ?id ?phrases ?tags ?tags_all ?vocabulary_file_uri ?timeouts
    ~language_code ~vocabulary_name __id =
  let __type = "aws_transcribe_vocabulary" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       download_uri = Prop.computed __type __id "download_uri";
       id = Prop.computed __type __id "id";
       language_code = Prop.computed __type __id "language_code";
       phrases = Prop.computed __type __id "phrases";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vocabulary_file_uri =
         Prop.computed __type __id "vocabulary_file_uri";
       vocabulary_name = Prop.computed __type __id "vocabulary_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_transcribe_vocabulary
        (aws_transcribe_vocabulary ?id ?phrases ?tags ?tags_all
           ?vocabulary_file_uri ?timeouts ~language_code
           ~vocabulary_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?phrases ?tags ?tags_all
    ?vocabulary_file_uri ?timeouts ~language_code ~vocabulary_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?phrases ?tags ?tags_all ?vocabulary_file_uri ?timeouts
      ~language_code ~vocabulary_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

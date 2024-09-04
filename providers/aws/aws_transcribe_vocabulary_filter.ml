(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_transcribe_vocabulary_filter = {
  id : string prop option; [@option]
  language_code : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  vocabulary_filter_file_uri : string prop option; [@option]
  vocabulary_filter_name : string prop;
  words : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_transcribe_vocabulary_filter) -> ()

let yojson_of_aws_transcribe_vocabulary_filter =
  (function
   | {
       id = v_id;
       language_code = v_language_code;
       tags = v_tags;
       tags_all = v_tags_all;
       vocabulary_filter_file_uri = v_vocabulary_filter_file_uri;
       vocabulary_filter_name = v_vocabulary_filter_name;
       words = v_words;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_words with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "words", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_vocabulary_filter_name
         in
         ("vocabulary_filter_name", arg) :: bnds
       in
       let bnds =
         match v_vocabulary_filter_file_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vocabulary_filter_file_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_language_code in
         ("language_code", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_transcribe_vocabulary_filter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_transcribe_vocabulary_filter

[@@@deriving.end]

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
  tf_name : string;
  arn : string prop;
  download_uri : string prop;
  id : string prop;
  language_code : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vocabulary_filter_file_uri : string prop;
  vocabulary_filter_name : string prop;
  words : string list prop;
}

let make ?id ?tags ?tags_all ?vocabulary_filter_file_uri ?words
    ~language_code ~vocabulary_filter_name __id =
  let __type = "aws_transcribe_vocabulary_filter" in
  let __attrs =
    ({
       tf_name = __id;
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

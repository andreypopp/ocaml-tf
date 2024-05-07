(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_transcribe_vocabulary = {
  id : string prop option; [@option]
  language_code : string prop;
  phrases : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  vocabulary_file_uri : string prop option; [@option]
  vocabulary_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_transcribe_vocabulary) -> ()

let yojson_of_aws_transcribe_vocabulary =
  (function
   | {
       id = v_id;
       language_code = v_language_code;
       phrases = v_phrases;
       tags = v_tags;
       tags_all = v_tags_all;
       vocabulary_file_uri = v_vocabulary_file_uri;
       vocabulary_name = v_vocabulary_name;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_vocabulary_name
         in
         ("vocabulary_name", arg) :: bnds
       in
       let bnds =
         match v_vocabulary_file_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vocabulary_file_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
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
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_phrases with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "phrases", arg in
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
    : aws_transcribe_vocabulary -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_transcribe_vocabulary

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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

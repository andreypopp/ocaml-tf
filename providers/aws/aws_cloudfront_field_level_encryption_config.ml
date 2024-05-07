(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type content_type_profile_config__content_type_profiles__items = {
  content_type : string prop;
  format : string prop;
  profile_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : content_type_profile_config__content_type_profiles__items) ->
  ()

let yojson_of_content_type_profile_config__content_type_profiles__items
    =
  (function
   | {
       content_type = v_content_type;
       format = v_format;
       profile_id = v_profile_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_profile_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "profile_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_format in
         ("format", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content_type in
         ("content_type", arg) :: bnds
       in
       `Assoc bnds
    : content_type_profile_config__content_type_profiles__items ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_content_type_profile_config__content_type_profiles__items

[@@@deriving.end]

type content_type_profile_config__content_type_profiles = {
  items :
    content_type_profile_config__content_type_profiles__items list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : content_type_profile_config__content_type_profiles) -> ()

let yojson_of_content_type_profile_config__content_type_profiles =
  (function
   | { items = v_items } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_content_type_profile_config__content_type_profiles__items
             v_items
         in
         ("items", arg) :: bnds
       in
       `Assoc bnds
    : content_type_profile_config__content_type_profiles ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_content_type_profile_config__content_type_profiles

[@@@deriving.end]

type content_type_profile_config = {
  forward_when_content_type_is_unknown : bool prop;
  content_type_profiles :
    content_type_profile_config__content_type_profiles list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : content_type_profile_config) -> ()

let yojson_of_content_type_profile_config =
  (function
   | {
       forward_when_content_type_is_unknown =
         v_forward_when_content_type_is_unknown;
       content_type_profiles = v_content_type_profiles;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_content_type_profile_config__content_type_profiles
             v_content_type_profiles
         in
         ("content_type_profiles", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_forward_when_content_type_is_unknown
         in
         ("forward_when_content_type_is_unknown", arg) :: bnds
       in
       `Assoc bnds
    : content_type_profile_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_content_type_profile_config

[@@@deriving.end]

type query_arg_profile_config__query_arg_profiles__items = {
  profile_id : string prop;
  query_arg : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : query_arg_profile_config__query_arg_profiles__items) -> ()

let yojson_of_query_arg_profile_config__query_arg_profiles__items =
  (function
   | { profile_id = v_profile_id; query_arg = v_query_arg } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_query_arg in
         ("query_arg", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_profile_id in
         ("profile_id", arg) :: bnds
       in
       `Assoc bnds
    : query_arg_profile_config__query_arg_profiles__items ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_query_arg_profile_config__query_arg_profiles__items

[@@@deriving.end]

type query_arg_profile_config__query_arg_profiles = {
  items : query_arg_profile_config__query_arg_profiles__items list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : query_arg_profile_config__query_arg_profiles) -> ()

let yojson_of_query_arg_profile_config__query_arg_profiles =
  (function
   | { items = v_items } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_query_arg_profile_config__query_arg_profiles__items
             v_items
         in
         ("items", arg) :: bnds
       in
       `Assoc bnds
    : query_arg_profile_config__query_arg_profiles ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_query_arg_profile_config__query_arg_profiles

[@@@deriving.end]

type query_arg_profile_config = {
  forward_when_query_arg_profile_is_unknown : bool prop;
  query_arg_profiles :
    query_arg_profile_config__query_arg_profiles list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : query_arg_profile_config) -> ()

let yojson_of_query_arg_profile_config =
  (function
   | {
       forward_when_query_arg_profile_is_unknown =
         v_forward_when_query_arg_profile_is_unknown;
       query_arg_profiles = v_query_arg_profiles;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_query_arg_profile_config__query_arg_profiles
             v_query_arg_profiles
         in
         ("query_arg_profiles", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_forward_when_query_arg_profile_is_unknown
         in
         ("forward_when_query_arg_profile_is_unknown", arg) :: bnds
       in
       `Assoc bnds
    : query_arg_profile_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_query_arg_profile_config

[@@@deriving.end]

type aws_cloudfront_field_level_encryption_config = {
  comment : string prop option; [@option]
  id : string prop option; [@option]
  content_type_profile_config : content_type_profile_config list;
  query_arg_profile_config : query_arg_profile_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudfront_field_level_encryption_config) -> ()

let yojson_of_aws_cloudfront_field_level_encryption_config =
  (function
   | {
       comment = v_comment;
       id = v_id;
       content_type_profile_config = v_content_type_profile_config;
       query_arg_profile_config = v_query_arg_profile_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_query_arg_profile_config
             v_query_arg_profile_config
         in
         ("query_arg_profile_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_content_type_profile_config
             v_content_type_profile_config
         in
         ("content_type_profile_config", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_comment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comment", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cloudfront_field_level_encryption_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudfront_field_level_encryption_config

[@@@deriving.end]

let content_type_profile_config__content_type_profiles__items
    ?profile_id ~content_type ~format () :
    content_type_profile_config__content_type_profiles__items =
  { content_type; format; profile_id }

let content_type_profile_config__content_type_profiles ~items () :
    content_type_profile_config__content_type_profiles =
  { items }

let content_type_profile_config ~forward_when_content_type_is_unknown
    ~content_type_profiles () : content_type_profile_config =
  { forward_when_content_type_is_unknown; content_type_profiles }

let query_arg_profile_config__query_arg_profiles__items ~profile_id
    ~query_arg () :
    query_arg_profile_config__query_arg_profiles__items =
  { profile_id; query_arg }

let query_arg_profile_config__query_arg_profiles ~items () :
    query_arg_profile_config__query_arg_profiles =
  { items }

let query_arg_profile_config ?(query_arg_profiles = [])
    ~forward_when_query_arg_profile_is_unknown () :
    query_arg_profile_config =
  { forward_when_query_arg_profile_is_unknown; query_arg_profiles }

let aws_cloudfront_field_level_encryption_config ?comment ?id
    ~content_type_profile_config ~query_arg_profile_config () :
    aws_cloudfront_field_level_encryption_config =
  {
    comment;
    id;
    content_type_profile_config;
    query_arg_profile_config;
  }

type t = {
  tf_name : string;
  caller_reference : string prop;
  comment : string prop;
  etag : string prop;
  id : string prop;
}

let make ?comment ?id ~content_type_profile_config
    ~query_arg_profile_config __id =
  let __type = "aws_cloudfront_field_level_encryption_config" in
  let __attrs =
    ({
       tf_name = __id;
       caller_reference =
         Prop.computed __type __id "caller_reference";
       comment = Prop.computed __type __id "comment";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudfront_field_level_encryption_config
        (aws_cloudfront_field_level_encryption_config ?comment ?id
           ~content_type_profile_config ~query_arg_profile_config ());
    attrs = __attrs;
  }

let register ?tf_module ?comment ?id ~content_type_profile_config
    ~query_arg_profile_config __id =
  let (r : _ Tf_core.resource) =
    make ?comment ?id ~content_type_profile_config
      ~query_arg_profile_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

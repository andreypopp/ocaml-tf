(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type content_type_profile_config__content_type_profiles__items = {
  content_type : string prop;  (** content_type *)
  format : string prop;  (** format *)
  profile_id : string prop option; [@option]  (** profile_id *)
}
[@@deriving yojson_of]
(** content_type_profile_config__content_type_profiles__items *)

type content_type_profile_config__content_type_profiles = {
  items :
    content_type_profile_config__content_type_profiles__items list;
}
[@@deriving yojson_of]
(** content_type_profile_config__content_type_profiles *)

type content_type_profile_config = {
  forward_when_content_type_is_unknown : bool prop;
      (** forward_when_content_type_is_unknown *)
  content_type_profiles :
    content_type_profile_config__content_type_profiles list;
}
[@@deriving yojson_of]
(** content_type_profile_config *)

type query_arg_profile_config__query_arg_profiles__items = {
  profile_id : string prop;  (** profile_id *)
  query_arg : string prop;  (** query_arg *)
}
[@@deriving yojson_of]
(** query_arg_profile_config__query_arg_profiles__items *)

type query_arg_profile_config__query_arg_profiles = {
  items : query_arg_profile_config__query_arg_profiles__items list;
}
[@@deriving yojson_of]
(** query_arg_profile_config__query_arg_profiles *)

type query_arg_profile_config = {
  forward_when_query_arg_profile_is_unknown : bool prop;
      (** forward_when_query_arg_profile_is_unknown *)
  query_arg_profiles :
    query_arg_profile_config__query_arg_profiles list;
}
[@@deriving yojson_of]
(** query_arg_profile_config *)

type aws_cloudfront_field_level_encryption_config = {
  comment : string prop option; [@option]  (** comment *)
  id : string prop option; [@option]  (** id *)
  content_type_profile_config : content_type_profile_config list;
  query_arg_profile_config : query_arg_profile_config list;
}
[@@deriving yojson_of]
(** aws_cloudfront_field_level_encryption_config *)

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

let query_arg_profile_config
    ~forward_when_query_arg_profile_is_unknown ~query_arg_profiles ()
    : query_arg_profile_config =
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

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_cloudfront_key_value_store = {
  comment : string prop option; [@option]  (** comment *)
  name : string prop;  (** name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_cloudfront_key_value_store *)

let timeouts ?create () : timeouts = { create }

let aws_cloudfront_key_value_store ?comment ?timeouts ~name () :
    aws_cloudfront_key_value_store =
  { comment; name; timeouts }

type t = {
  arn : string prop;
  comment : string prop;
  etag : string prop;
  id : string prop;
  last_modified_time : string prop;
  name : string prop;
}

let make ?comment ?timeouts ~name __id =
  let __type = "aws_cloudfront_key_value_store" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       comment = Prop.computed __type __id "comment";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       last_modified_time =
         Prop.computed __type __id "last_modified_time";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudfront_key_value_store
        (aws_cloudfront_key_value_store ?comment ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?comment ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?comment ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

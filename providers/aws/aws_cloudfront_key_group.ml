(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudfront_key_group = {
  comment : string prop option; [@option]  (** comment *)
  id : string prop option; [@option]  (** id *)
  items : string prop list;  (** items *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_cloudfront_key_group *)

let aws_cloudfront_key_group ?comment ?id ~items ~name () :
    aws_cloudfront_key_group =
  { comment; id; items; name }

type t = {
  comment : string prop;
  etag : string prop;
  id : string prop;
  items : string list prop;
  name : string prop;
}

let make ?comment ?id ~items ~name __id =
  let __type = "aws_cloudfront_key_group" in
  let __attrs =
    ({
       comment = Prop.computed __type __id "comment";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       items = Prop.computed __type __id "items";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudfront_key_group
        (aws_cloudfront_key_group ?comment ?id ~items ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?comment ?id ~items ~name __id =
  let (r : _ Tf_core.resource) =
    make ?comment ?id ~items ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

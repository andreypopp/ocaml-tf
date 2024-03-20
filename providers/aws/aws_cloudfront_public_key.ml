(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudfront_public_key = {
  comment : string prop option; [@option]  (** comment *)
  encoded_key : string prop;  (** encoded_key *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
}
[@@deriving yojson_of]
(** aws_cloudfront_public_key *)

let aws_cloudfront_public_key ?comment ?id ?name ?name_prefix
    ~encoded_key () : aws_cloudfront_public_key =
  { comment; encoded_key; id; name; name_prefix }

type t = {
  caller_reference : string prop;
  comment : string prop;
  encoded_key : string prop;
  etag : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
}

let make ?comment ?id ?name ?name_prefix ~encoded_key __id =
  let __type = "aws_cloudfront_public_key" in
  let __attrs =
    ({
       caller_reference =
         Prop.computed __type __id "caller_reference";
       comment = Prop.computed __type __id "comment";
       encoded_key = Prop.computed __type __id "encoded_key";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudfront_public_key
        (aws_cloudfront_public_key ?comment ?id ?name ?name_prefix
           ~encoded_key ());
    attrs = __attrs;
  }

let register ?tf_module ?comment ?id ?name ?name_prefix ~encoded_key
    __id =
  let (r : _ Tf_core.resource) =
    make ?comment ?id ?name ?name_prefix ~encoded_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

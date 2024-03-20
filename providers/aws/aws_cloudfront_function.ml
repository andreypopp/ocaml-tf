(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudfront_function = {
  code : string prop;  (** code *)
  comment : string prop option; [@option]  (** comment *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  publish : bool prop option; [@option]  (** publish *)
  runtime : string prop;  (** runtime *)
}
[@@deriving yojson_of]
(** aws_cloudfront_function *)

let aws_cloudfront_function ?comment ?id ?publish ~code ~name
    ~runtime () : aws_cloudfront_function =
  { code; comment; id; name; publish; runtime }

type t = {
  arn : string prop;
  code : string prop;
  comment : string prop;
  etag : string prop;
  id : string prop;
  live_stage_etag : string prop;
  name : string prop;
  publish : bool prop;
  runtime : string prop;
  status : string prop;
}

let make ?comment ?id ?publish ~code ~name ~runtime __id =
  let __type = "aws_cloudfront_function" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       code = Prop.computed __type __id "code";
       comment = Prop.computed __type __id "comment";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       live_stage_etag = Prop.computed __type __id "live_stage_etag";
       name = Prop.computed __type __id "name";
       publish = Prop.computed __type __id "publish";
       runtime = Prop.computed __type __id "runtime";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudfront_function
        (aws_cloudfront_function ?comment ?id ?publish ~code ~name
           ~runtime ());
    attrs = __attrs;
  }

let register ?tf_module ?comment ?id ?publish ~code ~name ~runtime
    __id =
  let (r : _ Tf_core.resource) =
    make ?comment ?id ?publish ~code ~name ~runtime __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

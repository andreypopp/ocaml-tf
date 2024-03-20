(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cors_rule = {
  allowed_headers : string prop list option; [@option]
      (** allowed_headers *)
  allowed_methods : string prop list;  (** allowed_methods *)
  allowed_origins : string prop list;  (** allowed_origins *)
  expose_headers : string prop list option; [@option]
      (** expose_headers *)
  id : string prop option; [@option]  (** id *)
  max_age_seconds : float prop option; [@option]
      (** max_age_seconds *)
}
[@@deriving yojson_of]
(** cors_rule *)

type aws_s3_bucket_cors_configuration = {
  bucket : string prop;  (** bucket *)
  expected_bucket_owner : string prop option; [@option]
      (** expected_bucket_owner *)
  id : string prop option; [@option]  (** id *)
  cors_rule : cors_rule list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_cors_configuration *)

let cors_rule ?allowed_headers ?expose_headers ?id ?max_age_seconds
    ~allowed_methods ~allowed_origins () : cors_rule =
  {
    allowed_headers;
    allowed_methods;
    allowed_origins;
    expose_headers;
    id;
    max_age_seconds;
  }

let aws_s3_bucket_cors_configuration ?expected_bucket_owner ?id
    ~bucket ~cors_rule () : aws_s3_bucket_cors_configuration =
  { bucket; expected_bucket_owner; id; cors_rule }

type t = {
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
}

let make ?expected_bucket_owner ?id ~bucket ~cors_rule __id =
  let __type = "aws_s3_bucket_cors_configuration" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       expected_bucket_owner =
         Prop.computed __type __id "expected_bucket_owner";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_bucket_cors_configuration
        (aws_s3_bucket_cors_configuration ?expected_bucket_owner ?id
           ~bucket ~cors_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?expected_bucket_owner ?id ~bucket ~cors_rule
    __id =
  let (r : _ Tf_core.resource) =
    make ?expected_bucket_owner ?id ~bucket ~cors_rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

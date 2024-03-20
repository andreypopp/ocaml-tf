(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  access_point : string prop option; [@option]  (** access_point *)
  prefix : string prop option; [@option]  (** prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** filter *)

type aws_s3_bucket_metric = {
  bucket : string prop;  (** bucket *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  filter : filter list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_metric *)

let filter ?access_point ?prefix ?tags () : filter =
  { access_point; prefix; tags }

let aws_s3_bucket_metric ?id ~bucket ~name ~filter () :
    aws_s3_bucket_metric =
  { bucket; id; name; filter }

type t = {
  bucket : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ~bucket ~name ~filter __id =
  let __type = "aws_s3_bucket_metric" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_bucket_metric
        (aws_s3_bucket_metric ?id ~bucket ~name ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~bucket ~name ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?id ~bucket ~name ~filter __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

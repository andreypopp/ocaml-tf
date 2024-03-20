(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_s3control_bucket = {
  bucket : string prop;  (** bucket *)
  id : string prop option; [@option]  (** id *)
  outpost_id : string prop;  (** outpost_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_s3control_bucket *)

let aws_s3control_bucket ?id ?tags ?tags_all ~bucket ~outpost_id () :
    aws_s3control_bucket =
  { bucket; id; outpost_id; tags; tags_all }

type t = {
  arn : string prop;
  bucket : string prop;
  creation_date : string prop;
  id : string prop;
  outpost_id : string prop;
  public_access_block_enabled : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~bucket ~outpost_id __id =
  let __type = "aws_s3control_bucket" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       bucket = Prop.computed __type __id "bucket";
       creation_date = Prop.computed __type __id "creation_date";
       id = Prop.computed __type __id "id";
       outpost_id = Prop.computed __type __id "outpost_id";
       public_access_block_enabled =
         Prop.computed __type __id "public_access_block_enabled";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3control_bucket
        (aws_s3control_bucket ?id ?tags ?tags_all ~bucket ~outpost_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~bucket ~outpost_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~bucket ~outpost_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_s3control_bucket = {
  bucket : string prop;
  id : string prop option; [@option]
  outpost_id : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3control_bucket) -> ()

let yojson_of_aws_s3control_bucket =
  (function
   | {
       bucket = v_bucket;
       id = v_id;
       outpost_id = v_outpost_id;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_outpost_id in
         ("outpost_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : aws_s3control_bucket -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3control_bucket

[@@@deriving.end]

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

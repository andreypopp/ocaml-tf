(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ecr_image = {
  id : string prop option; [@option]
  image_digest : string prop option; [@option]
  image_tag : string prop option; [@option]
  most_recent : bool prop option; [@option]
  registry_id : string prop option; [@option]
  repository_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ecr_image) -> ()

let yojson_of_aws_ecr_image =
  (function
   | {
       id = v_id;
       image_digest = v_image_digest;
       image_tag = v_image_tag;
       most_recent = v_most_recent;
       registry_id = v_registry_id;
       repository_name = v_repository_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repository_name
         in
         ("repository_name", arg) :: bnds
       in
       let bnds =
         match v_registry_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "registry_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_most_recent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "most_recent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_tag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_digest with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_digest", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ecr_image -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ecr_image

[@@@deriving.end]

let aws_ecr_image ?id ?image_digest ?image_tag ?most_recent
    ?registry_id ~repository_name () : aws_ecr_image =
  {
    id;
    image_digest;
    image_tag;
    most_recent;
    registry_id;
    repository_name;
  }

type t = {
  tf_name : string;
  id : string prop;
  image_digest : string prop;
  image_pushed_at : float prop;
  image_size_in_bytes : float prop;
  image_tag : string prop;
  image_tags : string list prop;
  image_uri : string prop;
  most_recent : bool prop;
  registry_id : string prop;
  repository_name : string prop;
}

let make ?id ?image_digest ?image_tag ?most_recent ?registry_id
    ~repository_name __id =
  let __type = "aws_ecr_image" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       image_digest = Prop.computed __type __id "image_digest";
       image_pushed_at = Prop.computed __type __id "image_pushed_at";
       image_size_in_bytes =
         Prop.computed __type __id "image_size_in_bytes";
       image_tag = Prop.computed __type __id "image_tag";
       image_tags = Prop.computed __type __id "image_tags";
       image_uri = Prop.computed __type __id "image_uri";
       most_recent = Prop.computed __type __id "most_recent";
       registry_id = Prop.computed __type __id "registry_id";
       repository_name = Prop.computed __type __id "repository_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ecr_image
        (aws_ecr_image ?id ?image_digest ?image_tag ?most_recent
           ?registry_id ~repository_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?image_digest ?image_tag ?most_recent
    ?registry_id ~repository_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?image_digest ?image_tag ?most_recent ?registry_id
      ~repository_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

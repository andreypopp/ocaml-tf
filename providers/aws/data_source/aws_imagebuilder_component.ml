(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_imagebuilder_component = {
  arn : string prop;
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_imagebuilder_component) -> ()

let yojson_of_aws_imagebuilder_component =
  (function
   | { arn = v_arn; id = v_id; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_imagebuilder_component -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_imagebuilder_component

[@@@deriving.end]

let aws_imagebuilder_component ?id ?tags ~arn () :
    aws_imagebuilder_component =
  { arn; id; tags }

type t = {
  tf_name : string;
  arn : string prop;
  change_description : string prop;
  data : string prop;
  date_created : string prop;
  description : string prop;
  encrypted : bool prop;
  id : string prop;
  kms_key_id : string prop;
  name : string prop;
  owner : string prop;
  platform : string prop;
  supported_os_versions : string list prop;
  tags : string Tf_core.assoc prop;
  type_ : string prop;
  version : string prop;
}

let make ?id ?tags ~arn __id =
  let __type = "aws_imagebuilder_component" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       change_description =
         Prop.computed __type __id "change_description";
       data = Prop.computed __type __id "data";
       date_created = Prop.computed __type __id "date_created";
       description = Prop.computed __type __id "description";
       encrypted = Prop.computed __type __id "encrypted";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       name = Prop.computed __type __id "name";
       owner = Prop.computed __type __id "owner";
       platform = Prop.computed __type __id "platform";
       supported_os_versions =
         Prop.computed __type __id "supported_os_versions";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_imagebuilder_component
        (aws_imagebuilder_component ?id ?tags ~arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~arn __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~arn __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

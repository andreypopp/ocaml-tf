(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_imagebuilder_component = {
  change_description : string prop option; [@option]
  data : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  name : string prop;
  platform : string prop;
  skip_destroy : bool prop option; [@option]
  supported_os_versions : string prop list option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  uri : string prop option; [@option]
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_imagebuilder_component) -> ()

let yojson_of_aws_imagebuilder_component =
  (function
   | {
       change_description = v_change_description;
       data = v_data;
       description = v_description;
       id = v_id;
       kms_key_id = v_kms_key_id;
       name = v_name;
       platform = v_platform;
       skip_destroy = v_skip_destroy;
       supported_os_versions = v_supported_os_versions;
       tags = v_tags;
       tags_all = v_tags_all;
       uri = v_uri;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         match v_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_supported_os_versions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "supported_os_versions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_skip_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_platform in
         ("platform", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data", arg in
             bnd :: bnds
       in
       let bnds =
         match v_change_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "change_description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_imagebuilder_component -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_imagebuilder_component

[@@@deriving.end]

let aws_imagebuilder_component ?change_description ?data ?description
    ?id ?kms_key_id ?skip_destroy ?supported_os_versions ?tags
    ?tags_all ?uri ~name ~platform ~version () :
    aws_imagebuilder_component =
  {
    change_description;
    data;
    description;
    id;
    kms_key_id;
    name;
    platform;
    skip_destroy;
    supported_os_versions;
    tags;
    tags_all;
    uri;
    version;
  }

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
  skip_destroy : bool prop;
  supported_os_versions : string list prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  type_ : string prop;
  uri : string prop;
  version : string prop;
}

let make ?change_description ?data ?description ?id ?kms_key_id
    ?skip_destroy ?supported_os_versions ?tags ?tags_all ?uri ~name
    ~platform ~version __id =
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
       skip_destroy = Prop.computed __type __id "skip_destroy";
       supported_os_versions =
         Prop.computed __type __id "supported_os_versions";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
       uri = Prop.computed __type __id "uri";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_imagebuilder_component
        (aws_imagebuilder_component ?change_description ?data
           ?description ?id ?kms_key_id ?skip_destroy
           ?supported_os_versions ?tags ?tags_all ?uri ~name
           ~platform ~version ());
    attrs = __attrs;
  }

let register ?tf_module ?change_description ?data ?description ?id
    ?kms_key_id ?skip_destroy ?supported_os_versions ?tags ?tags_all
    ?uri ~name ~platform ~version __id =
  let (r : _ Tf_core.resource) =
    make ?change_description ?data ?description ?id ?kms_key_id
      ?skip_destroy ?supported_os_versions ?tags ?tags_all ?uri ~name
      ~platform ~version __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

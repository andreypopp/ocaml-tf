(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudwatch_log_group = {
  id : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  log_group_class : string prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  retention_in_days : float prop option; [@option]
  skip_destroy : bool prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudwatch_log_group) -> ()

let yojson_of_aws_cloudwatch_log_group =
  (function
   | {
       id = v_id;
       kms_key_id = v_kms_key_id;
       log_group_class = v_log_group_class;
       name = v_name;
       name_prefix = v_name_prefix;
       retention_in_days = v_retention_in_days;
       skip_destroy = v_skip_destroy;
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
         match v_skip_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retention_in_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retention_in_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_group_class with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_group_class", arg in
             bnd :: bnds
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
       `Assoc bnds
    : aws_cloudwatch_log_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudwatch_log_group

[@@@deriving.end]

let aws_cloudwatch_log_group ?id ?kms_key_id ?log_group_class ?name
    ?name_prefix ?retention_in_days ?skip_destroy ?tags ?tags_all ()
    : aws_cloudwatch_log_group =
  {
    id;
    kms_key_id;
    log_group_class;
    name;
    name_prefix;
    retention_in_days;
    skip_destroy;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  kms_key_id : string prop;
  log_group_class : string prop;
  name : string prop;
  name_prefix : string prop;
  retention_in_days : float prop;
  skip_destroy : bool prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?id ?kms_key_id ?log_group_class ?name ?name_prefix
    ?retention_in_days ?skip_destroy ?tags ?tags_all __id =
  let __type = "aws_cloudwatch_log_group" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       log_group_class = Prop.computed __type __id "log_group_class";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       retention_in_days =
         Prop.computed __type __id "retention_in_days";
       skip_destroy = Prop.computed __type __id "skip_destroy";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_log_group
        (aws_cloudwatch_log_group ?id ?kms_key_id ?log_group_class
           ?name ?name_prefix ?retention_in_days ?skip_destroy ?tags
           ?tags_all ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?kms_key_id ?log_group_class ?name
    ?name_prefix ?retention_in_days ?skip_destroy ?tags ?tags_all
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?kms_key_id ?log_group_class ?name ?name_prefix
      ?retention_in_days ?skip_destroy ?tags ?tags_all __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

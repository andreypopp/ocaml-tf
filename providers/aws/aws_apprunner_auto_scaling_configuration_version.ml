(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_apprunner_auto_scaling_configuration_version = {
  auto_scaling_configuration_name : string prop;
  id : string prop option; [@option]
  max_concurrency : float prop option; [@option]
  max_size : float prop option; [@option]
  min_size : float prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_apprunner_auto_scaling_configuration_version) -> ()

let yojson_of_aws_apprunner_auto_scaling_configuration_version =
  (function
   | {
       auto_scaling_configuration_name =
         v_auto_scaling_configuration_name;
       id = v_id;
       max_concurrency = v_max_concurrency;
       max_size = v_max_size;
       min_size = v_min_size;
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
         match v_min_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_concurrency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_concurrency", arg in
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
         let arg =
           yojson_of_prop yojson_of_string
             v_auto_scaling_configuration_name
         in
         ("auto_scaling_configuration_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_apprunner_auto_scaling_configuration_version ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_apprunner_auto_scaling_configuration_version

[@@@deriving.end]

let aws_apprunner_auto_scaling_configuration_version ?id
    ?max_concurrency ?max_size ?min_size ?tags ?tags_all
    ~auto_scaling_configuration_name () :
    aws_apprunner_auto_scaling_configuration_version =
  {
    auto_scaling_configuration_name;
    id;
    max_concurrency;
    max_size;
    min_size;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  arn : string prop;
  auto_scaling_configuration_name : string prop;
  auto_scaling_configuration_revision : float prop;
  has_associated_service : bool prop;
  id : string prop;
  is_default : bool prop;
  latest : bool prop;
  max_concurrency : float prop;
  max_size : float prop;
  min_size : float prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?id ?max_concurrency ?max_size ?min_size ?tags ?tags_all
    ~auto_scaling_configuration_name __id =
  let __type = "aws_apprunner_auto_scaling_configuration_version" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       auto_scaling_configuration_name =
         Prop.computed __type __id "auto_scaling_configuration_name";
       auto_scaling_configuration_revision =
         Prop.computed __type __id
           "auto_scaling_configuration_revision";
       has_associated_service =
         Prop.computed __type __id "has_associated_service";
       id = Prop.computed __type __id "id";
       is_default = Prop.computed __type __id "is_default";
       latest = Prop.computed __type __id "latest";
       max_concurrency = Prop.computed __type __id "max_concurrency";
       max_size = Prop.computed __type __id "max_size";
       min_size = Prop.computed __type __id "min_size";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apprunner_auto_scaling_configuration_version
        (aws_apprunner_auto_scaling_configuration_version ?id
           ?max_concurrency ?max_size ?min_size ?tags ?tags_all
           ~auto_scaling_configuration_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?max_concurrency ?max_size ?min_size
    ?tags ?tags_all ~auto_scaling_configuration_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?max_concurrency ?max_size ?min_size ?tags ?tags_all
      ~auto_scaling_configuration_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

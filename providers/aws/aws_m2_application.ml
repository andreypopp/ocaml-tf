(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type definition = {
  content : string prop option; [@option]
  s3_location : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : definition) -> ()

let yojson_of_definition =
  (function
   | { content = v_content; s3_location = v_s3_location } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_s3_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : definition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_definition

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_m2_application = {
  description : string prop option; [@option]
  engine_type : string prop;
  kms_key_id : string prop option; [@option]
  name : string prop;
  role_arn : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  definition : definition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_m2_application) -> ()

let yojson_of_aws_m2_application =
  (function
   | {
       description = v_description;
       engine_type = v_engine_type;
       kms_key_id = v_kms_key_id;
       name = v_name;
       role_arn = v_role_arn;
       tags = v_tags;
       definition = v_definition;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_definition then bnds
         else
           let arg =
             (yojson_of_list yojson_of_definition) v_definition
           in
           let bnd = "definition", arg in
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
         match v_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_arn", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_engine_type in
         ("engine_type", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_m2_application -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_m2_application

[@@@deriving.end]

let definition ?content ?s3_location () : definition =
  { content; s3_location }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_m2_application ?description ?kms_key_id ?role_arn ?tags
    ?(definition = []) ?timeouts ~engine_type ~name () :
    aws_m2_application =
  {
    description;
    engine_type;
    kms_key_id;
    name;
    role_arn;
    tags;
    definition;
    timeouts;
  }

type t = {
  tf_name : string;
  application_id : string prop;
  arn : string prop;
  current_version : float prop;
  description : string prop;
  engine_type : string prop;
  id : string prop;
  kms_key_id : string prop;
  name : string prop;
  role_arn : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?description ?kms_key_id ?role_arn ?tags ?(definition = [])
    ?timeouts ~engine_type ~name __id =
  let __type = "aws_m2_application" in
  let __attrs =
    ({
       tf_name = __id;
       application_id = Prop.computed __type __id "application_id";
       arn = Prop.computed __type __id "arn";
       current_version = Prop.computed __type __id "current_version";
       description = Prop.computed __type __id "description";
       engine_type = Prop.computed __type __id "engine_type";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       name = Prop.computed __type __id "name";
       role_arn = Prop.computed __type __id "role_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_m2_application
        (aws_m2_application ?description ?kms_key_id ?role_arn ?tags
           ~definition ?timeouts ~engine_type ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?kms_key_id ?role_arn ?tags
    ?(definition = []) ?timeouts ~engine_type ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?kms_key_id ?role_arn ?tags ~definition
      ?timeouts ~engine_type ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

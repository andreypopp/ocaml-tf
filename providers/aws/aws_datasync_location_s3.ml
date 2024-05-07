(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type s3_config = { bucket_access_role_arn : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : s3_config) -> ()

let yojson_of_s3_config =
  (function
   | { bucket_access_role_arn = v_bucket_access_role_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_bucket_access_role_arn
         in
         ("bucket_access_role_arn", arg) :: bnds
       in
       `Assoc bnds
    : s3_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_s3_config

[@@@deriving.end]

type aws_datasync_location_s3 = {
  agent_arns : string prop list option; [@option]
  id : string prop option; [@option]
  s3_bucket_arn : string prop;
  s3_storage_class : string prop option; [@option]
  subdirectory : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  s3_config : s3_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_datasync_location_s3) -> ()

let yojson_of_aws_datasync_location_s3 =
  (function
   | {
       agent_arns = v_agent_arns;
       id = v_id;
       s3_bucket_arn = v_s3_bucket_arn;
       s3_storage_class = v_s3_storage_class;
       subdirectory = v_subdirectory;
       tags = v_tags;
       tags_all = v_tags_all;
       s3_config = v_s3_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_s3_config v_s3_config in
         ("s3_config", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_subdirectory in
         ("subdirectory", arg) :: bnds
       in
       let bnds =
         match v_s3_storage_class with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_storage_class", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_bucket_arn in
         ("s3_bucket_arn", arg) :: bnds
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
         match v_agent_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "agent_arns", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_datasync_location_s3 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_datasync_location_s3

[@@@deriving.end]

let s3_config ~bucket_access_role_arn () : s3_config =
  { bucket_access_role_arn }

let aws_datasync_location_s3 ?agent_arns ?id ?s3_storage_class ?tags
    ?tags_all ~s3_bucket_arn ~subdirectory ~s3_config () :
    aws_datasync_location_s3 =
  {
    agent_arns;
    id;
    s3_bucket_arn;
    s3_storage_class;
    subdirectory;
    tags;
    tags_all;
    s3_config;
  }

type t = {
  tf_name : string;
  agent_arns : string list prop;
  arn : string prop;
  id : string prop;
  s3_bucket_arn : string prop;
  s3_storage_class : string prop;
  subdirectory : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  uri : string prop;
}

let make ?agent_arns ?id ?s3_storage_class ?tags ?tags_all
    ~s3_bucket_arn ~subdirectory ~s3_config __id =
  let __type = "aws_datasync_location_s3" in
  let __attrs =
    ({
       tf_name = __id;
       agent_arns = Prop.computed __type __id "agent_arns";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       s3_bucket_arn = Prop.computed __type __id "s3_bucket_arn";
       s3_storage_class =
         Prop.computed __type __id "s3_storage_class";
       subdirectory = Prop.computed __type __id "subdirectory";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       uri = Prop.computed __type __id "uri";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_datasync_location_s3
        (aws_datasync_location_s3 ?agent_arns ?id ?s3_storage_class
           ?tags ?tags_all ~s3_bucket_arn ~subdirectory ~s3_config ());
    attrs = __attrs;
  }

let register ?tf_module ?agent_arns ?id ?s3_storage_class ?tags
    ?tags_all ~s3_bucket_arn ~subdirectory ~s3_config __id =
  let (r : _ Tf_core.resource) =
    make ?agent_arns ?id ?s3_storage_class ?tags ?tags_all
      ~s3_bucket_arn ~subdirectory ~s3_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

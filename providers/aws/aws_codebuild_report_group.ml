(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type export_config__s3_destination = {
  bucket : string prop;
  encryption_disabled : bool prop option; [@option]
  encryption_key : string prop;
  packaging : string prop option; [@option]
  path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : export_config__s3_destination) -> ()

let yojson_of_export_config__s3_destination =
  (function
   | {
       bucket = v_bucket;
       encryption_disabled = v_encryption_disabled;
       encryption_key = v_encryption_key;
       packaging = v_packaging;
       path = v_path;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_packaging with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "packaging", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_encryption_key
         in
         ("encryption_key", arg) :: bnds
       in
       let bnds =
         match v_encryption_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "encryption_disabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : export_config__s3_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_export_config__s3_destination

[@@@deriving.end]

type export_config = {
  type_ : string prop; [@key "type"]
  s3_destination : export_config__s3_destination list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : export_config) -> ()

let yojson_of_export_config =
  (function
   | { type_ = v_type_; s3_destination = v_s3_destination } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_s3_destination then bnds
         else
           let arg =
             (yojson_of_list yojson_of_export_config__s3_destination)
               v_s3_destination
           in
           let bnd = "s3_destination", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : export_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_export_config

[@@@deriving.end]

type aws_codebuild_report_group = {
  delete_reports : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  type_ : string prop; [@key "type"]
  export_config : export_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_codebuild_report_group) -> ()

let yojson_of_aws_codebuild_report_group =
  (function
   | {
       delete_reports = v_delete_reports;
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       type_ = v_type_;
       export_config = v_export_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_export_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_export_config) v_export_config
           in
           let bnd = "export_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_delete_reports with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_reports", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_codebuild_report_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_codebuild_report_group

[@@@deriving.end]

let export_config__s3_destination ?encryption_disabled ?packaging
    ?path ~bucket ~encryption_key () : export_config__s3_destination
    =
  { bucket; encryption_disabled; encryption_key; packaging; path }

let export_config ?(s3_destination = []) ~type_ () : export_config =
  { type_; s3_destination }

let aws_codebuild_report_group ?delete_reports ?id ?tags ?tags_all
    ~name ~type_ ~export_config () : aws_codebuild_report_group =
  { delete_reports; id; name; tags; tags_all; type_; export_config }

type t = {
  tf_name : string;
  arn : string prop;
  created : string prop;
  delete_reports : bool prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let make ?delete_reports ?id ?tags ?tags_all ~name ~type_
    ~export_config __id =
  let __type = "aws_codebuild_report_group" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       created = Prop.computed __type __id "created";
       delete_reports = Prop.computed __type __id "delete_reports";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codebuild_report_group
        (aws_codebuild_report_group ?delete_reports ?id ?tags
           ?tags_all ~name ~type_ ~export_config ());
    attrs = __attrs;
  }

let register ?tf_module ?delete_reports ?id ?tags ?tags_all ~name
    ~type_ ~export_config __id =
  let (r : _ Tf_core.resource) =
    make ?delete_reports ?id ?tags ?tags_all ~name ~type_
      ~export_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

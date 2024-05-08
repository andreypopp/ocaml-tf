(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type report_delivery_channel = {
  formats : string prop list option; [@option]
  s3_bucket_name : string prop;
  s3_key_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : report_delivery_channel) -> ()

let yojson_of_report_delivery_channel =
  (function
   | {
       formats = v_formats;
       s3_bucket_name = v_s3_bucket_name;
       s3_key_prefix = v_s3_key_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_s3_key_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_key_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_s3_bucket_name
         in
         ("s3_bucket_name", arg) :: bnds
       in
       let bnds =
         match v_formats with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "formats", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : report_delivery_channel -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_report_delivery_channel

[@@@deriving.end]

type report_setting = {
  accounts : string prop list option; [@option]
  framework_arns : string prop list option; [@option]
  number_of_frameworks : float prop option; [@option]
  organization_units : string prop list option; [@option]
  regions : string prop list option; [@option]
  report_template : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : report_setting) -> ()

let yojson_of_report_setting =
  (function
   | {
       accounts = v_accounts;
       framework_arns = v_framework_arns;
       number_of_frameworks = v_number_of_frameworks;
       organization_units = v_organization_units;
       regions = v_regions;
       report_template = v_report_template;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_report_template
         in
         ("report_template", arg) :: bnds
       in
       let bnds =
         match v_regions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "regions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_organization_units with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "organization_units", arg in
             bnd :: bnds
       in
       let bnds =
         match v_number_of_frameworks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "number_of_frameworks", arg in
             bnd :: bnds
       in
       let bnds =
         match v_framework_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "framework_arns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_accounts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "accounts", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : report_setting -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_report_setting

[@@@deriving.end]

type aws_backup_report_plan = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  report_delivery_channel : report_delivery_channel list;
      [@default []] [@yojson_drop_default ( = )]
  report_setting : report_setting list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_backup_report_plan) -> ()

let yojson_of_aws_backup_report_plan =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       report_delivery_channel = v_report_delivery_channel;
       report_setting = v_report_setting;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_report_setting then bnds
         else
           let arg =
             (yojson_of_list yojson_of_report_setting)
               v_report_setting
           in
           let bnd = "report_setting", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_report_delivery_channel then bnds
         else
           let arg =
             (yojson_of_list yojson_of_report_delivery_channel)
               v_report_delivery_channel
           in
           let bnd = "report_delivery_channel", arg in
           bnd :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_backup_report_plan -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_backup_report_plan

[@@@deriving.end]

let report_delivery_channel ?formats ?s3_key_prefix ~s3_bucket_name
    () : report_delivery_channel =
  { formats; s3_bucket_name; s3_key_prefix }

let report_setting ?accounts ?framework_arns ?number_of_frameworks
    ?organization_units ?regions ~report_template () : report_setting
    =
  {
    accounts;
    framework_arns;
    number_of_frameworks;
    organization_units;
    regions;
    report_template;
  }

let aws_backup_report_plan ?description ?id ?tags ?tags_all ~name
    ~report_delivery_channel ~report_setting () :
    aws_backup_report_plan =
  {
    description;
    id;
    name;
    tags;
    tags_all;
    report_delivery_channel;
    report_setting;
  }

type t = {
  tf_name : string;
  arn : string prop;
  creation_time : string prop;
  deployment_status : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ~name
    ~report_delivery_channel ~report_setting __id =
  let __type = "aws_backup_report_plan" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       creation_time = Prop.computed __type __id "creation_time";
       deployment_status =
         Prop.computed __type __id "deployment_status";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_backup_report_plan
        (aws_backup_report_plan ?description ?id ?tags ?tags_all
           ~name ~report_delivery_channel ~report_setting ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~name
    ~report_delivery_channel ~report_setting __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~name
      ~report_delivery_channel ~report_setting __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

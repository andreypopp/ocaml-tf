(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type report_delivery_channel = {
  formats : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  s3_bucket_name : string prop;
  s3_key_prefix : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_s3_key_prefix in
         ("s3_key_prefix", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_s3_bucket_name
         in
         ("s3_bucket_name", arg) :: bnds
       in
       let bnds =
         if [] = v_formats then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_formats
           in
           let bnd = "formats", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : report_delivery_channel -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_report_delivery_channel

[@@@deriving.end]

type report_setting = {
  accounts : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  framework_arns : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  number_of_frameworks : float prop;
  organization_units : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  regions : string prop list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_regions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_regions
           in
           let bnd = "regions", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_organization_units then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_organization_units
           in
           let bnd = "organization_units", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_number_of_frameworks
         in
         ("number_of_frameworks", arg) :: bnds
       in
       let bnds =
         if [] = v_framework_arns then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_framework_arns
           in
           let bnd = "framework_arns", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_accounts then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_accounts
           in
           let bnd = "accounts", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : report_setting -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_report_setting

[@@@deriving.end]

type aws_backup_report_plan = {
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_backup_report_plan) -> ()

let yojson_of_aws_backup_report_plan =
  (function
   | { id = v_id; name = v_name; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : aws_backup_report_plan -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_backup_report_plan

[@@@deriving.end]

let aws_backup_report_plan ?id ?tags ~name () :
    aws_backup_report_plan =
  { id; name; tags }

type t = {
  tf_name : string;
  arn : string prop;
  creation_time : string prop;
  deployment_status : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  report_delivery_channel : report_delivery_channel list prop;
  report_setting : report_setting list prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ~name __id =
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
       report_delivery_channel =
         Prop.computed __type __id "report_delivery_channel";
       report_setting = Prop.computed __type __id "report_setting";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_backup_report_plan
        (aws_backup_report_plan ?id ?tags ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type report_delivery_channel = {
  formats : string prop list option; [@option]  (** formats *)
  s3_bucket_name : string prop;  (** s3_bucket_name *)
  s3_key_prefix : string prop option; [@option]  (** s3_key_prefix *)
}
[@@deriving yojson_of]
(** report_delivery_channel *)

type report_setting = {
  accounts : string prop list option; [@option]  (** accounts *)
  framework_arns : string prop list option; [@option]
      (** framework_arns *)
  number_of_frameworks : float prop option; [@option]
      (** number_of_frameworks *)
  organization_units : string prop list option; [@option]
      (** organization_units *)
  regions : string prop list option; [@option]  (** regions *)
  report_template : string prop;  (** report_template *)
}
[@@deriving yojson_of]
(** report_setting *)

type aws_backup_report_plan = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  report_delivery_channel : report_delivery_channel list;
  report_setting : report_setting list;
}
[@@deriving yojson_of]
(** aws_backup_report_plan *)

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

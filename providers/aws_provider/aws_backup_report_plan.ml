(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_backup_report_plan__report_delivery_channel = {
  formats : string prop list option; [@option]  (** formats *)
  s3_bucket_name : string prop;  (** s3_bucket_name *)
  s3_key_prefix : string prop option; [@option]  (** s3_key_prefix *)
}
[@@deriving yojson_of]
(** aws_backup_report_plan__report_delivery_channel *)

type aws_backup_report_plan__report_setting = {
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
(** aws_backup_report_plan__report_setting *)

type aws_backup_report_plan = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  report_delivery_channel :
    aws_backup_report_plan__report_delivery_channel list;
  report_setting : aws_backup_report_plan__report_setting list;
}
[@@deriving yojson_of]
(** aws_backup_report_plan *)

let aws_backup_report_plan ?description ?id ?tags ?tags_all ~name
    ~report_delivery_channel ~report_setting __resource_id =
  let __resource_type = "aws_backup_report_plan" in
  let __resource =
    {
      description;
      id;
      name;
      tags;
      tags_all;
      report_delivery_channel;
      report_setting;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_backup_report_plan __resource);
  ()

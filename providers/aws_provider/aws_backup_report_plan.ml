(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_backup_report_plan__report_delivery_channel = {
  formats : string list option; [@option]  (** formats *)
  s3_bucket_name : string;  (** s3_bucket_name *)
  s3_key_prefix : string option; [@option]  (** s3_key_prefix *)
}
[@@deriving yojson_of]
(** aws_backup_report_plan__report_delivery_channel *)

type aws_backup_report_plan__report_setting = {
  accounts : string list option; [@option]  (** accounts *)
  framework_arns : string list option; [@option]
      (** framework_arns *)
  number_of_frameworks : float option; [@option]
      (** number_of_frameworks *)
  organization_units : string list option; [@option]
      (** organization_units *)
  regions : string list option; [@option]  (** regions *)
  report_template : string;  (** report_template *)
}
[@@deriving yojson_of]
(** aws_backup_report_plan__report_setting *)

type aws_backup_report_plan = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  report_delivery_channel :
    aws_backup_report_plan__report_delivery_channel list;
  report_setting : aws_backup_report_plan__report_setting list;
}
[@@deriving yojson_of]
(** aws_backup_report_plan *)

let aws_backup_report_plan ?description ?tags ~name
    ~report_delivery_channel ~report_setting __resource_id =
  let __resource_type = "aws_backup_report_plan" in
  let __resource =
    {
      description;
      name;
      tags;
      report_delivery_channel;
      report_setting;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_backup_report_plan __resource);
  ()

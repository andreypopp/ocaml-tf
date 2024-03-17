(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codebuild_report_group__export_config__s3_destination = {
  bucket : string;  (** bucket *)
  encryption_disabled : bool option; [@option]
      (** encryption_disabled *)
  encryption_key : string;  (** encryption_key *)
  packaging : string option; [@option]  (** packaging *)
  path : string option; [@option]  (** path *)
}
[@@deriving yojson_of]
(** aws_codebuild_report_group__export_config__s3_destination *)

type aws_codebuild_report_group__export_config = {
  type_ : string; [@key "type"]  (** type *)
  s3_destination :
    aws_codebuild_report_group__export_config__s3_destination list;
}
[@@deriving yojson_of]
(** aws_codebuild_report_group__export_config *)

type aws_codebuild_report_group = {
  delete_reports : bool option; [@option]  (** delete_reports *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string; [@key "type"]  (** type *)
  export_config : aws_codebuild_report_group__export_config list;
}
[@@deriving yojson_of]
(** aws_codebuild_report_group *)

let aws_codebuild_report_group ?delete_reports ?tags ~name ~type_
    ~export_config __resource_id =
  let __resource_type = "aws_codebuild_report_group" in
  let __resource =
    { delete_reports; name; tags; type_; export_config }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codebuild_report_group __resource);
  ()

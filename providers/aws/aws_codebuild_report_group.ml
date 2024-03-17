(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codebuild_report_group__export_config__s3_destination = {
  bucket : string prop;  (** bucket *)
  encryption_disabled : bool prop option; [@option]
      (** encryption_disabled *)
  encryption_key : string prop;  (** encryption_key *)
  packaging : string prop option; [@option]  (** packaging *)
  path : string prop option; [@option]  (** path *)
}
[@@deriving yojson_of]
(** aws_codebuild_report_group__export_config__s3_destination *)

type aws_codebuild_report_group__export_config = {
  type_ : string prop; [@key "type"]  (** type *)
  s3_destination :
    aws_codebuild_report_group__export_config__s3_destination list;
}
[@@deriving yojson_of]
(** aws_codebuild_report_group__export_config *)

type aws_codebuild_report_group = {
  delete_reports : bool prop option; [@option]  (** delete_reports *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop; [@key "type"]  (** type *)
  export_config : aws_codebuild_report_group__export_config list;
}
[@@deriving yojson_of]
(** aws_codebuild_report_group *)

type t = {
  arn : string prop;
  created : string prop;
  delete_reports : bool prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let aws_codebuild_report_group ?delete_reports ?id ?tags ?tags_all
    ~name ~type_ ~export_config __resource_id =
  let __resource_type = "aws_codebuild_report_group" in
  let __resource =
    ({
       delete_reports;
       id;
       name;
       tags;
       tags_all;
       type_;
       export_config;
     }
      : aws_codebuild_report_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codebuild_report_group __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       created =
         Prop.computed __resource_type __resource_id "created";
       delete_reports =
         Prop.computed __resource_type __resource_id "delete_reports";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes

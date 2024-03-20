(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type export_config__s3_destination = {
  bucket : string prop;  (** bucket *)
  encryption_disabled : bool prop option; [@option]
      (** encryption_disabled *)
  encryption_key : string prop;  (** encryption_key *)
  packaging : string prop option; [@option]  (** packaging *)
  path : string prop option; [@option]  (** path *)
}
[@@deriving yojson_of]
(** export_config__s3_destination *)

type export_config = {
  type_ : string prop; [@key "type"]  (** type *)
  s3_destination : export_config__s3_destination list;
}
[@@deriving yojson_of]
(** export_config *)

type aws_codebuild_report_group = {
  delete_reports : bool prop option; [@option]  (** delete_reports *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop; [@key "type"]  (** type *)
  export_config : export_config list;
}
[@@deriving yojson_of]
(** aws_codebuild_report_group *)

let export_config__s3_destination ?encryption_disabled ?packaging
    ?path ~bucket ~encryption_key () : export_config__s3_destination
    =
  { bucket; encryption_disabled; encryption_key; packaging; path }

let export_config ~type_ ~s3_destination () : export_config =
  { type_; s3_destination }

let aws_codebuild_report_group ?delete_reports ?id ?tags ?tags_all
    ~name ~type_ ~export_config () : aws_codebuild_report_group =
  { delete_reports; id; name; tags; tags_all; type_; export_config }

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

let make ?delete_reports ?id ?tags ?tags_all ~name ~type_
    ~export_config __id =
  let __type = "aws_codebuild_report_group" in
  let __attrs =
    ({
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

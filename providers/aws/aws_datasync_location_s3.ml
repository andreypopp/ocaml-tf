(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type s3_config = {
  bucket_access_role_arn : string prop;  (** bucket_access_role_arn *)
}
[@@deriving yojson_of]
(** s3_config *)

type aws_datasync_location_s3 = {
  agent_arns : string prop list option; [@option]  (** agent_arns *)
  id : string prop option; [@option]  (** id *)
  s3_bucket_arn : string prop;  (** s3_bucket_arn *)
  s3_storage_class : string prop option; [@option]
      (** s3_storage_class *)
  subdirectory : string prop;  (** subdirectory *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  s3_config : s3_config list;
}
[@@deriving yojson_of]
(** aws_datasync_location_s3 *)

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

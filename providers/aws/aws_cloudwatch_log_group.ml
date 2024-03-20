(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudwatch_log_group = {
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  log_group_class : string prop option; [@option]
      (** log_group_class *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  retention_in_days : float prop option; [@option]
      (** retention_in_days *)
  skip_destroy : bool prop option; [@option]  (** skip_destroy *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_log_group *)

let aws_cloudwatch_log_group ?id ?kms_key_id ?log_group_class ?name
    ?name_prefix ?retention_in_days ?skip_destroy ?tags ?tags_all ()
    : aws_cloudwatch_log_group =
  {
    id;
    kms_key_id;
    log_group_class;
    name;
    name_prefix;
    retention_in_days;
    skip_destroy;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  id : string prop;
  kms_key_id : string prop;
  log_group_class : string prop;
  name : string prop;
  name_prefix : string prop;
  retention_in_days : float prop;
  skip_destroy : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?kms_key_id ?log_group_class ?name ?name_prefix
    ?retention_in_days ?skip_destroy ?tags ?tags_all __id =
  let __type = "aws_cloudwatch_log_group" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       log_group_class = Prop.computed __type __id "log_group_class";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       retention_in_days =
         Prop.computed __type __id "retention_in_days";
       skip_destroy = Prop.computed __type __id "skip_destroy";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_log_group
        (aws_cloudwatch_log_group ?id ?kms_key_id ?log_group_class
           ?name ?name_prefix ?retention_in_days ?skip_destroy ?tags
           ?tags_all ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?kms_key_id ?log_group_class ?name
    ?name_prefix ?retention_in_days ?skip_destroy ?tags ?tags_all
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?kms_key_id ?log_group_class ?name ?name_prefix
      ?retention_in_days ?skip_destroy ?tags ?tags_all __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

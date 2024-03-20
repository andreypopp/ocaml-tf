(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type logging_configuration = {
  log_group_arn : string prop;  (** log_group_arn *)
}
[@@deriving yojson_of]
(** logging_configuration *)

type aws_prometheus_workspace = {
  alias : string prop option; [@option]  (** alias *)
  id : string prop option; [@option]  (** id *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  logging_configuration : logging_configuration list;
}
[@@deriving yojson_of]
(** aws_prometheus_workspace *)

let logging_configuration ~log_group_arn () : logging_configuration =
  { log_group_arn }

let aws_prometheus_workspace ?alias ?id ?kms_key_arn ?tags ?tags_all
    ~logging_configuration () : aws_prometheus_workspace =
  { alias; id; kms_key_arn; tags; tags_all; logging_configuration }

type t = {
  alias : string prop;
  arn : string prop;
  id : string prop;
  kms_key_arn : string prop;
  prometheus_endpoint : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?alias ?id ?kms_key_arn ?tags ?tags_all
    ~logging_configuration __id =
  let __type = "aws_prometheus_workspace" in
  let __attrs =
    ({
       alias = Prop.computed __type __id "alias";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       kms_key_arn = Prop.computed __type __id "kms_key_arn";
       prometheus_endpoint =
         Prop.computed __type __id "prometheus_endpoint";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_prometheus_workspace
        (aws_prometheus_workspace ?alias ?id ?kms_key_arn ?tags
           ?tags_all ~logging_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?alias ?id ?kms_key_arn ?tags ?tags_all
    ~logging_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?alias ?id ?kms_key_arn ?tags ?tags_all
      ~logging_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

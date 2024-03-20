(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_apprunner_auto_scaling_configuration_version = {
  auto_scaling_configuration_name : string prop;
      (** auto_scaling_configuration_name *)
  id : string prop option; [@option]  (** id *)
  max_concurrency : float prop option; [@option]
      (** max_concurrency *)
  max_size : float prop option; [@option]  (** max_size *)
  min_size : float prop option; [@option]  (** min_size *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_apprunner_auto_scaling_configuration_version *)

let aws_apprunner_auto_scaling_configuration_version ?id
    ?max_concurrency ?max_size ?min_size ?tags ?tags_all
    ~auto_scaling_configuration_name () :
    aws_apprunner_auto_scaling_configuration_version =
  {
    auto_scaling_configuration_name;
    id;
    max_concurrency;
    max_size;
    min_size;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  auto_scaling_configuration_name : string prop;
  auto_scaling_configuration_revision : float prop;
  has_associated_service : bool prop;
  id : string prop;
  is_default : bool prop;
  latest : bool prop;
  max_concurrency : float prop;
  max_size : float prop;
  min_size : float prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?max_concurrency ?max_size ?min_size ?tags ?tags_all
    ~auto_scaling_configuration_name __id =
  let __type = "aws_apprunner_auto_scaling_configuration_version" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       auto_scaling_configuration_name =
         Prop.computed __type __id "auto_scaling_configuration_name";
       auto_scaling_configuration_revision =
         Prop.computed __type __id
           "auto_scaling_configuration_revision";
       has_associated_service =
         Prop.computed __type __id "has_associated_service";
       id = Prop.computed __type __id "id";
       is_default = Prop.computed __type __id "is_default";
       latest = Prop.computed __type __id "latest";
       max_concurrency = Prop.computed __type __id "max_concurrency";
       max_size = Prop.computed __type __id "max_size";
       min_size = Prop.computed __type __id "min_size";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apprunner_auto_scaling_configuration_version
        (aws_apprunner_auto_scaling_configuration_version ?id
           ?max_concurrency ?max_size ?min_size ?tags ?tags_all
           ~auto_scaling_configuration_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?max_concurrency ?max_size ?min_size
    ?tags ?tags_all ~auto_scaling_configuration_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?max_concurrency ?max_size ?min_size ?tags ?tags_all
      ~auto_scaling_configuration_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

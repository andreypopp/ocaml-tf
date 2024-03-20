(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type trace_configuration = {
  vendor : string prop option; [@option]  (** vendor *)
}
[@@deriving yojson_of]
(** trace_configuration *)

type aws_apprunner_observability_configuration = {
  id : string prop option; [@option]  (** id *)
  observability_configuration_name : string prop;
      (** observability_configuration_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  trace_configuration : trace_configuration list;
}
[@@deriving yojson_of]
(** aws_apprunner_observability_configuration *)

let trace_configuration ?vendor () : trace_configuration = { vendor }

let aws_apprunner_observability_configuration ?id ?tags ?tags_all
    ~observability_configuration_name ~trace_configuration () :
    aws_apprunner_observability_configuration =
  {
    id;
    observability_configuration_name;
    tags;
    tags_all;
    trace_configuration;
  }

type t = {
  arn : string prop;
  id : string prop;
  latest : bool prop;
  observability_configuration_name : string prop;
  observability_configuration_revision : float prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~observability_configuration_name
    ~trace_configuration __id =
  let __type = "aws_apprunner_observability_configuration" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       latest = Prop.computed __type __id "latest";
       observability_configuration_name =
         Prop.computed __type __id "observability_configuration_name";
       observability_configuration_revision =
         Prop.computed __type __id
           "observability_configuration_revision";
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
      yojson_of_aws_apprunner_observability_configuration
        (aws_apprunner_observability_configuration ?id ?tags
           ?tags_all ~observability_configuration_name
           ~trace_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all
    ~observability_configuration_name ~trace_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~observability_configuration_name
      ~trace_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

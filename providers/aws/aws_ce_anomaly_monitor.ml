(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ce_anomaly_monitor = {
  id : string prop option; [@option]  (** id *)
  monitor_dimension : string prop option; [@option]
      (** monitor_dimension *)
  monitor_specification : string prop option; [@option]
      (** monitor_specification *)
  monitor_type : string prop;  (** monitor_type *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_ce_anomaly_monitor *)

let aws_ce_anomaly_monitor ?id ?monitor_dimension
    ?monitor_specification ?tags ?tags_all ~monitor_type ~name () :
    aws_ce_anomaly_monitor =
  {
    id;
    monitor_dimension;
    monitor_specification;
    monitor_type;
    name;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  id : string prop;
  monitor_dimension : string prop;
  monitor_specification : string prop;
  monitor_type : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?monitor_dimension ?monitor_specification ?tags
    ?tags_all ~monitor_type ~name __id =
  let __type = "aws_ce_anomaly_monitor" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       monitor_dimension =
         Prop.computed __type __id "monitor_dimension";
       monitor_specification =
         Prop.computed __type __id "monitor_specification";
       monitor_type = Prop.computed __type __id "monitor_type";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ce_anomaly_monitor
        (aws_ce_anomaly_monitor ?id ?monitor_dimension
           ?monitor_specification ?tags ?tags_all ~monitor_type ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?monitor_dimension ?monitor_specification
    ?tags ?tags_all ~monitor_type ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?monitor_dimension ?monitor_specification ?tags
      ?tags_all ~monitor_type ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

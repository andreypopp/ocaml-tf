(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?monitor_dimension ?monitor_specification
    ?tags ?tags_all ~monitor_type ~name __resource_id =
  let __resource_type = "aws_ce_anomaly_monitor" in
  let __resource =
    aws_ce_anomaly_monitor ?id ?monitor_dimension
      ?monitor_specification ?tags ?tags_all ~monitor_type ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ce_anomaly_monitor __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       monitor_dimension =
         Prop.computed __resource_type __resource_id
           "monitor_dimension";
       monitor_specification =
         Prop.computed __resource_type __resource_id
           "monitor_specification";
       monitor_type =
         Prop.computed __resource_type __resource_id "monitor_type";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes

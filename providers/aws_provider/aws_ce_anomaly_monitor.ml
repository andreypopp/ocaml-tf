(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ce_anomaly_monitor = {
  id : string option; [@option]  (** id *)
  monitor_dimension : string option; [@option]
      (** monitor_dimension *)
  monitor_specification : string option; [@option]
      (** monitor_specification *)
  monitor_type : string;  (** monitor_type *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_ce_anomaly_monitor *)

let aws_ce_anomaly_monitor ?id ?monitor_dimension
    ?monitor_specification ?tags ?tags_all ~monitor_type ~name
    __resource_id =
  let __resource_type = "aws_ce_anomaly_monitor" in
  let __resource =
    {
      id;
      monitor_dimension;
      monitor_specification;
      monitor_type;
      name;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ce_anomaly_monitor __resource);
  ()

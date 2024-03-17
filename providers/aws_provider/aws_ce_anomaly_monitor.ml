(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ce_anomaly_monitor = {
  monitor_dimension : string option; [@option]
      (** monitor_dimension *)
  monitor_specification : string option; [@option]
      (** monitor_specification *)
  monitor_type : string;  (** monitor_type *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_ce_anomaly_monitor *)

let aws_ce_anomaly_monitor ?monitor_dimension ?monitor_specification
    ?tags ~monitor_type ~name __resource_id =
  let __resource_type = "aws_ce_anomaly_monitor" in
  let __resource =
    {
      monitor_dimension;
      monitor_specification;
      monitor_type;
      name;
      tags;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ce_anomaly_monitor __resource);
  ()

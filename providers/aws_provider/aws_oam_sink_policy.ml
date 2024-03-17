(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_oam_sink_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_oam_sink_policy__timeouts *)

type aws_oam_sink_policy = {
  policy : string;  (** policy *)
  sink_identifier : string;  (** sink_identifier *)
  timeouts : aws_oam_sink_policy__timeouts option;
}
[@@deriving yojson_of]
(** aws_oam_sink_policy *)

let aws_oam_sink_policy ?timeouts ~policy ~sink_identifier
    __resource_id =
  let __resource_type = "aws_oam_sink_policy" in
  let __resource = { policy; sink_identifier; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_oam_sink_policy __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_oam_sink_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_oam_sink_policy__timeouts *)

type aws_oam_sink_policy = {
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
  sink_identifier : string prop;  (** sink_identifier *)
  timeouts : aws_oam_sink_policy__timeouts option;
}
[@@deriving yojson_of]
(** aws_oam_sink_policy *)

let aws_oam_sink_policy ?id ?timeouts ~policy ~sink_identifier
    __resource_id =
  let __resource_type = "aws_oam_sink_policy" in
  let __resource = { id; policy; sink_identifier; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_oam_sink_policy __resource);
  ()

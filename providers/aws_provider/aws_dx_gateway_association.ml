(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_dx_gateway_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_dx_gateway_association__timeouts *)

type aws_dx_gateway_association = {
  dx_gateway_id : string;  (** dx_gateway_id *)
  proposal_id : string option; [@option]  (** proposal_id *)
  vpn_gateway_id : string option; [@option]  (** vpn_gateway_id *)
  timeouts : aws_dx_gateway_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_dx_gateway_association *)

let aws_dx_gateway_association ?proposal_id ?vpn_gateway_id ?timeouts
    ~dx_gateway_id __resource_id =
  let __resource_type = "aws_dx_gateway_association" in
  let __resource =
    { dx_gateway_id; proposal_id; vpn_gateway_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_gateway_association __resource);
  ()

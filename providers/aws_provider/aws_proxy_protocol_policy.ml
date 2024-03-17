(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_proxy_protocol_policy = {
  instance_ports : string list;  (** instance_ports *)
  load_balancer : string;  (** load_balancer *)
}
[@@deriving yojson_of]
(** aws_proxy_protocol_policy *)

let aws_proxy_protocol_policy ~instance_ports ~load_balancer
    __resource_id =
  let __resource_type = "aws_proxy_protocol_policy" in
  let __resource = { instance_ports; load_balancer } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_proxy_protocol_policy __resource);
  ()

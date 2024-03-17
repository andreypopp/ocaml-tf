(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_proxy_protocol_policy = {
  id : string prop option; [@option]  (** id *)
  instance_ports : string prop list;  (** instance_ports *)
  load_balancer : string prop;  (** load_balancer *)
}
[@@deriving yojson_of]
(** aws_proxy_protocol_policy *)

let aws_proxy_protocol_policy ?id ~instance_ports ~load_balancer
    __resource_id =
  let __resource_type = "aws_proxy_protocol_policy" in
  let __resource = { id; instance_ports; load_balancer } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_proxy_protocol_policy __resource);
  ()

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

let aws_proxy_protocol_policy ?id ~instance_ports ~load_balancer () :
    aws_proxy_protocol_policy =
  { id; instance_ports; load_balancer }

type t = {
  id : string prop;
  instance_ports : string list prop;
  load_balancer : string prop;
}

let register ?tf_module ?id ~instance_ports ~load_balancer
    __resource_id =
  let __resource_type = "aws_proxy_protocol_policy" in
  let __resource =
    aws_proxy_protocol_policy ?id ~instance_ports ~load_balancer ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_proxy_protocol_policy __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       instance_ports =
         Prop.computed __resource_type __resource_id "instance_ports";
       load_balancer =
         Prop.computed __resource_type __resource_id "load_balancer";
     }
      : t)
  in
  __resource_attributes

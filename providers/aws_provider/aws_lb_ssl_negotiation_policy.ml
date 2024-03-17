(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lb_ssl_negotiation_policy__attribute = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lb_ssl_negotiation_policy__attribute *)

type aws_lb_ssl_negotiation_policy = {
  id : string prop option; [@option]  (** id *)
  lb_port : float prop;  (** lb_port *)
  load_balancer : string prop;  (** load_balancer *)
  name : string prop;  (** name *)
  triggers : (string * string prop) list option; [@option]
      (** triggers *)
  attribute : aws_lb_ssl_negotiation_policy__attribute list;
}
[@@deriving yojson_of]
(** aws_lb_ssl_negotiation_policy *)

let aws_lb_ssl_negotiation_policy ?id ?triggers ~lb_port
    ~load_balancer ~name ~attribute __resource_id =
  let __resource_type = "aws_lb_ssl_negotiation_policy" in
  let __resource =
    { id; lb_port; load_balancer; name; triggers; attribute }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lb_ssl_negotiation_policy __resource);
  ()

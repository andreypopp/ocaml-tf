(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_load_balancer_backend_server_policy = {
  id : string option; [@option]  (** id *)
  instance_port : float;  (** instance_port *)
  load_balancer_name : string;  (** load_balancer_name *)
  policy_names : string list option; [@option]  (** policy_names *)
}
[@@deriving yojson_of]
(** aws_load_balancer_backend_server_policy *)

let aws_load_balancer_backend_server_policy ?id ?policy_names
    ~instance_port ~load_balancer_name __resource_id =
  let __resource_type = "aws_load_balancer_backend_server_policy" in
  let __resource =
    { id; instance_port; load_balancer_name; policy_names }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_load_balancer_backend_server_policy __resource);
  ()

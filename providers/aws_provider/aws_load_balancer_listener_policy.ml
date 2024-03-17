(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_load_balancer_listener_policy = {
  load_balancer_name : string;  (** load_balancer_name *)
  load_balancer_port : float;  (** load_balancer_port *)
  policy_names : string list option; [@option]  (** policy_names *)
  triggers : (string * string) list option; [@option]  (** triggers *)
}
[@@deriving yojson_of]
(** aws_load_balancer_listener_policy *)

let aws_load_balancer_listener_policy ?policy_names ?triggers
    ~load_balancer_name ~load_balancer_port __resource_id =
  let __resource_type = "aws_load_balancer_listener_policy" in
  let __resource =
    {
      load_balancer_name;
      load_balancer_port;
      policy_names;
      triggers;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_load_balancer_listener_policy __resource);
  ()

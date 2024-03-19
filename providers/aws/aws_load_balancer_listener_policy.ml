(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_load_balancer_listener_policy = {
  id : string prop option; [@option]  (** id *)
  load_balancer_name : string prop;  (** load_balancer_name *)
  load_balancer_port : float prop;  (** load_balancer_port *)
  policy_names : string prop list option; [@option]
      (** policy_names *)
  triggers : (string * string prop) list option; [@option]
      (** triggers *)
}
[@@deriving yojson_of]
(** aws_load_balancer_listener_policy *)

let aws_load_balancer_listener_policy ?id ?policy_names ?triggers
    ~load_balancer_name ~load_balancer_port () :
    aws_load_balancer_listener_policy =
  {
    id;
    load_balancer_name;
    load_balancer_port;
    policy_names;
    triggers;
  }

type t = {
  id : string prop;
  load_balancer_name : string prop;
  load_balancer_port : float prop;
  policy_names : string list prop;
  triggers : (string * string) list prop;
}

let register ?tf_module ?id ?policy_names ?triggers
    ~load_balancer_name ~load_balancer_port __resource_id =
  let __resource_type = "aws_load_balancer_listener_policy" in
  let __resource =
    aws_load_balancer_listener_policy ?id ?policy_names ?triggers
      ~load_balancer_name ~load_balancer_port ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_load_balancer_listener_policy __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       load_balancer_name =
         Prop.computed __resource_type __resource_id
           "load_balancer_name";
       load_balancer_port =
         Prop.computed __resource_type __resource_id
           "load_balancer_port";
       policy_names =
         Prop.computed __resource_type __resource_id "policy_names";
       triggers =
         Prop.computed __resource_type __resource_id "triggers";
     }
      : t)
  in
  __resource_attributes

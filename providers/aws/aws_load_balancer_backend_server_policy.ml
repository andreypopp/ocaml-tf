(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_load_balancer_backend_server_policy = {
  id : string prop option; [@option]  (** id *)
  instance_port : float prop;  (** instance_port *)
  load_balancer_name : string prop;  (** load_balancer_name *)
  policy_names : string prop list option; [@option]
      (** policy_names *)
}
[@@deriving yojson_of]
(** aws_load_balancer_backend_server_policy *)

let aws_load_balancer_backend_server_policy ?id ?policy_names
    ~instance_port ~load_balancer_name () :
    aws_load_balancer_backend_server_policy =
  { id; instance_port; load_balancer_name; policy_names }

type t = {
  id : string prop;
  instance_port : float prop;
  load_balancer_name : string prop;
  policy_names : string list prop;
}

let register ?tf_module ?id ?policy_names ~instance_port
    ~load_balancer_name __resource_id =
  let __resource_type = "aws_load_balancer_backend_server_policy" in
  let __resource =
    aws_load_balancer_backend_server_policy ?id ?policy_names
      ~instance_port ~load_balancer_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_load_balancer_backend_server_policy __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       instance_port =
         Prop.computed __resource_type __resource_id "instance_port";
       load_balancer_name =
         Prop.computed __resource_type __resource_id
           "load_balancer_name";
       policy_names =
         Prop.computed __resource_type __resource_id "policy_names";
     }
      : t)
  in
  __resource_attributes

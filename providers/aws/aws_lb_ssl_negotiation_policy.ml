(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type attribute = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** attribute *)

type aws_lb_ssl_negotiation_policy = {
  id : string prop option; [@option]  (** id *)
  lb_port : float prop;  (** lb_port *)
  load_balancer : string prop;  (** load_balancer *)
  name : string prop;  (** name *)
  triggers : (string * string prop) list option; [@option]
      (** triggers *)
  attribute : attribute list;
}
[@@deriving yojson_of]
(** aws_lb_ssl_negotiation_policy *)

let attribute ~name ~value () : attribute = { name; value }

let aws_lb_ssl_negotiation_policy ?id ?triggers ~lb_port
    ~load_balancer ~name ~attribute () :
    aws_lb_ssl_negotiation_policy =
  { id; lb_port; load_balancer; name; triggers; attribute }

type t = {
  id : string prop;
  lb_port : float prop;
  load_balancer : string prop;
  name : string prop;
  triggers : (string * string) list prop;
}

let register ?tf_module ?id ?triggers ~lb_port ~load_balancer ~name
    ~attribute __resource_id =
  let __resource_type = "aws_lb_ssl_negotiation_policy" in
  let __resource =
    aws_lb_ssl_negotiation_policy ?id ?triggers ~lb_port
      ~load_balancer ~name ~attribute ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lb_ssl_negotiation_policy __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       lb_port =
         Prop.computed __resource_type __resource_id "lb_port";
       load_balancer =
         Prop.computed __resource_type __resource_id "load_balancer";
       name = Prop.computed __resource_type __resource_id "name";
       triggers =
         Prop.computed __resource_type __resource_id "triggers";
     }
      : t)
  in
  __resource_attributes

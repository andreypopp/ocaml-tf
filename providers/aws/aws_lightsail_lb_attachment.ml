(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_lb_attachment = {
  id : string prop option; [@option]  (** id *)
  instance_name : string prop;  (** instance_name *)
  lb_name : string prop;  (** lb_name *)
}
[@@deriving yojson_of]
(** aws_lightsail_lb_attachment *)

let aws_lightsail_lb_attachment ?id ~instance_name ~lb_name () :
    aws_lightsail_lb_attachment =
  { id; instance_name; lb_name }

type t = {
  id : string prop;
  instance_name : string prop;
  lb_name : string prop;
}

let register ?tf_module ?id ~instance_name ~lb_name __resource_id =
  let __resource_type = "aws_lightsail_lb_attachment" in
  let __resource =
    aws_lightsail_lb_attachment ?id ~instance_name ~lb_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_lb_attachment __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       instance_name =
         Prop.computed __resource_type __resource_id "instance_name";
       lb_name =
         Prop.computed __resource_type __resource_id "lb_name";
     }
      : t)
  in
  __resource_attributes

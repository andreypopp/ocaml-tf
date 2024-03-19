(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_lb_certificate_attachment = {
  certificate_name : string prop;  (** certificate_name *)
  id : string prop option; [@option]  (** id *)
  lb_name : string prop;  (** lb_name *)
}
[@@deriving yojson_of]
(** aws_lightsail_lb_certificate_attachment *)

let aws_lightsail_lb_certificate_attachment ?id ~certificate_name
    ~lb_name () : aws_lightsail_lb_certificate_attachment =
  { certificate_name; id; lb_name }

type t = {
  certificate_name : string prop;
  id : string prop;
  lb_name : string prop;
}

let register ?tf_module ?id ~certificate_name ~lb_name __resource_id
    =
  let __resource_type = "aws_lightsail_lb_certificate_attachment" in
  let __resource =
    aws_lightsail_lb_certificate_attachment ?id ~certificate_name
      ~lb_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_lb_certificate_attachment __resource);
  let __resource_attributes =
    ({
       certificate_name =
         Prop.computed __resource_type __resource_id
           "certificate_name";
       id = Prop.computed __resource_type __resource_id "id";
       lb_name =
         Prop.computed __resource_type __resource_id "lb_name";
     }
      : t)
  in
  __resource_attributes

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_alb_listener_certificate = {
  certificate_arn : string prop;  (** certificate_arn *)
  id : string prop option; [@option]  (** id *)
  listener_arn : string prop;  (** listener_arn *)
}
[@@deriving yojson_of]
(** aws_alb_listener_certificate *)

let aws_alb_listener_certificate ?id ~certificate_arn ~listener_arn
    () : aws_alb_listener_certificate =
  { certificate_arn; id; listener_arn }

type t = {
  certificate_arn : string prop;
  id : string prop;
  listener_arn : string prop;
}

let register ?tf_module ?id ~certificate_arn ~listener_arn
    __resource_id =
  let __resource_type = "aws_alb_listener_certificate" in
  let __resource =
    aws_alb_listener_certificate ?id ~certificate_arn ~listener_arn
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_alb_listener_certificate __resource);
  let __resource_attributes =
    ({
       certificate_arn =
         Prop.computed __resource_type __resource_id
           "certificate_arn";
       id = Prop.computed __resource_type __resource_id "id";
       listener_arn =
         Prop.computed __resource_type __resource_id "listener_arn";
     }
      : t)
  in
  __resource_attributes

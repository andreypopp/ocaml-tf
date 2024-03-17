(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_lb_https_redirection_policy = {
  enabled : bool prop;  (** enabled *)
  id : string prop option; [@option]  (** id *)
  lb_name : string prop;  (** lb_name *)
}
[@@deriving yojson_of]
(** aws_lightsail_lb_https_redirection_policy *)

type t = {
  enabled : bool prop;
  id : string prop;
  lb_name : string prop;
}

let aws_lightsail_lb_https_redirection_policy ?id ~enabled ~lb_name
    __resource_id =
  let __resource_type =
    "aws_lightsail_lb_https_redirection_policy"
  in
  let __resource =
    ({ enabled; id; lb_name }
      : aws_lightsail_lb_https_redirection_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_lb_https_redirection_policy __resource);
  let __resource_attributes =
    ({
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       lb_name =
         Prop.computed __resource_type __resource_id "lb_name";
     }
      : t)
  in
  __resource_attributes

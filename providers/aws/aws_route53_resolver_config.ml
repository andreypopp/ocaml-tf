(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_resolver_config = {
  autodefined_reverse_flag : string prop;
      (** autodefined_reverse_flag *)
  id : string prop option; [@option]  (** id *)
  resource_id : string prop;  (** resource_id *)
}
[@@deriving yojson_of]
(** aws_route53_resolver_config *)

let aws_route53_resolver_config ?id ~autodefined_reverse_flag
    ~resource_id () : aws_route53_resolver_config =
  { autodefined_reverse_flag; id; resource_id }

type t = {
  autodefined_reverse_flag : string prop;
  id : string prop;
  owner_id : string prop;
  resource_id : string prop;
}

let register ?tf_module ?id ~autodefined_reverse_flag ~resource_id
    __resource_id =
  let __resource_type = "aws_route53_resolver_config" in
  let __resource =
    aws_route53_resolver_config ?id ~autodefined_reverse_flag
      ~resource_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_resolver_config __resource);
  let __resource_attributes =
    ({
       autodefined_reverse_flag =
         Prop.computed __resource_type __resource_id
           "autodefined_reverse_flag";
       id = Prop.computed __resource_type __resource_id "id";
       owner_id =
         Prop.computed __resource_type __resource_id "owner_id";
       resource_id =
         Prop.computed __resource_type __resource_id "resource_id";
     }
      : t)
  in
  __resource_attributes

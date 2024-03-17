(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ce_cost_allocation_tag = {
  id : string prop option; [@option]  (** id *)
  status : string prop;  (** status *)
  tag_key : string prop;  (** tag_key *)
}
[@@deriving yojson_of]
(** aws_ce_cost_allocation_tag *)

type t = {
  id : string prop;
  status : string prop;
  tag_key : string prop;
  type_ : string prop;
}

let aws_ce_cost_allocation_tag ?id ~status ~tag_key __resource_id =
  let __resource_type = "aws_ce_cost_allocation_tag" in
  let __resource =
    ({ id; status; tag_key } : aws_ce_cost_allocation_tag)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ce_cost_allocation_tag __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       status = Prop.computed __resource_type __resource_id "status";
       tag_key =
         Prop.computed __resource_type __resource_id "tag_key";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes

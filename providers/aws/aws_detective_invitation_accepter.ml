(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_detective_invitation_accepter = {
  graph_arn : string prop;  (** graph_arn *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_detective_invitation_accepter *)

let aws_detective_invitation_accepter ?id ~graph_arn () :
    aws_detective_invitation_accepter =
  { graph_arn; id }

type t = { graph_arn : string prop; id : string prop }

let register ?tf_module ?id ~graph_arn __resource_id =
  let __resource_type = "aws_detective_invitation_accepter" in
  let __resource =
    aws_detective_invitation_accepter ?id ~graph_arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_detective_invitation_accepter __resource);
  let __resource_attributes =
    ({
       graph_arn =
         Prop.computed __resource_type __resource_id "graph_arn";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes

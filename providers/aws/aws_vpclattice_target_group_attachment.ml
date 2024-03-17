(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpclattice_target_group_attachment__target = {
  id : string prop;  (** id *)
  port : float prop option; [@option]  (** port *)
}
[@@deriving yojson_of]
(** aws_vpclattice_target_group_attachment__target *)

type aws_vpclattice_target_group_attachment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_vpclattice_target_group_attachment__timeouts *)

type aws_vpclattice_target_group_attachment = {
  id : string prop option; [@option]  (** id *)
  target_group_identifier : string prop;
      (** target_group_identifier *)
  target : aws_vpclattice_target_group_attachment__target list;
  timeouts : aws_vpclattice_target_group_attachment__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpclattice_target_group_attachment *)

type t = { id : string prop; target_group_identifier : string prop }

let aws_vpclattice_target_group_attachment ?id ?timeouts
    ~target_group_identifier ~target __resource_id =
  let __resource_type = "aws_vpclattice_target_group_attachment" in
  let __resource =
    ({ id; target_group_identifier; target; timeouts }
      : aws_vpclattice_target_group_attachment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpclattice_target_group_attachment __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       target_group_identifier =
         Prop.computed __resource_type __resource_id
           "target_group_identifier";
     }
      : t)
  in
  __resource_attributes

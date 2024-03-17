(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpclattice_target_group_attachment__target = {
  id : string;  (** id *)
  port : float option; [@option]  (** port *)
}
[@@deriving yojson_of]
(** aws_vpclattice_target_group_attachment__target *)

type aws_vpclattice_target_group_attachment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_vpclattice_target_group_attachment__timeouts *)

type aws_vpclattice_target_group_attachment = {
  id : string option; [@option]  (** id *)
  target_group_identifier : string;  (** target_group_identifier *)
  target : aws_vpclattice_target_group_attachment__target list;
  timeouts : aws_vpclattice_target_group_attachment__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpclattice_target_group_attachment *)

let aws_vpclattice_target_group_attachment ?id ?timeouts
    ~target_group_identifier ~target __resource_id =
  let __resource_type = "aws_vpclattice_target_group_attachment" in
  let __resource =
    { id; target_group_identifier; target; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpclattice_target_group_attachment __resource);
  ()

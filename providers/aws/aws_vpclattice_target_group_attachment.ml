(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type target = {
  id : string prop;  (** id *)
  port : float prop option; [@option]  (** port *)
}
[@@deriving yojson_of]
(** target *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_vpclattice_target_group_attachment = {
  id : string prop option; [@option]  (** id *)
  target_group_identifier : string prop;
      (** target_group_identifier *)
  target : target list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_vpclattice_target_group_attachment *)

let target ?port ~id () : target = { id; port }
let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_vpclattice_target_group_attachment ?id ?timeouts
    ~target_group_identifier ~target () :
    aws_vpclattice_target_group_attachment =
  { id; target_group_identifier; target; timeouts }

type t = { id : string prop; target_group_identifier : string prop }

let register ?tf_module ?id ?timeouts ~target_group_identifier
    ~target __resource_id =
  let __resource_type = "aws_vpclattice_target_group_attachment" in
  let __resource =
    aws_vpclattice_target_group_attachment ?id ?timeouts
      ~target_group_identifier ~target ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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

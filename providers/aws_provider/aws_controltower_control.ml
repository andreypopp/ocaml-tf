(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_controltower_control__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_controltower_control__timeouts *)

type aws_controltower_control = {
  control_identifier : string;  (** control_identifier *)
  target_identifier : string;  (** target_identifier *)
  timeouts : aws_controltower_control__timeouts option;
}
[@@deriving yojson_of]
(** aws_controltower_control *)

let aws_controltower_control ?timeouts ~control_identifier
    ~target_identifier __resource_id =
  let __resource_type = "aws_controltower_control" in
  let __resource =
    { control_identifier; target_identifier; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_controltower_control __resource);
  ()

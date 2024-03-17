(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ecs_account_setting_default = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_ecs_account_setting_default *)

let aws_ecs_account_setting_default ?id ~name ~value __resource_id =
  let __resource_type = "aws_ecs_account_setting_default" in
  let __resource = { id; name; value } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecs_account_setting_default __resource);
  ()

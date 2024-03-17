(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_fms_admin_account__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_fms_admin_account__timeouts *)

type aws_fms_admin_account = {
  timeouts : aws_fms_admin_account__timeouts option;
}
[@@deriving yojson_of]
(** aws_fms_admin_account *)

let aws_fms_admin_account ?timeouts __resource_id =
  let __resource_type = "aws_fms_admin_account" in
  let __resource = { timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_fms_admin_account __resource);
  ()

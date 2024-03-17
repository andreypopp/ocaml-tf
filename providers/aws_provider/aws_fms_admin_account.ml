(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_fms_admin_account__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_fms_admin_account__timeouts *)

type aws_fms_admin_account = {
  account_id : string prop option; [@option]  (** account_id *)
  id : string prop option; [@option]  (** id *)
  timeouts : aws_fms_admin_account__timeouts option;
}
[@@deriving yojson_of]
(** aws_fms_admin_account *)

type t = { account_id : string prop; id : string prop }

let aws_fms_admin_account ?account_id ?id ?timeouts __resource_id =
  let __resource_type = "aws_fms_admin_account" in
  let __resource =
    ({ account_id; id; timeouts } : aws_fms_admin_account)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_fms_admin_account __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes

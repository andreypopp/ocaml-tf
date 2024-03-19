(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_fms_admin_account = {
  account_id : string prop option; [@option]  (** account_id *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_fms_admin_account *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_fms_admin_account ?account_id ?id ?timeouts () :
    aws_fms_admin_account =
  { account_id; id; timeouts }

type t = { account_id : string prop; id : string prop }

let register ?tf_module ?account_id ?id ?timeouts __resource_id =
  let __resource_type = "aws_fms_admin_account" in
  let __resource =
    aws_fms_admin_account ?account_id ?id ?timeouts ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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

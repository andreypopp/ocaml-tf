(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glacier_vault_lock = {
  complete_lock : bool prop;  (** complete_lock *)
  id : string prop option; [@option]  (** id *)
  ignore_deletion_error : bool prop option; [@option]
      (** ignore_deletion_error *)
  policy : string prop;  (** policy *)
  vault_name : string prop;  (** vault_name *)
}
[@@deriving yojson_of]
(** aws_glacier_vault_lock *)

type t = {
  complete_lock : bool prop;
  id : string prop;
  ignore_deletion_error : bool prop;
  policy : string prop;
  vault_name : string prop;
}

let aws_glacier_vault_lock ?id ?ignore_deletion_error ~complete_lock
    ~policy ~vault_name __resource_id =
  let __resource_type = "aws_glacier_vault_lock" in
  let __resource =
    ({ complete_lock; id; ignore_deletion_error; policy; vault_name }
      : aws_glacier_vault_lock)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glacier_vault_lock __resource);
  let __resource_attributes =
    ({
       complete_lock =
         Prop.computed __resource_type __resource_id "complete_lock";
       id = Prop.computed __resource_type __resource_id "id";
       ignore_deletion_error =
         Prop.computed __resource_type __resource_id
           "ignore_deletion_error";
       policy = Prop.computed __resource_type __resource_id "policy";
       vault_name =
         Prop.computed __resource_type __resource_id "vault_name";
     }
      : t)
  in
  __resource_attributes

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glacier_vault_lock = {
  complete_lock : bool;  (** complete_lock *)
  id : string option; [@option]  (** id *)
  ignore_deletion_error : bool option; [@option]
      (** ignore_deletion_error *)
  policy : string;  (** policy *)
  vault_name : string;  (** vault_name *)
}
[@@deriving yojson_of]
(** aws_glacier_vault_lock *)

let aws_glacier_vault_lock ?id ?ignore_deletion_error ~complete_lock
    ~policy ~vault_name __resource_id =
  let __resource_type = "aws_glacier_vault_lock" in
  let __resource =
    { complete_lock; id; ignore_deletion_error; policy; vault_name }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glacier_vault_lock __resource);
  ()

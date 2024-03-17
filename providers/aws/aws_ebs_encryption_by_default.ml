(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ebs_encryption_by_default = {
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_ebs_encryption_by_default *)

type t = { enabled : bool prop; id : string prop }

let aws_ebs_encryption_by_default ?enabled ?id __resource_id =
  let __resource_type = "aws_ebs_encryption_by_default" in
  let __resource =
    ({ enabled; id } : aws_ebs_encryption_by_default)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ebs_encryption_by_default __resource);
  let __resource_attributes =
    ({
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes

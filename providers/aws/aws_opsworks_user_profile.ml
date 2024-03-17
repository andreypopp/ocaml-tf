(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_opsworks_user_profile = {
  allow_self_management : bool prop option; [@option]
      (** allow_self_management *)
  id : string prop option; [@option]  (** id *)
  ssh_public_key : string prop option; [@option]
      (** ssh_public_key *)
  ssh_username : string prop;  (** ssh_username *)
  user_arn : string prop;  (** user_arn *)
}
[@@deriving yojson_of]
(** aws_opsworks_user_profile *)

type t = {
  allow_self_management : bool prop;
  id : string prop;
  ssh_public_key : string prop;
  ssh_username : string prop;
  user_arn : string prop;
}

let aws_opsworks_user_profile ?allow_self_management ?id
    ?ssh_public_key ~ssh_username ~user_arn __resource_id =
  let __resource_type = "aws_opsworks_user_profile" in
  let __resource =
    ({
       allow_self_management;
       id;
       ssh_public_key;
       ssh_username;
       user_arn;
     }
      : aws_opsworks_user_profile)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opsworks_user_profile __resource);
  let __resource_attributes =
    ({
       allow_self_management =
         Prop.computed __resource_type __resource_id
           "allow_self_management";
       id = Prop.computed __resource_type __resource_id "id";
       ssh_public_key =
         Prop.computed __resource_type __resource_id "ssh_public_key";
       ssh_username =
         Prop.computed __resource_type __resource_id "ssh_username";
       user_arn =
         Prop.computed __resource_type __resource_id "user_arn";
     }
      : t)
  in
  __resource_attributes
